import '../database.dart';

class DriversTable extends SupabaseTable<DriversRow> {
  @override
  String get tableName => 'drivers';

  @override
  DriversRow createRow(Map<String, dynamic> data) => DriversRow(data);
}

class DriversRow extends SupabaseDataRow {
  DriversRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DriversTable();

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get contactNumber => getField<String>('contact_number')!;
  set contactNumber(String value) => setField<String>('contact_number', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get licenseNumber => getField<String>('license_number')!;
  set licenseNumber(String value) => setField<String>('license_number', value);

  String get vehiclePlate => getField<String>('vehicle_plate')!;
  set vehiclePlate(String value) => setField<String>('vehicle_plate', value);

  String get route => getField<String>('route')!;
  set route(String value) => setField<String>('route', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String get vehicleType => getField<String>('vehicle_type')!;
  set vehicleType(String value) => setField<String>('vehicle_type', value);
}
