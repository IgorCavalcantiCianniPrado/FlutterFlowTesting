import '../database.dart';

class AgentRouterTable extends SupabaseTable<AgentRouterRow> {
  @override
  String get tableName => 'agent_router';

  @override
  AgentRouterRow createRow(Map<String, dynamic> data) => AgentRouterRow(data);
}

class AgentRouterRow extends SupabaseDataRow {
  AgentRouterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentRouterTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get queueId => getField<String>('queue_id')!;
  set queueId(String value) => setField<String>('queue_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get distributionMethod => getField<String>('distribution_method');
  set distributionMethod(String? value) =>
      setField<String>('distribution_method', value);

  dynamic get rules => getField<dynamic>('rules');
  set rules(dynamic value) => setField<dynamic>('rules', value);

  bool? get considerAgentStatus => getField<bool>('consider_agent_status');
  set considerAgentStatus(bool? value) =>
      setField<bool>('consider_agent_status', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get executionOrder => getField<int>('execution_order');
  set executionOrder(int? value) => setField<int>('execution_order', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
