import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'c_sales_channel_model.dart';
export 'c_sales_channel_model.dart';

class CSalesChannelWidget extends StatefulWidget {
  const CSalesChannelWidget({super.key});

  @override
  State<CSalesChannelWidget> createState() => _CSalesChannelWidgetState();
}

class _CSalesChannelWidgetState extends State<CSalesChannelWidget> {
  late CSalesChannelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSalesChannelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: FlutterFlowPOCGroup.partnersBySellerCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitWave(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final cSalesChannelPartnersBySellerResponse = snapshot.data!;

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
                'Sales Channel',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Sales Channel',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: FlutterFlowPOCGroup.salesChannelCall.call(
                          cdPersonPartnerEstablishment:
                              FFAppState().PartnerIdStringStateVariable,
                          cdPersonPartner:
                              FFAppState().PartnerIdStringStateVariable,
                          authToken: FFAppState().AuthTokenStateVariable,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitWave(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          final salesChannelListSalesChannelResponse =
                              snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller:
                                _model.salesChannelListValueController ??=
                                    FormFieldController<String>(
                              _model.salesChannelListValue ??= '',
                            ),
                            options: List<String>.from((getJsonField(
                              salesChannelListSalesChannelResponse.jsonBody,
                              r'''$[:].CdSalesChannel''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()),
                            optionLabels: FlutterFlowPOCGroup.salesChannelCall
                                .salesChannelNames(
                              salesChannelListSalesChannelResponse.jsonBody,
                            )!,
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.salesChannelListValue = val);
                              _model.parseStringToIntResult =
                                  await actions.parseStringToInt(
                                _model.salesChannelListValue!,
                              );
                              FFAppState().SalesChannelIdStateVariable =
                                  _model.parseStringToIntResult!;
                              safeSetState(() {});

                              context.pushNamed('D_LeadAndQuote');

                              safeSetState(() {});
                            },
                            width: 200.0,
                            height: 40.0,
                            searchHintTextStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            searchTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Select...',
                            searchHintText: 'Search...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            disabled: FFAppState().PartnerIdStringStateVariable == '',
                            isOverButton: false,
                            isSearchable: true,
                            isMultiSelect: false,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
