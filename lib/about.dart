import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:android_intent/android_intent.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'data.dart';

final Uri urlGit = Uri.parse('https://github.com/kshitijv256');
final Uri urlIn = Uri.parse('https://www.linkedin.com/in/kshitijv256/');
final Uri urlMail = Uri.parse('mailto:kshitijv250@gmail.com?subject=Hello');
final Uri urlIG = Uri.parse('https://www.instagram.com/kshitij.v256/');
final Uri urlWA =
    Uri.parse('https://wa.me/919540794038'); // https://wa.me/919540794038

const iconSize = 40.0;

Future<void> _launchURL(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

_openWhatsapp(url) async {
  bool isInstalled = await DeviceApps.isAppInstalled('com.whatsapp');
  if (isInstalled != false) {
    AndroidIntent intent = AndroidIntent(action: 'action_view', data: url);
    await intent.launch();
  } else {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  static const pageid = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme[pageid]![0].withOpacity(0.6),
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                // material design
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(200),
                    ),
                    color: colorScheme[pageid]![2],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[pageid]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150),
                  ),
                  color: colorScheme[pageid]![1],
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme[pageid]![3],
                      blurRadius: 50,
                      spreadRadius: -12,
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: colorScheme[pageid]![0],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[pageid]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 210,
                ),
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: colorScheme[pageid]![1],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme[pageid]![3],
                      blurRadius: 50,
                      spreadRadius: -12,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: colorScheme[pageid]![2],
                  radius: 120,
                ),
              ),
              CircleAvatar(
                backgroundColor: colorScheme[pageid]![1],
                backgroundImage: const AssetImage('assets/images/profile.jpg'),
                radius: 105,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Creator',
                style: TextStyle(
                  fontSize: 24,
                  color: colorScheme[pageid]![3],
                ),
              ),
              Text(
                'Kshitij Verma',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: colorScheme[pageid]![1],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  SocialIconsFlutter.github,
                  color: colorScheme[pageid]![2],
                  size: iconSize,
                ),
                onPressed: () {
                  _launchURL(urlGit);
                },
              ),
              IconButton(
                icon: Icon(
                  SocialIconsFlutter.linkedin,
                  color: colorScheme[pageid]![2],
                  size: iconSize,
                ),
                onPressed: () {
                  _launchURL(urlIn);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.whatsapp,
                  color: colorScheme[pageid]![2],
                  size: iconSize,
                ),
                onPressed: () {
                  _openWhatsapp(urlWA);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.email,
                  color: colorScheme[pageid]![2],
                  size: iconSize,
                ),
                onPressed: () {
                  _launchURL(urlMail);
                },
              ),
              IconButton(
                icon: Icon(
                  SocialIconsFlutter.instagram,
                  color: colorScheme[pageid]![2],
                  size: iconSize,
                ),
                onPressed: () {
                  _launchURL(urlIG);
                },
              ),
            ],
          ),
          Container(
            height: 100,
          ),
        ],
      ),
    );
  }
}
