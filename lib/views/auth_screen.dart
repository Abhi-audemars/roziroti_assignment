import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roziroti_assignment/utils/utils.dart';
import 'package:roziroti_assignment/views/bottom_bar.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
//google
  final String a =
      'https://cdn.dribbble.com/users/904380/screenshots/2233565/revised-google-logo_still_2x.gif?resize=400x300&vertical=center'; //face
  final String fa =
      'https://images.hindustantimes.com/tech/img/2023/09/21/1600x900/fb_1695273515215_1695273522698.jpg';
  //aple
  final String apple =
      'https://media.designrush.com/inspiration_images/134802/conversions/_1511456315_653_apple-preview.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create your Account',
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
                  filled: true,
                  fillColor: const Color.fromARGB(86, 198, 197, 197),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.mail_rounded),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
                  filled: true,
                  fillColor: const Color.fromARGB(86, 198, 197, 197),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.lock_rounded),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(
                    'Remember me',
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.black),
                  )
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => BottomBar()),
                    (route) => false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(MediaQuery.of(context).size.width, 45),
                ),
                child: Text(
                  'Sign up',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('-------------'),
                  Text(
                    'or continue with',
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                  ),
                  Text('-------------'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButtons(imageUrl: fa),
                  SocialButtons(imageUrl: a),
                  SocialButtons(imageUrl: apple),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      ' Sign in',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
