import '../database.dart';

class QueueUserTable extends SupabaseTable<QueueUserRow> {
  @override
  String get tableName => 'queue_user';

  @override
  QueueUserRow createRow(Map<String, dynamic> data) => QueueUserRow(data);
}

class QueueUserRow extends SupabaseDataRow {
  QueueUserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QueueUserTable();

  String get queueId => getField<String>('queue_id')!;
  set queueId(String value) => setField<String>('queue_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
