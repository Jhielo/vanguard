import '../database.dart';

class NdrrmcAnnouncementsTable extends SupabaseTable<NdrrmcAnnouncementsRow> {
  @override
  String get tableName => 'ndrrmc_announcements';

  @override
  NdrrmcAnnouncementsRow createRow(Map<String, dynamic> data) =>
      NdrrmcAnnouncementsRow(data);
}

class NdrrmcAnnouncementsRow extends SupabaseDataRow {
  NdrrmcAnnouncementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NdrrmcAnnouncementsTable();

  DateTime? get datePosted => getField<DateTime>('date_posted');
  set datePosted(DateTime? value) => setField<DateTime>('date_posted', value);

  String? get pdfUrl => getField<String>('pdf_url');
  set pdfUrl(String? value) => setField<String>('pdf_url', value);

  String? get summary => getField<String>('summary');
  set summary(String? value) => setField<String>('summary', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  bool? get priority => getField<bool>('priority');
  set priority(bool? value) => setField<bool>('priority', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);
}
