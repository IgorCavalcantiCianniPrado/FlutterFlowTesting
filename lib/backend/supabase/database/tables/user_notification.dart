import '../database.dart';

class UserNotificationTable extends SupabaseTable<UserNotificationRow> {
  @override
  String get tableName => 'user_notification';

  @override
  UserNotificationRow createRow(Map<String, dynamic> data) =>
      UserNotificationRow(data);
}

class UserNotificationRow extends SupabaseDataRow {
  UserNotificationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserNotificationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String get notificationType => getField<String>('notification_type')!;
  set notificationType(String value) =>
      setField<String>('notification_type', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  String? get entityType => getField<String>('entity_type');
  set entityType(String? value) => setField<String>('entity_type', value);

  String? get entityId => getField<String>('entity_id');
  set entityId(String? value) => setField<String>('entity_id', value);

  String? get priority => getField<String>('priority');
  set priority(String? value) => setField<String>('priority', value);

  DateTime? get expiration => getField<DateTime>('expiration');
  set expiration(DateTime? value) => setField<DateTime>('expiration', value);

  dynamic get actions => getField<dynamic>('actions');
  set actions(dynamic value) => setField<dynamic>('actions', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
