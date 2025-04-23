import '../database.dart';

class SlaTable extends SupabaseTable<SlaRow> {
  @override
  String get tableName => 'sla';

  @override
  SlaRow createRow(Map<String, dynamic> data) => SlaRow(data);
}

class SlaRow extends SupabaseDataRow {
  SlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SlaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get responseTimeMinutes => getField<int>('response_time_minutes');
  set responseTimeMinutes(int? value) =>
      setField<int>('response_time_minutes', value);

  int? get resolutionTimeMinutes => getField<int>('resolution_time_minutes');
  set resolutionTimeMinutes(int? value) =>
      setField<int>('resolution_time_minutes', value);

  int? get updateTimeMinutes => getField<int>('update_time_minutes');
  set updateTimeMinutes(int? value) =>
      setField<int>('update_time_minutes', value);

  bool? get businessHoursOnly => getField<bool>('business_hours_only');
  set businessHoursOnly(bool? value) =>
      setField<bool>('business_hours_only', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
