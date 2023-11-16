import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altinsmart_driver/ui/widget/button.dart';

class TransportDetails extends StatefulWidget {
  const TransportDetails({super.key});

  @override
  State<TransportDetails> createState() => _TransportDetailsState();
}

class _TransportDetailsState extends State<TransportDetails> {
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
            // crossAxisAlignment: CrossAxisAlignment.,
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
                            // SvgPicture.asset(
                            //   'public/images/svg/arrow_back.svg',
                            // ),
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
                  Column(
                    children: [
                      Text(
                        "Transport Details",
                        style: defaultTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Open your camera to snap your driver's license",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vehicle Type",
                              style: defaultTextStyle.copyWith(
                                  color: Color(0XFF868686))),
                          const SizedBox(height: 10),
                          DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelText: 'Transportation type',
                                prefixIcon: SvgPicture.asset(
                                  'public/images/svg/car.svg',
                                  width: 10,
                                  height: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: .5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                ),
                              ),
                              items: [
                                DropdownMenuItem(
                                    child: Row(
                                      children: [Text("Taxi Rider")],
                                    ),
                                    value: "Taxi"),
                                DropdownMenuItem(
                                    child:
                                        Row(children: [Text("Dispatch Rider")]),
                                    value: "Bike")
                              ],
                              onChanged: (String? value) {
                                setState(
                                  () {
                                    // ride = value;
                                  },
                                );
                              }),
                        ]),
                    const SizedBox(height: 40),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Plate Number",
                              style: defaultTextStyle.copyWith(
                                  color: Color(0XFF868686))),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'LAG -234-JK',
                              prefixIcon: SvgPicture.asset(
                                  'public/images/svg/plate_no.svg',
                                  fit: BoxFit.contain),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: .5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          )
                        ]),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              CustomElevatedButton(
                  onPressed: () {
                    context.push("/videntity");
                  },
                  text: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
