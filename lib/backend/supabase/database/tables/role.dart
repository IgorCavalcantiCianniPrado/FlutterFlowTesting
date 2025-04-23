import '../database.dart';

class RoleTable extends SupabaseTable<RoleRow> {
  @override
  String get tableName => 'role';

  @override
  RoleRow createRow(Map<String, dynamic> data) => RoleRow(data);
}

class RoleRow extends SupabaseDataRow {
  RoleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoleTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isSystemRole => getField<bool>('is_system_role');
  set isSystemRole(bool? value) => setField<bool>('is_system_role', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
