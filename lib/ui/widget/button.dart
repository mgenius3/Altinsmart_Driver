import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final double width;

  const CustomElevatedButton(
      {Key? key, required this.onPressed, required this.text, this.width = 0.0})
      : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width != 0.0 ? widget.width : double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: primaryColor,
      ),
      child: MaterialButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: defaultTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
