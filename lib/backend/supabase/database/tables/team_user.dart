import '../database.dart';

class TeamUserTable extends SupabaseTable<TeamUserRow> {
  @override
  String get tableName => 'team_user';

  @override
  TeamUserRow createRow(Map<String, dynamic> data) => TeamUserRow(data);
}

class TeamUserRow extends SupabaseDataRow {
  TeamUserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamUserTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get teamId => getField<String>('team_id')!;
  set teamId(String value) => setField<String>('team_id', value);

  bool? get isPrimary => getField<bool>('is_primary');
  set isPrimary(bool? value) => setField<bool>('is_primary', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
