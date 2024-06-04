import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/screens/logo_screen.dart';
import 'package:musicapp/screens/music_screen.dart';
import 'package:path_provider/path_provider.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      routes: {
        "/" : (context) => const LogoScreen(),
        "/music" : (context) => const MusicScreen(),
        "/logo" : (context) => const LogoScreen(),
      },
    ),
  );
}
