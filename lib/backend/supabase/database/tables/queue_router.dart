import '../database.dart';

class QueueRouterTable extends SupabaseTable<QueueRouterRow> {
  @override
  String get tableName => 'queue_router';

  @override
  QueueRouterRow createRow(Map<String, dynamic> data) => QueueRouterRow(data);
}

class QueueRouterRow extends SupabaseDataRow {
  QueueRouterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QueueRouterTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get queueId => getField<String>('queue_id')!;
  set queueId(String value) => setField<String>('queue_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic get rules => getField<dynamic>('rules');
  set rules(dynamic value) => setField<dynamic>('rules', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get executionOrder => getField<int>('execution_order');
  set executionOrder(int? value) => setField<int>('execution_order', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
