import '../database.dart';

class ConversationsTable extends SupabaseTable<ConversationsRow> {
  @override
  String get tableName => 'conversations';

  @override
  ConversationsRow createRow(Map<String, dynamic> data) =>
      ConversationsRow(data);
}

class ConversationsRow extends SupabaseDataRow {
  ConversationsRow(super.data);

  @override
  SupabaseTable get table => ConversationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  String? get conversationTitle => getField<String>('conversation_title');
  set conversationTitle(String? value) =>
      setField<String>('conversation_title', value);

  int? get caseId => getField<int>('case_id');
  set caseId(int? value) => setField<int>('case_id', value);
}
