import '../database.dart';

class PercentTable extends SupabaseTable<PercentRow> {
  @override
  String get tableName => 'percent';

  @override
  PercentRow createRow(Map<String, dynamic> data) => PercentRow(data);
}

class PercentRow extends SupabaseDataRow {
  PercentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PercentTable();

  double? get round => getField<double>('round');
  set round(double? value) => setField<double>('round', value);
}
