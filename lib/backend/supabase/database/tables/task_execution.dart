import '../database.dart';

class TaskExecutionTable extends SupabaseTable<TaskExecutionRow> {
  @override
  String get tableName => 'task_execution';

  @override
  TaskExecutionRow createRow(Map<String, dynamic> data) =>
      TaskExecutionRow(data);
}

class TaskExecutionRow extends SupabaseDataRow {
  TaskExecutionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskExecutionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get executionType => getField<String>('execution_type')!;
  set executionType(String value) => setField<String>('execution_type', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
