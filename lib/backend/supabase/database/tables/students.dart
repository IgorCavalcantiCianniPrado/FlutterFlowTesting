import '../database.dart';

class StudentsTable extends SupabaseTable<StudentsRow> {
  @override
  String get tableName => 'students';

  @override
  StudentsRow createRow(Map<String, dynamic> data) => StudentsRow(data);
}

class StudentsRow extends SupabaseDataRow {
  StudentsRow(super.data);

  @override
  SupabaseTable get table => StudentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  bool? get ethiopia => getField<bool>('ethiopia');
  set ethiopia(bool? value) => setField<bool>('ethiopia', value);

  List<String> get projects => getListField<String>('projects');
  set projects(List<String>? value) => setListField<String>('projects', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
