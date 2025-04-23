import '../database.dart';

class ParticipantTable extends SupabaseTable<ParticipantRow> {
  @override
  String get tableName => 'participant';

  @override
  ParticipantRow createRow(Map<String, dynamic> data) => ParticipantRow(data);
}

class ParticipantRow extends SupabaseDataRow {
  ParticipantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParticipantTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get conversationId => getField<String>('conversation_id')!;
  set conversationId(String value) =>
      setField<String>('conversation_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get joinedAt => getField<DateTime>('joined_at');
  set joinedAt(DateTime? value) => setField<DateTime>('joined_at', value);

  DateTime? get leftAt => getField<DateTime>('left_at');
  set leftAt(DateTime? value) => setField<DateTime>('left_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
