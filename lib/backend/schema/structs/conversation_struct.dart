// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationStruct extends BaseStruct {
  ConversationStruct({
    String? customerName,
    String? message,
    String? conversationTitle,
    int? caseId,
  })  : _customerName = customerName,
        _message = message,
        _conversationTitle = conversationTitle,
        _caseId = caseId;

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  set customerName(String? val) => _customerName = val;

  bool hasCustomerName() => _customerName != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "conversation_title" field.
  String? _conversationTitle;
  String get conversationTitle => _conversationTitle ?? '';
  set conversationTitle(String? val) => _conversationTitle = val;

  bool hasConversationTitle() => _conversationTitle != null;

  // "case_id" field.
  int? _caseId;
  int get caseId => _caseId ?? 0;
  set caseId(int? val) => _caseId = val;

  void incrementCaseId(int amount) => caseId = caseId + amount;

  bool hasCaseId() => _caseId != null;

  static ConversationStruct fromMap(Map<String, dynamic> data) =>
      ConversationStruct(
        customerName: data['customer_name'] as String?,
        message: data['message'] as String?,
        conversationTitle: data['conversation_title'] as String?,
        caseId: castToType<int>(data['case_id']),
      );

  static ConversationStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'customer_name': _customerName,
        'message': _message,
        'conversation_title': _conversationTitle,
        'case_id': _caseId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer_name': serializeParam(
          _customerName,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'conversation_title': serializeParam(
          _conversationTitle,
          ParamType.String,
        ),
        'case_id': serializeParam(
          _caseId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ConversationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversationStruct(
        customerName: deserializeParam(
          data['customer_name'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        conversationTitle: deserializeParam(
          data['conversation_title'],
          ParamType.String,
          false,
        ),
        caseId: deserializeParam(
          data['case_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ConversationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversationStruct &&
        customerName == other.customerName &&
        message == other.message &&
        conversationTitle == other.conversationTitle &&
        caseId == other.caseId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerName, message, conversationTitle, caseId]);
}

ConversationStruct createConversationStruct({
  String? customerName,
  String? message,
  String? conversationTitle,
  int? caseId,
}) =>
    ConversationStruct(
      customerName: customerName,
      message: message,
      conversationTitle: conversationTitle,
      caseId: caseId,
    );
