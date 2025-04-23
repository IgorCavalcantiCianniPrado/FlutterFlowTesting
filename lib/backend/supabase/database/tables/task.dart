import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  String get serviceId => getField<String>('service_id')!;
  set serviceId(String value) => setField<String>('service_id', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String? get queueId => getField<String>('queue_id');
  set queueId(String? value) => setField<String>('queue_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get priority => getField<String>('priority')!;
  set priority(String value) => setField<String>('priority', value);

  String get mode => getField<String>('mode')!;
  set mode(String value) => setField<String>('mode', value);

  String? get problemId => getField<String>('problem_id');
  set problemId(String? value) => setField<String>('problem_id', value);

  String? get slaId => getField<String>('sla_id');
  set slaId(String? value) => setField<String>('sla_id', value);

  String get source => getField<String>('source')!;
  set source(String value) => setField<String>('source', value);

  dynamic get sourceDetails => getField<dynamic>('source_details');
  set sourceDetails(dynamic value) =>
      setField<dynamic>('source_details', value);

  String? get formId => getField<String>('form_id');
  set formId(String? value) => setField<String>('form_id', value);

  dynamic get formData => getField<dynamic>('form_data');
  set formData(dynamic value) => setField<dynamic>('form_data', value);

  String? get internalNotes => getField<String>('internal_notes');
  set internalNotes(String? value) => setField<String>('internal_notes', value);

  bool? get isFirstContactResolution =>
      getField<bool>('is_first_contact_resolution');
  set isFirstContactResolution(bool? value) =>
      setField<bool>('is_first_contact_resolution', value);

  bool? get isReopened => getField<bool>('is_reopened');
  set isReopened(bool? value) => setField<bool>('is_reopened', value);

  int? get handleTimeSeconds => getField<int>('handle_time_seconds');
  set handleTimeSeconds(int? value) =>
      setField<int>('handle_time_seconds', value);

  int? get acwTimeSeconds => getField<int>('acw_time_seconds');
  set acwTimeSeconds(int? value) => setField<int>('acw_time_seconds', value);

  int? get numberOfTransfers => getField<int>('number_of_transfers');
  set numberOfTransfers(int? value) =>
      setField<int>('number_of_transfers', value);

  DateTime? get firstRespondedAt => getField<DateTime>('first_responded_at');
  set firstRespondedAt(DateTime? value) =>
      setField<DateTime>('first_responded_at', value);

  DateTime? get lastCustomerActivityAt =>
      getField<DateTime>('last_customer_activity_at');
  set lastCustomerActivityAt(DateTime? value) =>
      setField<DateTime>('last_customer_activity_at', value);

  DateTime? get closedAt => getField<DateTime>('closed_at');
  set closedAt(DateTime? value) => setField<DateTime>('closed_at', value);

  DateTime? get responseSlaDeadlineAt =>
      getField<DateTime>('response_sla_deadline_at');
  set responseSlaDeadlineAt(DateTime? value) =>
      setField<DateTime>('response_sla_deadline_at', value);

  DateTime? get resolutionSlaDeadlineAt =>
      getField<DateTime>('resolution_sla_deadline_at');
  set resolutionSlaDeadlineAt(DateTime? value) =>
      setField<DateTime>('resolution_sla_deadline_at', value);

  DateTime? get updateSlaDeadlineAt =>
      getField<DateTime>('update_sla_deadline_at');
  set updateSlaDeadlineAt(DateTime? value) =>
      setField<DateTime>('update_sla_deadline_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get responseSlaMet => getField<bool>('response_sla_met');
  set responseSlaMet(bool? value) => setField<bool>('response_sla_met', value);

  bool? get resolutionSlaMet => getField<bool>('resolution_sla_met');
  set resolutionSlaMet(bool? value) =>
      setField<bool>('resolution_sla_met', value);

  bool? get updateSlaMet => getField<bool>('update_sla_met');
  set updateSlaMet(bool? value) => setField<bool>('update_sla_met', value);

  int? get csatScore => getField<int>('csat_score');
  set csatScore(int? value) => setField<int>('csat_score', value);

  int? get npsScore => getField<int>('nps_score');
  set npsScore(int? value) => setField<int>('nps_score', value);

  String? get feedbackText => getField<String>('feedback_text');
  set feedbackText(String? value) => setField<String>('feedback_text', value);

  dynamic get tags => getField<dynamic>('tags');
  set tags(dynamic value) => setField<dynamic>('tags', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);
}
