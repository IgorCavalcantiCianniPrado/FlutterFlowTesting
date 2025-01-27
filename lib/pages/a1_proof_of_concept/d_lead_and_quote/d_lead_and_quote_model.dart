import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'd_lead_and_quote_widget.dart' show DLeadAndQuoteWidget;
import 'package:flutter/material.dart';

class DLeadAndQuoteModel extends FlutterFlowModel<DLeadAndQuoteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for SocialName widget.
  FocusNode? socialNameFocusNode;
  TextEditingController? socialNameTextController;
  String? Function(BuildContext, String?)? socialNameTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for CellPhone widget.
  FocusNode? cellPhoneFocusNode;
  TextEditingController? cellPhoneTextController;
  String? Function(BuildContext, String?)? cellPhoneTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for BirthDate widget.
  FocusNode? birthDateFocusNode;
  TextEditingController? birthDateTextController;
  String? Function(BuildContext, String?)? birthDateTextControllerValidator;
  // State field(s) for Sex widget.
  String? sexValue;
  FormFieldController<String>? sexValueController;
  // State field(s) for CivilState widget.
  String? civilStateValue;
  FormFieldController<String>? civilStateValueController;
  // State field(s) for Plate widget.
  FocusNode? plateFocusNode;
  TextEditingController? plateTextController;
  String? Function(BuildContext, String?)? plateTextControllerValidator;
  // State field(s) for CEP widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for VehicleUsage widget.
  String? vehicleUsageValue;
  FormFieldController<String>? vehicleUsageValueController;
  // State field(s) for VehicleArmored widget.
  String? vehicleArmoredValue;
  FormFieldController<String>? vehicleArmoredValueController;
  // State field(s) for WithoutTaxes widget.
  String? withoutTaxesValue;
  FormFieldController<String>? withoutTaxesValueController;
  // State field(s) for VehicleNew widget.
  String? vehicleNewValue;
  FormFieldController<String>? vehicleNewValueController;
  // State field(s) for VehicleHasGasKit widget.
  String? vehicleHasGasKitValue;
  FormFieldController<String>? vehicleHasGasKitValueController;
  // State field(s) for InGarageForAWhile widget.
  String? inGarageForAWhileValue;
  FormFieldController<String>? inGarageForAWhileValueController;
  // State field(s) for Driver18To26 widget.
  String? driver18To26Value;
  FormFieldController<String>? driver18To26ValueController;
  // State field(s) for DriverMore2 widget.
  String? driverMore2Value;
  FormFieldController<String>? driverMore2ValueController;
  // State field(s) for MainDriver widget.
  String? mainDriverValue;
  FormFieldController<String>? mainDriverValueController;
  // State field(s) for WorkTransport widget.
  String? workTransportValue;
  FormFieldController<String>? workTransportValueController;
  // Stores action output result for [Backend Call - API (CreateLead)] action in CreateLeadAndQuote widget.
  ApiCallResponse? createLeadResult;
  // Stores action output result for [Backend Call - API (CreateQuoteVThree)] action in CreateLeadAndQuote widget.
  ApiCallResponse? createQuoteResult;
  // Stores action output result for [Custom Action - getVehiclesLabelsList] action in CreateLeadAndQuote widget.
  List<String>? vehiclesList;
  // Stores action output result for [Custom Action - getVehiclesValuesList] action in CreateLeadAndQuote widget.
  List<String>? getVehiclesListSecPostSales;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    socialNameFocusNode?.dispose();
    socialNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cellPhoneFocusNode?.dispose();
    cellPhoneTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    birthDateFocusNode?.dispose();
    birthDateTextController?.dispose();

    plateFocusNode?.dispose();
    plateTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();
  }
}
