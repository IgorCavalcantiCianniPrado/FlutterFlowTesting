import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_login_widget.dart' show ALoginWidget;
import 'package:flutter/material.dart';

class ALoginModel extends FlutterFlowModel<ALoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for UserTextField widget.
  FocusNode? userTextFieldFocusNode;
  TextEditingController? userTextFieldTextController;
  String? Function(BuildContext, String?)? userTextFieldTextControllerValidator;
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for ClientIdTextField widget.
  FocusNode? clientIdTextFieldFocusNode;
  TextEditingController? clientIdTextFieldTextController;
  String? Function(BuildContext, String?)?
      clientIdTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (SalesBoAuth)] action in Button widget.
  ApiCallResponse? salesBoToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userTextFieldFocusNode?.dispose();
    userTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    clientIdTextFieldFocusNode?.dispose();
    clientIdTextFieldTextController?.dispose();
  }
}
