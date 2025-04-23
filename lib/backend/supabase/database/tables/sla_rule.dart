import '../database.dart';

class SlaRuleTable extends SupabaseTable<SlaRuleRow> {
  @override
  String get tableName => 'sla_rule';

  @override
  SlaRuleRow createRow(Map<String, dynamic> data) => SlaRuleRow(data);
}

class SlaRuleRow extends SupabaseDataRow {
  SlaRuleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SlaRuleTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get slaId => getField<String>('sla_id')!;
  set slaId(String value) => setField<String>('sla_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get executionOrder => getField<int>('execution_order');
  set executionOrder(int? value) => setField<int>('execution_order', value);

  String get conditionType => getField<String>('condition_type')!;
  set conditionType(String value) => setField<String>('condition_type', value);

  dynamic get conditions => getField<dynamic>('conditions')!;
  set conditions(dynamic value) => setField<dynamic>('conditions', value);

  int? get responseTimeMinutes => getField<int>('response_time_minutes');
  set responseTimeMinutes(int? value) =>
      setField<int>('response_time_minutes', value);

  int? get resolutionTimeMinutes => getField<int>('resolution_time_minutes');
  set resolutionTimeMinutes(int? value) =>
      setField<int>('resolution_time_minutes', value);

  int? get updateTimeMinutes => getField<int>('update_time_minutes');
  set updateTimeMinutes(int? value) =>
      setField<int>('update_time_minutes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
