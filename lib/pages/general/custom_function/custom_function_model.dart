import '/flutter_flow/flutter_flow_util.dart';
import 'custom_function_widget.dart' show CustomFunctionWidget;
import 'package:flutter/material.dart';

class CustomFunctionModel extends FlutterFlowModel<CustomFunctionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for celsiusEntry widget.
  FocusNode? celsiusEntryFocusNode;
  TextEditingController? celsiusEntryTextController;
  String? Function(BuildContext, String?)? celsiusEntryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    celsiusEntryFocusNode?.dispose();
    celsiusEntryTextController?.dispose();
  }
}
