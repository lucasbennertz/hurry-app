import 'dart:async';

import 'package:flutter/material.dart';

class HurryScreen extends StatefulWidget {
  const HurryScreen({super.key});
  @override
  State<HurryScreen> createState() => _HurryScreenState();
}

class _HurryScreenState extends State<HurryScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), ()  {
      Navigator.pop(context);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('assets/sustinho.webp', fit: BoxFit.fill,)
    );
  }
}