// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> eventToJson(
  String title,
  String description,
  DateTime startTime,
  DateTime endTime,
) async {
  final Map<String, dynamic> json = {
    'summary': title,
    'description': description,
    'start': {
      'dateTime': startTime.toUtc().toIso8601String(),
      'timeZone': 'UTC'
    },
    'end': {'dateTime': endTime.toUtc().toIso8601String(), 'timeZone': 'UTC'},
  };
  return json;
}
