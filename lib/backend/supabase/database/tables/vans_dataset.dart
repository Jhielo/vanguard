import '../database.dart';

class VansDatasetTable extends SupabaseTable<VansDatasetRow> {
  @override
  String get tableName => 'vans_dataset';

  @override
  VansDatasetRow createRow(Map<String, dynamic> data) => VansDatasetRow(data);
}

class VansDatasetRow extends SupabaseDataRow {
  VansDatasetRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VansDatasetTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get dateTrip => getField<String>('dateTrip');
  set dateTrip(String? value) => setField<String>('dateTrip', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get plateNum => getField<String>('plateNum');
  set plateNum(String? value) => setField<String>('plateNum', value);

  String? get route => getField<String>('route');
  set route(String? value) => setField<String>('route', value);

  String? get departureTime => getField<String>('departureTime');
  set departureTime(String? value) => setField<String>('departureTime', value);

  String? get arrivalTime => getField<String>('arrivalTime');
  set arrivalTime(String? value) => setField<String>('arrivalTime', value);

  String? get travelTime => getField<String>('travelTime');
  set travelTime(String? value) => setField<String>('travelTime', value);

  bool? get event => getField<bool>('event');
  set event(bool? value) => setField<bool>('event', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
