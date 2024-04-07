import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});


  void signUserOut(){
      FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: IconButton(
            onPressed: signUserOut,icon: Icon(Icons.logout),
          ),
        ),
      ),
    );
  }
}