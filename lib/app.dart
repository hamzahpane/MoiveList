import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/counter_page.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key})
      : super(home: const CounterPage(), debugShowCheckedModeBanner: false);
}
