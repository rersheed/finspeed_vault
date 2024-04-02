import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.obsecureText,
      required this.textController,
      required this.label});

  final bool obsecureText;
  final TextEditingController textController;
  final String label;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obsecureText;

  @override
  void initState() {
    super.initState();
    obsecureText = widget.obsecureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        controller: widget.textController,
        obscureText: obsecureText,
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: widget.obsecureText
              ? IconButton(
                  icon: Icon(
                    obsecureText ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.greyColor,
                  ),
                  onPressed: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
      ),
    );
  }
}
