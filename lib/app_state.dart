import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _AuthTokenStateVariable = '';
  String get AuthTokenStateVariable => _AuthTokenStateVariable;
  set AuthTokenStateVariable(String value) {
    _AuthTokenStateVariable = value;
  }

  String _PartnerIdStringStateVariable = '';
  String get PartnerIdStringStateVariable => _PartnerIdStringStateVariable;
  set PartnerIdStringStateVariable(String value) {
    _PartnerIdStringStateVariable = value;
  }

  String _LeadIdStateVariable = '';
  String get LeadIdStateVariable => _LeadIdStateVariable;
  set LeadIdStateVariable(String value) {
    _LeadIdStateVariable = value;
  }

  int _SalesChannelIdStateVariable = 0;
  int get SalesChannelIdStateVariable => _SalesChannelIdStateVariable;
  set SalesChannelIdStateVariable(int value) {
    _SalesChannelIdStateVariable = value;
  }

  int _PartnerIdIntStateVariable = 0;
  int get PartnerIdIntStateVariable => _PartnerIdIntStateVariable;
  set PartnerIdIntStateVariable(int value) {
    _PartnerIdIntStateVariable = value;
  }

  List<String> _VehiclesListStateVariable = [];
  List<String> get VehiclesListStateVariable => _VehiclesListStateVariable;
  set VehiclesListStateVariable(List<String> value) {
    _VehiclesListStateVariable = value;
  }

  void addToVehiclesListStateVariable(String value) {
    VehiclesListStateVariable.add(value);
  }

  void removeFromVehiclesListStateVariable(String value) {
    VehiclesListStateVariable.remove(value);
  }

  void removeAtIndexFromVehiclesListStateVariable(int index) {
    VehiclesListStateVariable.removeAt(index);
  }

  void updateVehiclesListStateVariableAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    VehiclesListStateVariable[index] =
        updateFn(_VehiclesListStateVariable[index]);
  }

  void insertAtIndexInVehiclesListStateVariable(int index, String value) {
    VehiclesListStateVariable.insert(index, value);
  }

  String _ColorVehicleStateVariable = '';
  String get ColorVehicleStateVariable => _ColorVehicleStateVariable;
  set ColorVehicleStateVariable(String value) {
    _ColorVehicleStateVariable = value;
  }

  String _FuelVehicleNameStateVariable = '';
  String get FuelVehicleNameStateVariable => _FuelVehicleNameStateVariable;
  set FuelVehicleNameStateVariable(String value) {
    _FuelVehicleNameStateVariable = value;
  }

  List<String> _VehiclesListSecondPostSalesStateVariable = [];
  List<String> get VehiclesListSecondPostSalesStateVariable =>
      _VehiclesListSecondPostSalesStateVariable;
  set VehiclesListSecondPostSalesStateVariable(List<String> value) {
    _VehiclesListSecondPostSalesStateVariable = value;
  }

  void addToVehiclesListSecondPostSalesStateVariable(String value) {
    VehiclesListSecondPostSalesStateVariable.add(value);
  }

  void removeFromVehiclesListSecondPostSalesStateVariable(String value) {
    VehiclesListSecondPostSalesStateVariable.remove(value);
  }

  void removeAtIndexFromVehiclesListSecondPostSalesStateVariable(int index) {
    VehiclesListSecondPostSalesStateVariable.removeAt(index);
  }

  void updateVehiclesListSecondPostSalesStateVariableAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    VehiclesListSecondPostSalesStateVariable[index] =
        updateFn(_VehiclesListSecondPostSalesStateVariable[index]);
  }

  void insertAtIndexInVehiclesListSecondPostSalesStateVariable(
      int index, String value) {
    VehiclesListSecondPostSalesStateVariable.insert(index, value);
  }

  String _ChassiCodeStateVariable = '';
  String get ChassiCodeStateVariable => _ChassiCodeStateVariable;
  set ChassiCodeStateVariable(String value) {
    _ChassiCodeStateVariable = value;
  }

  int _VehicleYearProducedStateVariable = 0;
  int get VehicleYearProducedStateVariable => _VehicleYearProducedStateVariable;
  set VehicleYearProducedStateVariable(int value) {
    _VehicleYearProducedStateVariable = value;
  }

  int _YearVehicleStateVariable = 0;
  int get YearVehicleStateVariable => _YearVehicleStateVariable;
  set YearVehicleStateVariable(int value) {
    _YearVehicleStateVariable = value;
  }

  String _QUOTENascimentoSegurado = '';
  String get QUOTENascimentoSegurado => _QUOTENascimentoSegurado;
  set QUOTENascimentoSegurado(String value) {
    _QUOTENascimentoSegurado = value;
  }

  String _QUOTESexoSegurado = '';
  String get QUOTESexoSegurado => _QUOTESexoSegurado;
  set QUOTESexoSegurado(String value) {
    _QUOTESexoSegurado = value;
  }

  String _QUOTEEstadoCivilSegurado = '';
  String get QUOTEEstadoCivilSegurado => _QUOTEEstadoCivilSegurado;
  set QUOTEEstadoCivilSegurado(String value) {
    _QUOTEEstadoCivilSegurado = value;
  }

  String _QUOTEFinalidadeUsoVeiculo = '';
  String get QUOTEFinalidadeUsoVeiculo => _QUOTEFinalidadeUsoVeiculo;
  set QUOTEFinalidadeUsoVeiculo(String value) {
    _QUOTEFinalidadeUsoVeiculo = value;
  }

  String _QUOTEVeiculoModificado = '';
  String get QUOTEVeiculoModificado => _QUOTEVeiculoModificado;
  set QUOTEVeiculoModificado(String value) {
    _QUOTEVeiculoModificado = value;
  }

  String _QUOTEIsencaoImposto = '';
  String get QUOTEIsencaoImposto => _QUOTEIsencaoImposto;
  set QUOTEIsencaoImposto(String value) {
    _QUOTEIsencaoImposto = value;
  }

  String _QUOTEZeroKm = '';
  String get QUOTEZeroKm => _QUOTEZeroKm;
  set QUOTEZeroKm(String value) {
    _QUOTEZeroKm = value;
  }

  String _QUOTEVeiculoKitGas = '';
  String get QUOTEVeiculoKitGas => _QUOTEVeiculoKitGas;
  set QUOTEVeiculoKitGas(String value) {
    _QUOTEVeiculoKitGas = value;
  }

  String _QUOTEGaragemFechada = '';
  String get QUOTEGaragemFechada => _QUOTEGaragemFechada;
  set QUOTEGaragemFechada(String value) {
    _QUOTEGaragemFechada = value;
  }

  String _QUOTETransporteTrabalho = '';
  String get QUOTETransporteTrabalho => _QUOTETransporteTrabalho;
  set QUOTETransporteTrabalho(String value) {
    _QUOTETransporteTrabalho = value;
  }

  String _QUOTETempoHabilitacao = '';
  String get QUOTETempoHabilitacao => _QUOTETempoHabilitacao;
  set QUOTETempoHabilitacao(String value) {
    _QUOTETempoHabilitacao = value;
  }

  String _QUOTESeguradoPrincipalCondutor = '';
  String get QUOTESeguradoPrincipalCondutor => _QUOTESeguradoPrincipalCondutor;
  set QUOTESeguradoPrincipalCondutor(String value) {
    _QUOTESeguradoPrincipalCondutor = value;
  }

  String _QUOTECondutorMenor26 = '';
  String get QUOTECondutorMenor26 => _QUOTECondutorMenor26;
  set QUOTECondutorMenor26(String value) {
    _QUOTECondutorMenor26 = value;
  }

  String _QUOTENrCpfCnpj = '';
  String get QUOTENrCpfCnpj => _QUOTENrCpfCnpj;
  set QUOTENrCpfCnpj(String value) {
    _QUOTENrCpfCnpj = value;
  }

  String _QUOTEDsPlaca = '';
  String get QUOTEDsPlaca => _QUOTEDsPlaca;
  set QUOTEDsPlaca(String value) {
    _QUOTEDsPlaca = value;
  }

  String _QUOTENrCepPERNOITE = '';
  String get QUOTENrCepPERNOITE => _QUOTENrCepPERNOITE;
  set QUOTENrCepPERNOITE(String value) {
    _QUOTENrCepPERNOITE = value;
  }

  String _QUOTECdLead = '';
  String get QUOTECdLead => _QUOTECdLead;
  set QUOTECdLead(String value) {
    _QUOTECdLead = value;
  }

  String _QUOTEParceiroIdString = '';
  String get QUOTEParceiroIdString => _QUOTEParceiroIdString;
  set QUOTEParceiroIdString(String value) {
    _QUOTEParceiroIdString = value;
  }

  int _QUOTECdCanalVENDA = 0;
  int get QUOTECdCanalVENDA => _QUOTECdCanalVENDA;
  set QUOTECdCanalVENDA(int value) {
    _QUOTECdCanalVENDA = value;
  }

  int _QUOTEParceiroIdInt = 0;
  int get QUOTEParceiroIdInt => _QUOTEParceiroIdInt;
  set QUOTEParceiroIdInt(int value) {
    _QUOTEParceiroIdInt = value;
  }

  String _QUOTECdModelo = '';
  String get QUOTECdModelo => _QUOTECdModelo;
  set QUOTECdModelo(String value) {
    _QUOTECdModelo = value;
  }

  String _QUOTEDsCombustivel = '';
  String get QUOTEDsCombustivel => _QUOTEDsCombustivel;
  set QUOTEDsCombustivel(String value) {
    _QUOTEDsCombustivel = value;
  }

  String _QUOTEDsCor = '';
  String get QUOTEDsCor => _QUOTEDsCor;
  set QUOTEDsCor(String value) {
    _QUOTEDsCor = value;
  }

  String _QUOTEDsChassi = '';
  String get QUOTEDsChassi => _QUOTEDsChassi;
  set QUOTEDsChassi(String value) {
    _QUOTEDsChassi = value;
  }

  int _QUOTENrAno = 0;
  int get QUOTENrAno => _QUOTENrAno;
  set QUOTENrAno(int value) {
    _QUOTENrAno = value;
  }

  int _QUOTENrAnoFabricacao = 0;
  int get QUOTENrAnoFabricacao => _QUOTENrAnoFabricacao;
  set QUOTENrAnoFabricacao(int value) {
    _QUOTENrAnoFabricacao = value;
  }

  int _VehicleModelIdStateVariable = 0;
  int get VehicleModelIdStateVariable => _VehicleModelIdStateVariable;
  set VehicleModelIdStateVariable(int value) {
    _VehicleModelIdStateVariable = value;
  }

  int _CaseIdStateVariable = 0;
  int get CaseIdStateVariable => _CaseIdStateVariable;
  set CaseIdStateVariable(int value) {
    _CaseIdStateVariable = value;
  }

  int _ConversationIdStateVariable = 0;
  int get ConversationIdStateVariable => _ConversationIdStateVariable;
  set ConversationIdStateVariable(int value) {
    _ConversationIdStateVariable = value;
  }

  String _SupabaseApiKeyStateVariable =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM';
  String get SupabaseApiKeyStateVariable => _SupabaseApiKeyStateVariable;
  set SupabaseApiKeyStateVariable(String value) {
    _SupabaseApiKeyStateVariable = value;
  }

  int _CaseIdToAssociationStateVariable = 0;
  int get CaseIdToAssociationStateVariable => _CaseIdToAssociationStateVariable;
  set CaseIdToAssociationStateVariable(int value) {
    _CaseIdToAssociationStateVariable = value;
  }

  bool _MustUpdateNewChatsList = false;
  bool get MustUpdateNewChatsList => _MustUpdateNewChatsList;
  set MustUpdateNewChatsList(bool value) {
    _MustUpdateNewChatsList = value;
  }

  int _StudentRowStateVariable = 0;
  int get StudentRowStateVariable => _StudentRowStateVariable;
  set StudentRowStateVariable(int value) {
    _StudentRowStateVariable = value;
  }

  List<dynamic> _AllStudentsPeriodically = [];
  List<dynamic> get AllStudentsPeriodically => _AllStudentsPeriodically;
  set AllStudentsPeriodically(List<dynamic> value) {
    _AllStudentsPeriodically = value;
  }

  void addToAllStudentsPeriodically(dynamic value) {
    AllStudentsPeriodically.add(value);
  }

  void removeFromAllStudentsPeriodically(dynamic value) {
    AllStudentsPeriodically.remove(value);
  }

  void removeAtIndexFromAllStudentsPeriodically(int index) {
    AllStudentsPeriodically.removeAt(index);
  }

  void updateAllStudentsPeriodicallyAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    AllStudentsPeriodically[index] = updateFn(_AllStudentsPeriodically[index]);
  }

  void insertAtIndexInAllStudentsPeriodically(int index, dynamic value) {
    AllStudentsPeriodically.insert(index, value);
  }
}
