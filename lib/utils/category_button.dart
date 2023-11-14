// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  IconData icon;
  String text;
  Category({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromARGB(44, 182, 181, 181)),
          child: Icon(
            icon,
            size: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
