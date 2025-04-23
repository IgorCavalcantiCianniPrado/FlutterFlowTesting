import '../database.dart';

class TeamTable extends SupabaseTable<TeamRow> {
  @override
  String get tableName => 'team';

  @override
  TeamRow createRow(Map<String, dynamic> data) => TeamRow(data);
}

class TeamRow extends SupabaseDataRow {
  TeamRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get parentId => getField<String>('parent_id');
  set parentId(String? value) => setField<String>('parent_id', value);

  String? get level => getField<String>('level');
  set level(String? value) => setField<String>('level', value);

  String? get adObjectIdentifier => getField<String>('ad_object_identifier');
  set adObjectIdentifier(String? value) =>
      setField<String>('ad_object_identifier', value);

  String? get adDepartment => getField<String>('ad_department');
  set adDepartment(String? value) => setField<String>('ad_department', value);

  String? get teamOrigin => getField<String>('team_origin');
  set teamOrigin(String? value) => setField<String>('team_origin', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic get businessHours => getField<dynamic>('business_hours');
  set businessHours(dynamic value) =>
      setField<dynamic>('business_hours', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
