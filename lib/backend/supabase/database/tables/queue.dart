import '../database.dart';

class QueueTable extends SupabaseTable<QueueRow> {
  @override
  String get tableName => 'queue';

  @override
  QueueRow createRow(Map<String, dynamic> data) => QueueRow(data);
}

class QueueRow extends SupabaseDataRow {
  QueueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QueueTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get teamId => getField<String>('team_id')!;
  set teamId(String value) => setField<String>('team_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get routingStrategy => getField<String>('routing_strategy');
  set routingStrategy(String? value) =>
      setField<String>('routing_strategy', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
