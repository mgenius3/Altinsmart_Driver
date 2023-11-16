import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altinsmart_driver/ui/widget/input/checkbox.dart';
import 'package:altinsmart_driver/ui/widget/button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
          backgroundColor: secondaryColor,
          automaticallyImplyLeading: false,
          title: Image.asset("public/images/altinsmart_icon.png",
              width: 100, height: 100),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text("Welcome",
                    style: defaultTextStyle.copyWith(fontSize: 32),
                    textAlign: TextAlign.start),
                const SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: GestureDetector(
                      onTap: () {
                        context.push('/signup');
                      },
                      child: Row(children: [
                        SvgPicture.asset('public/images/svg/ellipse_white.svg'),
                        const SizedBox(width: 5),
                        Text(
                          "Create account.",
                          style: defaultTextStyle.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const SizedBox(width: 5),
                        Text("New to Smarbest?",
                            style:
                                defaultTextStyle.copyWith(color: Colors.white))
                      ]),
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('public/images/svg/ellipse.svg'),
                          const SizedBox(width: 20),
                          Text("Sign in.",
                              style: defaultTextStyle.copyWith(
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(width: 5),
                          Text("Already a customer"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter e-mail or phone number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: .5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: !isChecked,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: .5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style:
                                defaultTextStyle.copyWith(color: primaryColor),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CustomCheckbox(
                            value: isChecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Show password",
                            style: defaultTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          CustomCheckbox(
                            value: isChecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Keep me signed in",
                            style: defaultTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      CustomElevatedButton(onPressed: () {}, text: 'Sign in'),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'By continuing, you agree to Smartbest\'s. ',
                              style: defaultTextStyle.copyWith(fontSize: 10),
                            ),
                            TextSpan(
                              text: 'Conditions of use ',
                              style: defaultTextStyle.copyWith(
                                  fontSize: 10, color: specialColor),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: defaultTextStyle.copyWith(fontSize: 10),
                            ),
                            TextSpan(
                              text: 'Privacy Notice',
                              style: defaultTextStyle.copyWith(
                                  fontSize: 10, color: specialColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
