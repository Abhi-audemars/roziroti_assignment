// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileItems extends StatelessWidget {
  String text;
  IconData icon;
  ProfileItems({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 13),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
