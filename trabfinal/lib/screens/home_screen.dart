import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trabfinal/screens/audio_screen.dart';
import 'package:trabfinal/screens/camera_screen.dart';
import 'package:trabfinal/services/firebase_messaging_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final firebaseMessaging = FireBaseMessagingService();
    firebaseMessaging.setNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => CameraScreen());
                  Navigator.push(context, route);
                },
                child: Text("Tirar Foto")),
            ElevatedButton(
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => AudioComponent(File("sdas")));
                  Navigator.push(context, route);
                },
                child: Text("Gravar um Áudio."))
          ],
        ),
      ),
    );
  }
}
