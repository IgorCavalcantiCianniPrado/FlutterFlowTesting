import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String? convertCelsiusToFahrenheit(double? celsiusTemperature) {
  // convert celsius to fahrenheit
  if (celsiusTemperature == null) {
    return null;
  }

  double fahrenheitTemperature = (celsiusTemperature * 9 / 5) + 32;
  return fahrenheitTemperature.toStringAsFixed(2);
}
