import '../database.dart';

class TagTable extends SupabaseTable<TagRow> {
  @override
  String get tableName => 'tag';

  @override
  TagRow createRow(Map<String, dynamic> data) => TagRow(data);
}

class TagRow extends SupabaseDataRow {
  TagRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TagTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool? get isSystemTag => getField<bool>('is_system_tag');
  set isSystemTag(bool? value) => setField<bool>('is_system_tag', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
