import '../database.dart';

class SkillTable extends SupabaseTable<SkillRow> {
  @override
  String get tableName => 'skill';

  @override
  SkillRow createRow(Map<String, dynamic> data) => SkillRow(data);
}

class SkillRow extends SupabaseDataRow {
  SkillRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SkillTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
