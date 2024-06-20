import 'package:flutter/material.dart';
import 'styles/theme.dart';
import 'desktop.dart';
import 'mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'orange me',
      theme: theme(),
      home: Landing(),
    );
  }
}
class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1000) {
            return landingDesktop(context);
          } else {
            return landingMobile(context);
          }
        },
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return contactDesktop(context);
          } else {
            return contactMobile(context);
          }
        },
      ),
    );
  }
}

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return downloadDesktop(context);
          } else {
            return downloadMobile(context);
          }
        },
      ),
    );
  }
}