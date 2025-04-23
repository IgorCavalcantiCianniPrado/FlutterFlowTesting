import '../database.dart';

class ChannelTable extends SupabaseTable<ChannelRow> {
  @override
  String get tableName => 'channel';

  @override
  ChannelRow createRow(Map<String, dynamic> data) => ChannelRow(data);
}

class ChannelRow extends SupabaseDataRow {
  ChannelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChannelTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get channelType => getField<String>('channel_type')!;
  set channelType(String value) => setField<String>('channel_type', value);

  String get channelPlatform => getField<String>('channel_platform')!;
  set channelPlatform(String value) =>
      setField<String>('channel_platform', value);

  dynamic get configuration => getField<dynamic>('configuration');
  set configuration(dynamic value) =>
      setField<dynamic>('configuration', value);

  bool? get supportsMedia => getField<bool>('supports_media');
  set supportsMedia(bool? value) => setField<bool>('supports_media', value);

  bool? get supportsVoice => getField<bool>('supports_voice');
  set supportsVoice(bool? value) => setField<bool>('supports_voice', value);

  bool? get isPublic => getField<bool>('is_public');
  set isPublic(bool? value) => setField<bool>('is_public', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
