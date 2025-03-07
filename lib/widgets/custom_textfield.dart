import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;
  final Color textColor;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
    this.textColor = Colors.black, // Default text color
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: GoogleFonts.poppins(color: textColor, fontSize: 16), // Applied text color
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(color: Colors.grey.shade600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        suffixIcon: suffixIcon != null ? Padding(
          padding: const EdgeInsets.only(right: 10),
          child: suffixIcon,
        ) : null, // Removes padding if suffixIcon is null
      ),
    );
  }
}





