import '../database.dart';

class GpsSessionsTable extends SupabaseTable<GpsSessionsRow> {
  @override
  String get tableName => 'gps_sessions';

  @override
  GpsSessionsRow createRow(Map<String, dynamic> data) => GpsSessionsRow(data);
}

class GpsSessionsRow extends SupabaseDataRow {
  GpsSessionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GpsSessionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<String> get routePoints => getListField<String>('route_points');
  set routePoints(List<String> value) =>
      setListField<String>('route_points', value);

  DateTime get startTime => getField<DateTime>('start_time')!;
  set startTime(DateTime value) => setField<DateTime>('start_time', value);

  DateTime get endTime => getField<DateTime>('end_time')!;
  set endTime(DateTime value) => setField<DateTime>('end_time', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
