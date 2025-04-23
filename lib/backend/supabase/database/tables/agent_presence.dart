import '../database.dart';

class AgentPresenceTable extends SupabaseTable<AgentPresenceRow> {
  @override
  String get tableName => 'agent_presence';

  @override
  AgentPresenceRow createRow(Map<String, dynamic> data) =>
      AgentPresenceRow(data);
}

class AgentPresenceRow extends SupabaseDataRow {
  AgentPresenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentPresenceTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get statusId => getField<String>('status_id')!;
  set statusId(String value) => setField<String>('status_id', value);

  DateTime get startedAt => getField<DateTime>('started_at')!;
  set startedAt(DateTime value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
