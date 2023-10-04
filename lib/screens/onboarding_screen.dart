import 'package:flutter/material.dart';
import 'package:justduit/screens/form_screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FB),
      body: Column(
        children: [
          // Bagian atas dengan gambar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40.0), // Atur padding di atas gambar
              child: Image.asset("assets/images/shop.png"),
            ),
          ),
          // Bagian tengah dengan teks dan tombol
          SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 62, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0), // Atur borderRadius
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      "Let’s start the journey",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormScreen()));
                    },
                    child: Text("Gabung Sekarang"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
