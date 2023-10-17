// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:quickalert/quickalert.dart';

Future quickAlert(BuildContext context) async {
  var message = '';
  return QuickAlert.show(
    context: context,
    type: QuickAlertType.custom,
    barrierDismissible: true,
    confirmBtnText: 'Save',
    customAsset: 'assets/images/success.gif',
    widget: TextFormField(
      decoration: const InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Phone',
          prefixIcon: Icon(Icons.email_outlined)),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => message = value,
    ),
    onConfirmBtnTap: () async {
      if (message.length < 5) {
        await QuickAlert.show(
            context: context, type: QuickAlertType.error, text: 'Please input');
      }
      Navigator.pop(context);
      await Future.delayed(const Duration(milliseconds: 1000));
      await QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'Phone number $message has bee saved',
      );
    },
    title: 'Custom',
    text: 'Custom widget',
  );
}
