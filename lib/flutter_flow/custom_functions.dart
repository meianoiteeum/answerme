import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';

double randomNumber(
  double minValue,
  double maxValue,
  int precision,
) {
  final random = new math.Random();
  double doubleRandom = minValue + (maxValue - minValue) * random.nextDouble();

  while ((doubleRandom >= 1) || (doubleRandom <= -1)) {
    doubleRandom = minValue + (maxValue - minValue) * random.nextDouble();
  }

  return double.parse(doubleRandom.toStringAsFixed(precision));
}

String? getBodyEmail(String? phoneNumber) {
  return 'Phone: $phoneNumber';
}

MessageRecord? getMessage(String? phoneNumber) {
  return null;
}
