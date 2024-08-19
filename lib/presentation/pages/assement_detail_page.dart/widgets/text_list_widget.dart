import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextListWidget extends StatelessWidget {
  final String text;

  const TextListWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: const Color(0xFF222E58),
            ),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
