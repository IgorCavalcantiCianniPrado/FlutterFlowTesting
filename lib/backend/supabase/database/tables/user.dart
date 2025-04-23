import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get managerId => getField<String>('manager_id');
  set managerId(String? value) => setField<String>('manager_id', value);

  String? get roleId => getField<String>('role_id');
  set roleId(String? value) => setField<String>('role_id', value);

  String? get defaultStatusId => getField<String>('default_status_id');
  set defaultStatusId(String? value) =>
      setField<String>('default_status_id', value);

  dynamic get permissions => getField<dynamic>('permissions');
  set permissions(dynamic value) => setField<dynamic>('permissions', value);

  String? get defaultTeamId => getField<String>('default_team_id');
  set defaultTeamId(String? value) =>
      setField<String>('default_team_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastLogin => getField<DateTime>('last_login');
  set lastLogin(DateTime? value) => setField<DateTime>('last_login', value);

  dynamic get preferences => getField<dynamic>('preferences');
  set preferences(dynamic value) => setField<dynamic>('preferences', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
