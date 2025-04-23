import '../database.dart';

class ProblemTable extends SupabaseTable<ProblemRow> {
  @override
  String get tableName => 'problem';

  @override
  ProblemRow createRow(Map<String, dynamic> data) => ProblemRow(data);
}

class ProblemRow extends SupabaseDataRow {
  ProblemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProblemTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get priority => getField<String>('priority');
  set priority(String? value) => setField<String>('priority', value);

  String? get impact => getField<String>('impact');
  set impact(String? value) => setField<String>('impact', value);

  String? get rootCause => getField<String>('root_cause');
  set rootCause(String? value) => setField<String>('root_cause', value);

  String? get resolution => getField<String>('resolution');
  set resolution(String? value) => setField<String>('resolution', value);

  DateTime? get resolutionDate => getField<DateTime>('resolution_date');
  set resolutionDate(DateTime? value) =>
      setField<DateTime>('resolution_date', value);

  String? get assignedUserId => getField<String>('assigned_user_id');
  set assignedUserId(String? value) =>
      setField<String>('assigned_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
