import '../database.dart';

class RolePermissionTable extends SupabaseTable<RolePermissionRow> {
  @override
  String get tableName => 'role_permission';

  @override
  RolePermissionRow createRow(Map<String, dynamic> data) =>
      RolePermissionRow(data);
}

class RolePermissionRow extends SupabaseDataRow {
  RolePermissionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RolePermissionTable();

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  String get permissionId => getField<String>('permission_id')!;
  set permissionId(String value) => setField<String>('permission_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
