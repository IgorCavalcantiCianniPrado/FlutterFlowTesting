import '../database.dart';

class VResultTable extends SupabaseTable<VResultRow> {
  @override
  String get tableName => 'v_result';

  @override
  VResultRow createRow(Map<String, dynamic> data) => VResultRow(data);
}

class VResultRow extends SupabaseDataRow {
  VResultRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VResultTable();

  dynamic get jsonbAgg => getField<dynamic>('jsonb_agg');
  set jsonbAgg(dynamic value) => setField<dynamic>('jsonb_agg', value);
}
