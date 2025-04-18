import '../database.dart';

class VehicleTrackingTable extends SupabaseTable<VehicleTrackingRow> {
  @override
  String get tableName => 'vehicle_tracking';

  @override
  VehicleTrackingRow createRow(Map<String, dynamic> data) =>
      VehicleTrackingRow(data);
}

class VehicleTrackingRow extends SupabaseDataRow {
  VehicleTrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VehicleTrackingTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get vehiclePlate => getField<String>('vehicle_plate')!;
  set vehiclePlate(String value) => setField<String>('vehicle_plate', value);

  DateTime get departureTime => getField<DateTime>('departure_time')!;
  set departureTime(DateTime value) =>
      setField<DateTime>('departure_time', value);

  DateTime get arrivalTime => getField<DateTime>('arrival_time')!;
  set arrivalTime(DateTime value) => setField<DateTime>('arrival_time', value);

  String get route => getField<String>('route')!;
  set route(String value) => setField<String>('route', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
