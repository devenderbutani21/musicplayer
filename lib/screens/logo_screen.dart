import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:musicapp/screens/music_screen.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: Future.delayed(
        const Duration(
          seconds: 4,
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MusicScreen();
        } else {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black54,
                    Colors.black87,
                  ]),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 180,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 320,
                    width: 320,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Listen to Your",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Favorite Music",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    const Center(
                      child: SpinKitRipple(
                        color: Colors.orange,
                        size: 180,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/play.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    ));
  }
}
