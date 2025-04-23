import '../database.dart';

class ConversationTable extends SupabaseTable<ConversationRow> {
  @override
  String get tableName => 'conversation';

  @override
  ConversationRow createRow(Map<String, dynamic> data) => ConversationRow(data);
}

class ConversationRow extends SupabaseDataRow {
  ConversationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get externalReferenceId => getField<String>('external_reference_id');
  set externalReferenceId(String? value) =>
      setField<String>('external_reference_id', value);

  String get channelId => getField<String>('channel_id')!;
  set channelId(String value) => setField<String>('channel_id', value);

  String get direction => getField<String>('direction')!;
  set direction(String value) => setField<String>('direction', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get closedAt => getField<DateTime>('closed_at');
  set closedAt(DateTime? value) => setField<DateTime>('closed_at', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
