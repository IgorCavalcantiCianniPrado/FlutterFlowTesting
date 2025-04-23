import '../database.dart';

class TaskEscalationTable extends SupabaseTable<TaskEscalationRow> {
  @override
  String get tableName => 'task_escalation';

  @override
  TaskEscalationRow createRow(Map<String, dynamic> data) =>
      TaskEscalationRow(data);
}

class TaskEscalationRow extends SupabaseDataRow {
  TaskEscalationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskEscalationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get reason => getField<String>('reason')!;
  set reason(String value) => setField<String>('reason', value);

  int? get escalationLevel => getField<int>('escalation_level');
  set escalationLevel(int? value) => setField<int>('escalation_level', value);

  String? get previousPriority => getField<String>('previous_priority');
  set previousPriority(String? value) =>
      setField<String>('previous_priority', value);

  String? get newPriority => getField<String>('new_priority');
  set newPriority(String? value) => setField<String>('new_priority', value);

  DateTime? get escalatedAt => getField<DateTime>('escalated_at');
  set escalatedAt(DateTime? value) => setField<DateTime>('escalated_at', value);

  bool? get resolved => getField<bool>('resolved');
  set resolved(bool? value) => setField<bool>('resolved', value);

  DateTime? get resolvedAt => getField<DateTime>('resolved_at');
  set resolvedAt(DateTime? value) => setField<DateTime>('resolved_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
