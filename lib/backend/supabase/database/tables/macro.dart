import '../database.dart';

class MacroTable extends SupabaseTable<MacroRow> {
  @override
  String get tableName => 'macro';

  @override
  MacroRow createRow(Map<String, dynamic> data) => MacroRow(data);
}

class MacroRow extends SupabaseDataRow {
  MacroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MacroTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get teamId => getField<String>('team_id')!;
  set teamId(String value) => setField<String>('team_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isPersonal => getField<bool>('is_personal');
  set isPersonal(bool? value) => setField<bool>('is_personal', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  dynamic get actions => getField<dynamic>('actions')!;
  set actions(dynamic value) => setField<dynamic>('actions', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
