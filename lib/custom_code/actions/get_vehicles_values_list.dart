// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<List<String>> getVehiclesValuesList(dynamic initialValue) async {
  List<dynamic> vehicleJsonList = [];
  List<String> vehicleStringList = [];

  var cleanedValue = jsonDecode(initialValue["Messages"][0]["Description"]);

  for (var count = 0; count < cleanedValue.length; count++) {
    var row = cleanedValue[count];

    var stringRow =
        '{"CD_MODELO":"${row["CD_MODELO"]}", "DS_COMBUSTIVEL":"${row["DS_COMBUSTIVEL"]}", "DS_COR":"${row["DS_COR"]}", "DS_CHASSI":"${row["DS_CHASSI"]}", "NR_ANO":"${row["NR_ANO"]}", "NR_ANO_FABRICACAO":"${row["NR_ANO_FABRICACAO"]}"}';

    vehicleStringList.add(stringRow);
  }

  var filterdVehicleList = vehicleStringList.toSet().toList();

  return filterdVehicleList;

  // for (var count = 0; count < filterdVehicleList.length; count++)
  //   vehicleJsonList.add(jsonDecode(filterdVehicleList[count]));

  // return vehicleJsonList;
}
