// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '849100873399-adablp0odgb504gqtfbbvi7utmm446lc.apps.googleusercontent.com',
      scopes: <String>[
        'https://www.googleapis.com/auth/calendar',
        'https://www.googleapis.com/auth/calendar.events',
        'https://www.googleapis.com/auth/userinfo.profile',
        // Corrected scope from 'userinfo.emailopenid' to 'userinfo.email' and 'openid'
        'https://www.googleapis.com/auth/userinfo.email',
        'openid', // Added 'openid' as a separate scope
      ],
    );
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount == null)
      return null; // Early return if signIn is null
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    return googleSignInAuthentication
        .accessToken; // This can be null, hence the Future<String?> return type
  } catch (error) {
    print('Error Signing in with Google: $error');
    return null; // It's now okay to return null since the function's return type is Future<String?>.
  }
}
