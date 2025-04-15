import '../database.dart';

class RecordsTable extends SupabaseTable<RecordsRow> {
  @override
  String get tableName => 'records';

  @override
  RecordsRow createRow(Map<String, dynamic> data) => RecordsRow(data);
}

class RecordsRow extends SupabaseDataRow {
  RecordsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  double get latitude => getField<double>('latitude')!;
  set latitude(double value) => setField<double>('latitude', value);

  double get longitude => getField<double>('longitude')!;
  set longitude(double value) => setField<double>('longitude', value);

  double? get speed => getField<double>('speed');
  set speed(double? value) => setField<double>('speed', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);
}
