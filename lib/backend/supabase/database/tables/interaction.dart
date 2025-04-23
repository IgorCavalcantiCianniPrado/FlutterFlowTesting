import '../database.dart';

class InteractionTable extends SupabaseTable<InteractionRow> {
  @override
  String get tableName => 'interaction';

  @override
  InteractionRow createRow(Map<String, dynamic> data) => InteractionRow(data);
}

class InteractionRow extends SupabaseDataRow {
  InteractionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InteractionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get conversationId => getField<String>('conversation_id')!;
  set conversationId(String value) =>
      setField<String>('conversation_id', value);

  String get participantId => getField<String>('participant_id')!;
  set participantId(String value) => setField<String>('participant_id', value);

  String? get parentId => getField<String>('parent_id');
  set parentId(String? value) => setField<String>('parent_id', value);

  String? get externalReferenceId => getField<String>('external_reference_id');
  set externalReferenceId(String? value) =>
      setField<String>('external_reference_id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get endedAt => getField<DateTime>('ended_at');
  set endedAt(DateTime? value) => setField<DateTime>('ended_at', value);

  DateTime? get viewedAt => getField<DateTime>('viewed_at');
  set viewedAt(DateTime? value) => setField<DateTime>('viewed_at', value);

  DateTime? get editedAt => getField<DateTime>('edited_at');
  set editedAt(DateTime? value) => setField<DateTime>('edited_at', value);

  bool? get hidden => getField<bool>('hidden');
  set hidden(bool? value) => setField<bool>('hidden', value);

  bool? get edited => getField<bool>('edited');
  set edited(bool? value) => setField<bool>('edited', value);

  String? get sendingStatus => getField<String>('sending_status');
  set sendingStatus(String? value) => setField<String>('sending_status', value);

  String? get mediaStatus => getField<String>('media_status');
  set mediaStatus(String? value) => setField<String>('media_status', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
