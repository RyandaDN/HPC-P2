import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red, //Kurva
      body: SingleChildScrollView(
        //Scroll Dicrection
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: size.width,
                  height: size.height / 2,
                  color: Colors.red, //Persegi Panjang
                ),
                Positioned(
                  bottom: 10,
                  child: Image.asset(
                    'assets/images/Mc Delivery 1.png',
                    width: 200,
                    height: 300,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 2,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(100),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Login Now!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'E-Mail',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        // Untuk Area E-Mail dan Password
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide: BorderSide.none),
                          hintText: 'E-Mail',
                          filled: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Buat Buttom Pakai Elevated ataU Gesture Detector