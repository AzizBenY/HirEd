import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/widgets/custom_textfield.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';

class Signuppage extends StatelessWidget {
  // Controllers for text fields
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD2A1FF), // First color: D2A1FF
              Color(0xFF91A0FF), // Second color: 91A0FF
              Color(0xFFA3E6FD), // Third color: A3E6FD
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back Button
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  // Title
                  Text(
                    "New Account",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 126, 34, 255),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Input Fields
                  CustomTextField(controller: fullNameController, hintText: "Full Name"),
                  const SizedBox(height: 15),
                  CustomTextField(controller: passwordController, hintText: "Password", isPassword: true),
                  const SizedBox(height: 15),
                  CustomTextField(controller: emailController, hintText: "Email"),
                  const SizedBox(height: 15),
                  CustomTextField(controller: dobController, hintText: "DD / MM / YY"),
                  const SizedBox(height: 20),

                  // Student & Company Buttons (Bigger & 7E22FF)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Student",
                          onPressed: () {},
                          backgroundColor: Color.fromARGB(255, 126, 34, 255), // Updated color
                          textColor: Colors.white,
                          height: 70, // Bigger button
                          fontSize: 18, // Bigger text
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          text: "Company",
                          onPressed: () {},
                          backgroundColor: Color(0xFF7E22FF), // Updated color
                          textColor: Colors.white,
                          height: 70, // Bigger button
                          fontSize: 18, // Bigger text
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Terms & Conditions
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: "By continuing, you agree to ",
                          style: TextStyle(
                            color: Colors.black, // Black color
                            fontSize: 16.0, // Adjust the size for this part
                          ),
                        ),
                        TextSpan(
                          text: "Terms of Use ",
                          style: GoogleFonts.leagueSpartan(
                            color: Color(0xFF7E22FF), // Purple color
                            fontWeight: FontWeight.w600, // Medium weight
                            fontSize: 18.0, // Adjust the size for this part
                          ),
                        ),
                        TextSpan(
                          text: "and ",
                          style: TextStyle(
                            color: Colors.black, // Black color
                            fontSize: 16.0, // Adjust the size for this part
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: GoogleFonts.leagueSpartan(
                            color: Color(0xFF7E22FF), // Purple color
                            fontWeight: FontWeight.w600, // Medium weight
                            fontSize: 18.0, // Adjust the size for this part
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Sign Up Button
                  CustomButton(
                    text: "Sign Up",
                    onPressed: () {},
                    backgroundColor: Color.fromARGB(255, 126, 34, 255),
                    textColor: Colors.white,
                    height: 50, // Bigger button
                    fontSize: 18, // Bigger text
                  ),
                  const SizedBox(height: 20),

                  // Already have an account?
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black, // Black color
                            fontSize: 16.0, // Adjust the size for this part
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Log in",
                      style: GoogleFonts.leagueSpartan(
                        color: Color(0xFF7E22FF), // Purple color
                        fontWeight: FontWeight.w600, // Medium weight
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}






