import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logged in as " + user.email!),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MaterialButton(
                child: Text(
                  "Log out",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: Colors.red[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
