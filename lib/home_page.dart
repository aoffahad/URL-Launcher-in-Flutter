import 'package:call_button_flutter/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final web = Uri.parse(
                  'https://bd.linkedin.com/in/aoffahad',
                );
                if (await canLaunchUrl(web)) {
                  launchUrl(web);
                } else {
                  throw 'Could not launch $web';
                }
              },
              child: const Text('Linkedin'),
            ),
            ElevatedButton(
              onPressed: () async {
                final email = Uri(
                  scheme: 'mailto',
                  path: 'aoffahad@gmail.com',
                  query: 'subject=Hello&body=Test',
                );
                if (await canLaunchUrl(email)) {
                  launchUrl(email);
                } else {
                  throw 'Could not launch $email';
                }
              },
              child: const Text('Email'),
            ),
            ButtonWidget(
              text: "Test",
              onPressedFunction: () async {
                final email = Uri(
                  scheme: 'mailto',
                  path: 'aoffahad@gmail.com',
                  query: 'subject=Hello&body=Test',
                );
                if (await canLaunchUrl(email)) {
                  launchUrl(email);
                } else {
                  throw 'Could not launch $email';
                }
              },
            ),
            ElevatedButton(
              onPressed: () async {
                final call = Uri.parse('tel:+880 1610182028');
                if (await canLaunchUrl(call)) {
                  launchUrl(call);
                } else {
                  throw 'Could not launch $call';
                }
              },
              child: const Text('Call'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
              ),
              onPressed: () async {
                final sms = Uri.parse('sms:01610182028');
                if (await canLaunchUrl(sms)) {
                  launchUrl(sms);
                } else {
                  throw 'Could not launch $sms';
                }
              },
              child: const Text('SMS'),
            ),
          ],
        ),
      ),
    );
  }
}
