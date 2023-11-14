import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roziroti_assignment/utils/profile_items.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person_3_outlined),
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://i.pinimg.com/736x/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg',
                  height: 90,
                  width: 90,
                ),
              ),
              Text(
                'Andrew Ainsley',
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '+1 1121212333',
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 20),
              Container(
                height: 2,
                color: Colors.black12,
              ),
              const SizedBox(height: 20),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
              ProfileItems(text: 'Edit Profile', icon: Icons.person_3),
            ],
          ),
        ),
      ),
    );
  }
}
