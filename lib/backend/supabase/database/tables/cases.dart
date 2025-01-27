import '../database.dart';

class CasesTable extends SupabaseTable<CasesRow> {
  @override
  String get tableName => 'cases';

  @override
  CasesRow createRow(Map<String, dynamic> data) => CasesRow(data);
}

class CasesRow extends SupabaseDataRow {
  CasesRow(super.data);

  @override
  SupabaseTable get table => CasesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
