import 'package:flutter/material.dart';
import 'package:orangemeweb/styles/constants.dart';
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
      color: AppColors.background,
      initialRoute: '/#/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case "/":
            return PageRouteBuilder(
                settings: const RouteSettings(name: '/'),
                pageBuilder: (_, __, ___) => const Landing(),
                transitionDuration: const Duration(seconds: 0));
          case "/download":
            return PageRouteBuilder(
                settings: const RouteSettings(name: '/download'),
                pageBuilder: (_, __, ___) => const Download(),
                transitionDuration: const Duration(seconds: 0));
          case "/privacy-policy":
            return PageRouteBuilder(
                settings: const RouteSettings(name: '/privacy-policy'),
                pageBuilder: (_, __, ___) => const PrivacyPolicy(),
                transitionDuration: const Duration(seconds: 0));
          case "/contact":
            return PageRouteBuilder(
                settings: const RouteSettings(name: '/contact'),
                pageBuilder: (_, __, ___) => const Contact(),
                transitionDuration: const Duration(seconds: 0));
          default:
            return PageRouteBuilder(
                settings: const RouteSettings(name: '/'),
                pageBuilder: (_, __, ___) => const Landing(),
                transitionDuration: const Duration(seconds: 0));
        }
      },
      debugShowCheckedModeBanner: false,
      title: 'orange me',
      theme: theme(),
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
          if (constraints.maxWidth > 900) {
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
          if (constraints.maxWidth > 900) {
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
          if (constraints.maxWidth > 900) {
            return downloadDesktop(context);
          } else {
            return downloadMobile(context);
          }
        },
      ),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 900) {
            return privacyPolicyDesktop(context);
          } else {
            return privacyPolicyMobile(context);
          }
        },
      ),
    );
  }
}
