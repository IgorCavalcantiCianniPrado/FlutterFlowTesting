import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'divergence_fipe_table_model.dart';
export 'divergence_fipe_table_model.dart';

class DivergenceFipeTableWidget extends StatefulWidget {
  const DivergenceFipeTableWidget({super.key});

  @override
  State<DivergenceFipeTableWidget> createState() =>
      _DivergenceFipeTableWidgetState();
}

class _DivergenceFipeTableWidgetState extends State<DivergenceFipeTableWidget> {
  late DivergenceFipeTableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DivergenceFipeTableModel());

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
            'Divergencia de modelo FIPE',
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Por favor, selecione o modelo correto',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                    shadows: [
                      Shadow(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 2.0,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.divergenceFipeListValueController ??=
                        FormFieldController<String>(
                      _model.divergenceFipeListValue ??= '',
                    ),
                    options: List<String>.from(
                        FFAppState().VehiclesListSecondPostSalesStateVariable),
                    optionLabels: FFAppState().VehiclesListStateVariable,
                    onChanged: (val) async {
                      safeSetState(() => _model.divergenceFipeListValue = val);
                      _model.cdModeloOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'CD_MODELO',
                      );
                      _model.cdModeloOutputInt = await actions.parseStringToInt(
                        _model.cdModeloOutput!,
                      );
                      FFAppState().VehicleModelIdStateVariable =
                          _model.cdModeloOutputInt!;
                      safeSetState(() {});
                      _model.dsCombustivelOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'DS_COMBUSTIVEL',
                      );
                      FFAppState().FuelVehicleNameStateVariable =
                          _model.dsCombustivelOutput!;
                      safeSetState(() {});
                      _model.dsCorOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'DS_COR',
                      );
                      FFAppState().ColorVehicleStateVariable =
                          _model.dsCorOutput!;
                      safeSetState(() {});
                      _model.dsChassiOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'DS_CHASSI',
                      );
                      FFAppState().ChassiCodeStateVariable =
                          _model.dsChassiOutput!;
                      safeSetState(() {});
                      _model.nrAnoOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'NR_ANO',
                      );
                      _model.nrAnoOutputInt = await actions.parseStringToInt(
                        _model.nrAnoOutput!,
                      );
                      FFAppState().YearVehicleStateVariable =
                          _model.nrAnoOutputInt!;
                      safeSetState(() {});
                      _model.nrAnoFabricacaoOutput =
                          await actions.getValueFromJsonProperty(
                        _model.divergenceFipeListValue!,
                        'NR_ANO_FABRICACAO',
                      );
                      _model.nrAnoFabricacaoOutputInt =
                          await actions.parseStringToInt(
                        _model.nrAnoFabricacaoOutput!,
                      );
                      FFAppState().VehicleYearProducedStateVariable =
                          _model.nrAnoFabricacaoOutputInt!;
                      safeSetState(() {});
                      _model.createQuoteResult =
                          await FlutterFlowPOCGroup.createQuoteVThreeCall.call(
                        authToken: FFAppState().AuthTokenStateVariable,
                        nascimentoSegurado:
                            FFAppState().QUOTENascimentoSegurado,
                        sexoSegurado: FFAppState().QUOTESexoSegurado,
                        estadoCivilSegurado:
                            FFAppState().QUOTEEstadoCivilSegurado,
                        finalidadeUsoVeiculo:
                            FFAppState().QUOTEFinalidadeUsoVeiculo,
                        veiculoModificado: FFAppState().QUOTEVeiculoModificado,
                        isencaoImposto: FFAppState().QUOTEIsencaoImposto,
                        zeroKm: FFAppState().QUOTEZeroKm,
                        veiculoKitGas: FFAppState().QUOTEVeiculoKitGas,
                        garagemFechada: FFAppState().QUOTEGaragemFechada,
                        transporteTrabalho: FFAppState().QUOTEGaragemFechada,
                        tempoHabilitacao: FFAppState().QUOTETempoHabilitacao,
                        seguradoPrincipalCondutor:
                            FFAppState().QUOTESeguradoPrincipalCondutor,
                        condutorMenor26: FFAppState().QUOTECondutorMenor26,
                        nrCpfCnpj: FFAppState().QUOTENrCpfCnpj,
                        dsPlaca: FFAppState().QUOTEDsPlaca,
                        nrCepPernoite: FFAppState().QUOTENrCepPERNOITE,
                        cdLead: FFAppState().LeadIdStateVariable,
                        parceiroIdString:
                            FFAppState().PartnerIdStringStateVariable,
                        cdCanalVenda: FFAppState().SalesChannelIdStateVariable,
                        parceiroIdInt: FFAppState().PartnerIdIntStateVariable,
                        cdModelo: FFAppState().VehicleModelIdStateVariable,
                        dsCombustivel:
                            FFAppState().FuelVehicleNameStateVariable,
                        dsCor: FFAppState().ColorVehicleStateVariable,
                        dsChassi: FFAppState().ChassiCodeStateVariable,
                        nrAno: FFAppState().YearVehicleStateVariable,
                        nrAnoFabricacao:
                            FFAppState().VehicleYearProducedStateVariable,
                      );

                      if ((_model.createQuoteResult?.succeeded ?? true)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              (_model.createQuoteResult?.jsonBody ?? '')
                                  .toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              (_model.createQuoteResult?.jsonBody ?? '')
                                  .toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }

                      safeSetState(() {});
                    },
                    width: 200.0,
                    height: 40.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                    hintText: 'Select...',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
