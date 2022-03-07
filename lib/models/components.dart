// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';

Color defaultColor = Colors.deepOrange;

void navigateTo(Widget, context) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );

void navigateAndFinish(Widget, context) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ),
    (route) => false);
