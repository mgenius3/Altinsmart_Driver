import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altinsmart_driver/ui/widget/button.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                              'public/images/svg/arrow_back.svg',
                            ),
                          ),
                          Row(children: [
                            Container(
                              width: screen_width * 0.2,
                              height: 10,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                            ),
                            Container(
                              width: screen_width * 0.2,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: greyColor.withOpacity(0.7),
                                  borderRadius: BorderRadius.only()),
                            ),
                            Container(
                              width: screen_width * 0.2,
                              height: 10,
                              decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.7),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            )
                          ]),
                          Text('')
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Personal Details",
                  style: defaultTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First Name",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: 'Enter e-mail or phone number',
                                    prefixIcon: Icon(Icons.person_2),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Last Name",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: 'Mount',
                                    prefixIcon: Icon(Icons.person_2),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone Number",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: '08134460259',
                                    prefixIcon: Icon(Icons.phone_iphone),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: 'benmos16@gmail.com',
                                    prefixIcon: Icon(Icons.alternate_email),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Next of kin Name",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: 'Mark James',
                                    prefixIcon: Icon(Icons.person_outline),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Next of Kin Phone Number",
                                style: defaultTextStyle.copyWith(
                                    color: Color(0XFF868686))),
                            const SizedBox(height: 10),
                            TextField(
                                decoration: InputDecoration(
                                    labelText: '08134460259',
                                    prefixIcon: Icon(Icons.phone_iphone),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: .5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    )))
                          ]),
                      const SizedBox(height: 20),
                      CustomElevatedButton(
                          onPressed: () {
                            context.push("/tdetails");
                          },
                          text: 'Continue'),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
