import '../database.dart';

class ServiceSkillTable extends SupabaseTable<ServiceSkillRow> {
  @override
  String get tableName => 'service_skill';

  @override
  ServiceSkillRow createRow(Map<String, dynamic> data) => ServiceSkillRow(data);
}

class ServiceSkillRow extends SupabaseDataRow {
  ServiceSkillRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceSkillTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get serviceId => getField<String>('service_id')!;
  set serviceId(String value) => setField<String>('service_id', value);

  String get skillId => getField<String>('skill_id')!;
  set skillId(String value) => setField<String>('skill_id', value);

  int get minLevel => getField<int>('min_level')!;
  set minLevel(int value) => setField<int>('min_level', value);

  bool? get isRequired => getField<bool>('is_required');
  set isRequired(bool? value) => setField<bool>('is_required', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
