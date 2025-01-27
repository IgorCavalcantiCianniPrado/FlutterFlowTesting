import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_members_copy_widget.dart' show ProjectMembersCopyWidget;
import 'package:flutter/material.dart';

class ProjectMembersCopyModel
    extends FlutterFlowModel<ProjectMembersCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Stream<List<StudentsRow>>? listViewSupabaseStream;
  Stream<List<StudentsRow>>? addStudentListSupabaseStream;
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
