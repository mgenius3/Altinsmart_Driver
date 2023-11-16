import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altinsmart_driver/ui/widget/button.dart';
import 'package:altinsmart_driver/ui/widget/camera.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
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
            children: [
              Column(
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
                                    color: primaryColor,
                                    borderRadius: BorderRadius.only()),
                              ),
                              Container(
                                width: screen_width * 0.2,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: primaryColor,
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
                  Column(
                    children: [
                      Text(
                        "Verify Identify",
                        style: defaultTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "position your bare face clearly in the camera No face mask or glasses",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: const LiveImagePreview()),
              CustomElevatedButton(
                  onPressed: () {
                    context.push("/ppolicy");
                  },
                  text: 'Finish Setup')
            ],
          ),
        ),
      ),
    );
  }
}
