import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a2_proof_of_concept/components/associate_case_component/associate_case_component_widget.dart';
import 'associate_case_widget.dart' show AssociateCaseWidget;
import 'package:flutter/material.dart';

class AssociateCaseModel extends FlutterFlowModel<AssociateCaseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AssociateCaseComponent component.
  late AssociateCaseComponentModel associateCaseComponentModel;

  @override
  void initState(BuildContext context) {
    associateCaseComponentModel =
        createModel(context, () => AssociateCaseComponentModel());
  }

  @override
  void dispose() {
    associateCaseComponentModel.dispose();
  }
}
