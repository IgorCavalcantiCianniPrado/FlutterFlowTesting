// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

Future<void> syncUserClaimsFromKeycloak() async {
  final supabase = Supabase.instance.client;

  try {
    // Step 1: Get session
    final sessionResponse = await supabase.auth.getSession();
    final session = sessionResponse.data?.session;

    final providerToken = session?.providerToken;
    final refreshToken = session?.refreshToken;

    if (providerToken == null) {
      print('No provider token found');
      return;
    }

    // Step 2: Decode token
    final decoded = JwtDecoder.decode(providerToken);
    final givenName = decoded['given_name'];
    final familyName = decoded['family_name'];
    final customClaim = decoded['new-crm-claim-test-2'];

    print("Decoded token: $decoded");

    // Step 3: Update user
    final userUpdateResponse = await supabase.auth.updateUser(
      UserAttributes(
        data: {
          'given_name': givenName,
          'family_name': familyName,
          'custom_claim': customClaim,
        },
      ),
    );

    if (userUpdateResponse.user == null) {
      print('Failed to update user');
    } else {
      print('User updated successfully');
    }

    // Step 4: Refresh session (optional, depends on your use case)
    if (refreshToken != null) {
      final refreshed =
          await supabase.auth.refreshSession(refreshToken: refreshToken);
      print('Session refreshed: ${refreshed.data?.session}');
    } else {
      print('No refresh token available');
    }
  } catch (e) {
    print('Error in syncing user: $e');
  }
}
