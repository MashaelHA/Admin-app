// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../../constants/themeColor.dart';
import './otp_verification_page.dart';

class AuthenticationPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(child: Image.asset('assets/LogoWhite.jpg')),
            SizedBox(
              width: 380,
              height: 25,
              child: Text(
                'Email',
                style: TextStyle(
                  color: GreenPrimaryColor,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 400,
              decoration: ShapeDecoration(
                color: WhiteTittileColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: GreenPrimaryColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(
                  color: GreenPrimaryColor,
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.all(10.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 380,
              height: 25,
              child: Text(
                'Password',
                style: TextStyle(
                  color: GreenPrimaryColor,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 400,
              decoration: ShapeDecoration(
                color: WhiteTittileColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: GreenPrimaryColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(
                  color: GreenPrimaryColor,
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.all(10.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Container(
            //   width: 400,
            //   decoration: ShapeDecoration(
            //     color: GreenPrimaryColor,
            //     shape: RoundedRectangleBorder(
            //       side: BorderSide(width: 0.50, color: YellowPrimaryColor),
            //       borderRadius: BorderRadius.circular(40),
            //     ),
            //   ),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       padding: EdgeInsets.all(10.0),
            //       backgroundColor: GreenPrimaryColor, // Button color
            //     ),
            //     onPressed: () {},
            //     child: Text(
            //       'LOGIN',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: YellowPrimaryColor,
            //         fontSize: 16,
            //         fontFamily: 'Outfit',
            //         fontWeight: FontWeight.w500,
            //         height: 2.5,
            //       ),
            //     ),
            //   ),
            // ),

            GestureDetector(
              onTap: () {
                // Navigate to the OTP verification page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OtpVerificationPage(), // Instantiate the new page
                  ),
                );
              },
              child: Container(
                width: 400,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 143),
                decoration: ShapeDecoration(
                  color: GreenPrimaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: YellowPrimaryColor),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: YellowPrimaryColor,
                        fontSize: 16,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                        height: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
