import '../database.dart';

class PriorityTable extends SupabaseTable<PriorityRow> {
  @override
  String get tableName => 'priority';

  @override
  PriorityRow createRow(Map<String, dynamic> data) => PriorityRow(data);
}

class PriorityRow extends SupabaseDataRow {
  PriorityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PriorityTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get level => getField<String>('level')!;
  set level(String value) => setField<String>('level', value);

  String get color => getField<String>('color')!;
  set color(String value) => setField<String>('color', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  int? get displayOrder => getField<int>('display_order');
  set displayOrder(int? value) => setField<int>('display_order', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
