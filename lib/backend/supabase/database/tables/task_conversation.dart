import '../database.dart';

class TaskConversationTable extends SupabaseTable<TaskConversationRow> {
  @override
  String get tableName => 'task_conversation';

  @override
  TaskConversationRow createRow(Map<String, dynamic> data) =>
      TaskConversationRow(data);
}

class TaskConversationRow extends SupabaseDataRow {
  TaskConversationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskConversationTable();

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get conversationId => getField<String>('conversation_id')!;
  set conversationId(String value) =>
      setField<String>('conversation_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
