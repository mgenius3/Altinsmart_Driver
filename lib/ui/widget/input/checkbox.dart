import 'package:flutter/material.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
      child: Checkbox(
        value: widget.value,
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white;
          }
          return Colors.white;
        }),
        activeColor: primaryColor,
        checkColor: primaryColor,
        onChanged: widget.onChanged,
      ),
    );
  }
}
