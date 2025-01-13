import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_sales_auth_widget.dart' show PostSalesAuthWidget;
import 'package:flutter/material.dart';

class PostSalesAuthModel extends FlutterFlowModel<PostSalesAuthWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for UserName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for ClientId widget.
  FocusNode? clientIdFocusNode;
  TextEditingController? clientIdTextController;
  String? Function(BuildContext, String?)? clientIdTextControllerValidator;
  // Stores action output result for [Backend Call - API (SalesAuth)] action in Button widget.
  ApiCallResponse? apiResult765;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    clientIdFocusNode?.dispose();
    clientIdTextController?.dispose();
  }
}
