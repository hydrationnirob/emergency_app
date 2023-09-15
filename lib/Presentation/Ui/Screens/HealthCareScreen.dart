import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthCareScreen extends StatefulWidget {
  const HealthCareScreen({super.key});

  @override
  State<HealthCareScreen> createState() => _HealthCareScreenState();
}

class _HealthCareScreenState extends State<HealthCareScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("HealthCareScreen"),
      ),);
  }
}
