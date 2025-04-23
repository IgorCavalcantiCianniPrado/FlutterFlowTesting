import '../database.dart';

class ServiceSlaTable extends SupabaseTable<ServiceSlaRow> {
  @override
  String get tableName => 'service_sla';

  @override
  ServiceSlaRow createRow(Map<String, dynamic> data) => ServiceSlaRow(data);
}

class ServiceSlaRow extends SupabaseDataRow {
  ServiceSlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceSlaTable();

  String get serviceId => getField<String>('service_id')!;
  set serviceId(String value) => setField<String>('service_id', value);

  String get slaId => getField<String>('sla_id')!;
  set slaId(String value) => setField<String>('sla_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
