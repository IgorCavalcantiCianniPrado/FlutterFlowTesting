import '../database.dart';

class PermissionTable extends SupabaseTable<PermissionRow> {
  @override
  String get tableName => 'permission';

  @override
  PermissionRow createRow(Map<String, dynamic> data) => PermissionRow(data);
}

class PermissionRow extends SupabaseDataRow {
  PermissionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PermissionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
