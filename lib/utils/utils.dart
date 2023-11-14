// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  final String imageUrl;
  const SocialButtons({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12)),
      child: Image.network(
        imageUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
