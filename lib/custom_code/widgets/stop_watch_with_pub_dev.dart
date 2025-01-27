// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:stopwatch_flutter/ui/stopwatch.dart';
import 'package:flutter/services.dart';

class StopWatchWithPubDev extends StatefulWidget {
  const StopWatchWithPubDev({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<StopWatchWithPubDev> createState() => _StopWatchWithPubDevState();
}

class _StopWatchWithPubDevState extends State<StopWatchWithPubDev> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle
          .light, //This is important to mobile development, to the sytem date time appear in "light" mode, for instance
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: AspectRatio(
                //Decreasing the "aspectRatio" from 1.0 to 0.85, makes the buttons more verticaly distant
                //of the stopwatch (study this, I didn't get very well)
                aspectRatio: 0.85,
                child: Stopwatch()),
          ),
        ),
      ),
    );
  }
}
