import '../database.dart';

class ServiceTable extends SupabaseTable<ServiceRow> {
  @override
  String get tableName => 'service';

  @override
  ServiceRow createRow(Map<String, dynamic> data) => ServiceRow(data);
}

class ServiceRow extends SupabaseDataRow {
  ServiceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String? get formId => getField<String>('form_id');
  set formId(String? value) => setField<String>('form_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  dynamic get process => getField<dynamic>('process');
  set process(dynamic value) => setField<dynamic>('process', value);

  String? get processId => getField<String>('process_id');
  set processId(String? value) => setField<String>('process_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
