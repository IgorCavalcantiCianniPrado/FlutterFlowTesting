import '../database.dart';

class CustomerTable extends SupabaseTable<CustomerRow> {
  @override
  String get tableName => 'customer';

  @override
  CustomerRow createRow(Map<String, dynamic> data) => CustomerRow(data);
}

class CustomerRow extends SupabaseDataRow {
  CustomerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomerTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get documentNumber => getField<String>('document_number');
  set documentNumber(String? value) =>
      setField<String>('document_number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  String? get timezone => getField<String>('timezone');
  set timezone(String? value) => setField<String>('timezone', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
