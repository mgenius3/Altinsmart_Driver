import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altinsmart_driver/ui/widget/button.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screen_height * 0.95,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'public/images/svg/arrow_back.svg',
                    ),
                  ),
                  const SizedBox(height: 10),
                  SvgPicture.asset('public/images/svg/privacy.svg'),
                  const SizedBox(height: 20),
                  Text(
                    "Accept SmartBest Terms & Review Privacy Policy",
                    style: defaultTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w500, height: 1.4),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'By selecting “I Agree” Below, I have reviewed and agree to the ',
                          style: defaultTextStyle.copyWith(fontSize: 10),
                        ),
                        TextSpan(
                          text: 'Terms of use ',
                          style: defaultTextStyle.copyWith(
                              fontSize: 10, color: primaryColor),
                        ),
                        TextSpan(
                          text: 'and acknowledge the ',
                          style: defaultTextStyle.copyWith(fontSize: 10),
                        ),
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: defaultTextStyle.copyWith(
                              fontSize: 10, color: primaryColor),
                        ),
                        TextSpan(
                          text: 'I am at least 18 years of age.',
                          style: defaultTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Colors.black;
                            }
                            return Colors.black;
                          }),
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                          onChanged: null,
                        ),
                        Text("I Agree")
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                      onPressed: () {
                        context.push("/videntity");
                      },
                      text: 'Submit')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
