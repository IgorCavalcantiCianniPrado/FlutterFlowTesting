// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'index.dart'; // Imports other custom actions

import 'package:supabase_flutter/supabase_flutter.dart';

Future oAuthLoginWithKeycloak() async {
  await Supabase.instance.client.auth.signInWithOAuth(
    OAuthProvider.keycloak,
    redirectTo: 'http://127.0.0.1:3000/callbackPage',
    scopes: 'openid',
  );
}
