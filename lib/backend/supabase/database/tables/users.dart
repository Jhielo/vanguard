import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get contactNumber => getField<String>('contact_number');
  set contactNumber(String? value) => setField<String>('contact_number', value);

  String? get licenseNumber => getField<String>('license_number');
  set licenseNumber(String? value) => setField<String>('license_number', value);

  String? get plateNumber => getField<String>('plate_number');
  set plateNumber(String? value) => setField<String>('plate_number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
