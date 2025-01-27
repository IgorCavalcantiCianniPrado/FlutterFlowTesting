import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'associate_case_component_widget.dart' show AssociateCaseComponentWidget;
import 'package:flutter/material.dart';

class AssociateCaseComponentModel
    extends FlutterFlowModel<AssociateCaseComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CaseNameInput widget.
  FocusNode? caseNameInputFocusNode;
  TextEditingController? caseNameInputTextController;
  String? Function(BuildContext, String?)? caseNameInputTextControllerValidator;
  // State field(s) for CaseDescriptionInput widget.
  FocusNode? caseDescriptionInputFocusNode;
  TextEditingController? caseDescriptionInputTextController;
  String? Function(BuildContext, String?)?
      caseDescriptionInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create Case)] action in Button widget.
  ApiCallResponse? createCaseResult;
  // State field(s) for CasesList widget.
  String? casesListValue;
  FormFieldController<String>? casesListValueController;
  // Stores action output result for [Custom Action - parseStringToInt] action in CasesList widget.
  int? caseIdInt;
  // Stores action output result for [Backend Call - API (Associate Case with Conversation)] action in Button widget.
  ApiCallResponse? apiResultcon;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    caseNameInputFocusNode?.dispose();
    caseNameInputTextController?.dispose();

    caseDescriptionInputFocusNode?.dispose();
    caseDescriptionInputTextController?.dispose();
  }
}
