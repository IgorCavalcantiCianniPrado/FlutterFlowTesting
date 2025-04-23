import '../database.dart';

class FormTable extends SupabaseTable<FormRow> {
  @override
  String get tableName => 'form';

  @override
  FormRow createRow(Map<String, dynamic> data) => FormRow(data);
}

class FormRow extends SupabaseDataRow {
  FormRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FormTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic get fields => getField<dynamic>('fields');
  set fields(dynamic value) => setField<dynamic>('fields', value);

  dynamic get validationRules => getField<dynamic>('validation_rules');
  set validationRules(dynamic value) =>
      setField<dynamic>('validation_rules', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
