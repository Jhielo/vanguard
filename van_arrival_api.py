import pandas as pd
import joblib
from sklearn.ensemble import RandomForestRegressor
from sklearn.preprocessing import LabelEncoder
from datetime import datetime
from fastapi import FastAPI
from pydantic import BaseModel

# Load and preprocess dataset
df = pd.read_csv("van_times.csv")
df.columns = df.columns.str.strip()

# Convert time strings to minutes since midnight
def time_to_minutes(time_str):
    t = pd.to_datetime(time_str, format='%H:%M', errors='coerce')
    return t.dt.hour * 60 + t.dt.minute

df['departure_time_mins'] = time_to_minutes(df['departure_time'])
df['arrival_time_mins'] = time_to_minutes(df['arrival_time'])

# Drop rows with parsing errors
df = df.dropna(subset=['departure_time_mins', 'arrival_time_mins'])

# Encode categorical features
le_route = LabelEncoder()
le_plate = LabelEncoder()

df['route_encoded'] = le_route.fit_transform(df['route'])
df['plate_encoded'] = le_plate.fit_transform(df['plate_number'])

# Features and target
X = df[['route_encoded', 'plate_encoded', 'departure_time_mins']]
y = df['arrival_time_mins']

# Train model
rf = RandomForestRegressor(n_estimators=100, random_state=42)
rf.fit(X, y)

# Save model and encoders
joblib.dump(rf, "rf_model.pkl")
joblib.dump(le_route, "le_route.pkl")
joblib.dump(le_plate, "le_plate.pkl")

# Define prediction logic
def predict_arrival(route: str, plate_number: str, departure_time: str) -> str:
    # Load trained components
    rf = joblib.load("rf_model.pkl")
    le_route = joblib.load("le_route.pkl")
    le_plate = joblib.load("le_plate.pkl")

    # Encode route and plate number
    try:
        route_encoded = le_route.transform([route])[0]
        plate_encoded = le_plate.transform([plate_number])[0]
    except ValueError:
        return "Unknown route or plate number"

    # Convert time to minutes
    try:
        departure_dt = datetime.strptime(departure_time, "%H:%M")
        departure_mins = departure_dt.hour * 60 + departure_dt.minute
    except ValueError:
        return "Invalid time format, use HH:MM"

    # Predict
    input_vector = [[route_encoded, plate_encoded, departure_mins]]
    predicted_arrival_mins = rf.predict(input_vector)[0]

    # Convert minutes back to HH:MM
    arrival_hour = int(predicted_arrival_mins) // 60
    arrival_minute = int(predicted_arrival_mins) % 60
    return f"{arrival_hour:02d}:{arrival_minute:02d}"

# Set up FastAPI app
app = FastAPI()

class PredictionInput(BaseModel):
    route: str
    plate_number: str
    departure_time: str  # Format: "HH:MM"

@app.post("/predict")
def get_prediction(data: PredictionInput):
    predicted_arrival = predict_arrival(
        data.route,
        data.plate_number,
        data.departure_time
    )
    return {"predicted_arrival_time": predicted_arrival}
