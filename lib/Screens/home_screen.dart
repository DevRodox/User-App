import 'package:flutter/material.dart';
import 'package:user_app/Screens/create_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inicio"), backgroundColor: Colors.blue),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, 
              foregroundColor: Colors.blueAccent, 
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 5,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));
            },
            child: const Text("Crear Perfil", style: TextStyle(fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
