import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_members_widget.dart' show ProjectMembersWidget;
import 'package:flutter/material.dart';

class ProjectMembersModel extends FlutterFlowModel<ProjectMembersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Add Student in Ethiopia Project )] action in Button widget.
  ApiCallResponse? addStudentReturn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
