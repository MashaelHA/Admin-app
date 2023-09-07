// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../constants/themeColor.dart';

class OtpVerificationPage extends StatelessWidget {
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
            Column(
              children: [
                Text("OTP Verification",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: GreenPrimaryColor,
                      fontFamily: 'Roboto',
                    )),
                SizedBox(
                    child: Image.asset(
                  'assets/LogoWhite.jpg',
                  width: 381.191162109375,
                  height: 322,
                )),
                Text("We will send you one time password this email.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: GreenPrimaryColor,
                      fontFamily: 'Roboto',
                    )),
                Text("( barberadmin@gmail.com )",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: GreenPrimaryColor,
                      fontFamily: 'Roboto',
                    )),
                SizedBox(
                  height: 30,
                ),
                // SizedBox(
                //   width: 380,
                //   height: 150,
                //   child: Container(
                //     width: 50,
                //     height: 50,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: WhiteTittileColor),
                //   ),
                // ),
                // SizedBox(
                //   width: 300,
                //   height: 150,
                //   child: Container(
                //     width: 50,
                //     height: 50,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: WhiteTittileColor),
                //   ),
                // ),
                // SizedBox(
                //   width: 380,
                //   height: 150,
                //   child: Container(
                //       width: 50,
                //       height: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //           color: WhiteTittileColor)),
                // ),
                // SizedBox(
                //   width: 380,
                //   height: 150,
                //   child: Container(
                //       width: 50,
                //       height: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //           color: WhiteTittileColor)),
                // ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 400,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 143),
                        decoration: ShapeDecoration(
                          color: GreenPrimaryColor,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: YellowPrimaryColor),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: YellowPrimaryColor,
                                fontSize: 19,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w500,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
