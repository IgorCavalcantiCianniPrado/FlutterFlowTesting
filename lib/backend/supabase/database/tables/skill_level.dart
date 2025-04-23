import '../database.dart';

class SkillLevelTable extends SupabaseTable<SkillLevelRow> {
  @override
  String get tableName => 'skill_level';

  @override
  SkillLevelRow createRow(Map<String, dynamic> data) => SkillLevelRow(data);
}

class SkillLevelRow extends SupabaseDataRow {
  SkillLevelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SkillLevelTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get skillId => getField<String>('skill_id')!;
  set skillId(String value) => setField<String>('skill_id', value);

  int get level => getField<int>('level')!;
  set level(int value) => setField<int>('level', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
