import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Connect with Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('support@example.com'),
              onTap: () {
                // open email app with pre-filled fields
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+977 9848564540'),
              onTap: () {
                // call phone number
              },
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('Website'),
              subtitle: Text('anishsubedi599@gmail.com'),
              onTap: () {},
            ),
            SizedBox(height: 32),
            Text(
              'Follow Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('Facebook'),
              subtitle: Text('facebook.com/example'),
              onTap: () async {
                if (await canLaunch(
                    "https://www.facebook.com/anish.subedi.372")) {
                  await launch("https://www.facebook.com/anish.subedi.372");
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Twitter'),
              subtitle: Text('twitter.com/example'),
              onTap: () async {
                if (await canLaunch("https://twitter.com/OSCARREBEL3")) {
                  await launch("https://twitter.com/OSCARREBEL3");
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Instagram'),
              subtitle: Text('instagram.com/example'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}