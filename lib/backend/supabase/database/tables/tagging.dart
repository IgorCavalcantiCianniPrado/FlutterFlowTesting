import '../database.dart';

class TaggingTable extends SupabaseTable<TaggingRow> {
  @override
  String get tableName => 'tagging';

  @override
  TaggingRow createRow(Map<String, dynamic> data) => TaggingRow(data);
}

class TaggingRow extends SupabaseDataRow {
  TaggingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaggingTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tagId => getField<String>('tag_id')!;
  set tagId(String value) => setField<String>('tag_id', value);

  String get entityType => getField<String>('entity_type')!;
  set entityType(String value) => setField<String>('entity_type', value);

  String get entityId => getField<String>('entity_id')!;
  set entityId(String value) => setField<String>('entity_id', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool? get isAutomatic => getField<bool>('is_automatic');
  set isAutomatic(bool? value) => setField<bool>('is_automatic', value);

  double? get score => getField<double>('score');
  set score(double? value) => setField<double>('score', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
