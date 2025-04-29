import '../database.dart';

class VanTripsTable extends SupabaseTable<VanTripsRow> {
  @override
  String get tableName => 'van_trips';

  @override
  VanTripsRow createRow(Map<String, dynamic> data) => VanTripsRow(data);
}

class VanTripsRow extends SupabaseDataRow {
  VanTripsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VanTripsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get tripDate => getField<DateTime>('trip_date')!;
  set tripDate(DateTime value) => setField<DateTime>('trip_date', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get vehiclePlate => getField<String>('vehicle_plate')!;
  set vehiclePlate(String value) => setField<String>('vehicle_plate', value);

  String get route => getField<String>('route')!;
  set route(String value) => setField<String>('route', value);

  PostgresTime? get departureTime => getField<PostgresTime>('departure_time');
  set departureTime(PostgresTime? value) =>
      setField<PostgresTime>('departure_time', value);

  PostgresTime? get arrivalTime => getField<PostgresTime>('arrival_time');
  set arrivalTime(PostgresTime? value) =>
      setField<PostgresTime>('arrival_time', value);

  bool get event => getField<bool>('event')!;
  set event(bool value) => setField<bool>('event', value);

  PostgresTime? get travelTime => getField<PostgresTime>('travel_time');
  set travelTime(PostgresTime? value) =>
      setField<PostgresTime>('travel_time', value);
}
