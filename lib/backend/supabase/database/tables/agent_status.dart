import '../database.dart';

class AgentStatusTable extends SupabaseTable<AgentStatusRow> {
  @override
  String get tableName => 'agent_status';

  @override
  AgentStatusRow createRow(Map<String, dynamic> data) => AgentStatusRow(data);
}

class AgentStatusRow extends SupabaseDataRow {
  AgentStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentStatusTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get statusType => getField<String>('status_type')!;
  set statusType(String value) => setField<String>('status_type', value);

  String get color => getField<String>('color')!;
  set color(String value) => setField<String>('color', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  int? get autoTimeoutMinutes => getField<int>('auto_timeout_minutes');
  set autoTimeoutMinutes(int? value) =>
      setField<int>('auto_timeout_minutes', value);

  int? get displayOrder => getField<int>('display_order');
  set displayOrder(int? value) => setField<int>('display_order', value);

  bool? get isSystemStatus => getField<bool>('is_system_status');
  set isSystemStatus(bool? value) => setField<bool>('is_system_status', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  dynamic get teams => getField<dynamic>('teams');
  set teams(dynamic value) => setField<dynamic>('teams', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
