import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a2_proof_of_concept/components/associate_case_component/associate_case_component_widget.dart';
import 'package:flutter/material.dart';
import 'associate_case_model.dart';
export 'associate_case_model.dart';

class AssociateCaseWidget extends StatefulWidget {
  const AssociateCaseWidget({super.key});

  @override
  State<AssociateCaseWidget> createState() => _AssociateCaseWidgetState();
}

class _AssociateCaseWidgetState extends State<AssociateCaseWidget> {
  late AssociateCaseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssociateCaseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Rubik',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.associateCaseComponentModel,
            updateCallback: () => safeSetState(() {}),
            child: const AssociateCaseComponentWidget(),
          ),
        ),
      ),
    );
  }
}
