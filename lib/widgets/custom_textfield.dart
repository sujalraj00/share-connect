import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.hint});
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.transparent)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
         borderSide: const BorderSide(color: Colors.transparent)
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      fillColor: const Color(0xffF5F5FA),
      hintText: hint,
      hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )
      ),
    );
  }
}