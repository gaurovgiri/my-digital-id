import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text("My ID Card"),
          // backgroundColor: Colors.red,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
              radius: 80, backgroundImage: AssetImage("assets/profile.jpg")),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              "Name:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Gaurav Giri",
              style: TextStyle(fontSize: 20),
            )
          ]),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text("Roll No:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(
              "Kan077Bct034",
              style: TextStyle(fontSize: 20),
            )
          ]),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              "DOB:\t",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Jun 15, 2023",
              style: TextStyle(fontSize: 20),
            )
          ]),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              "Website:\t",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                callToNumber(domain: "gauravgiri.com.np");
              },
              child: Text(
                "www.gauravgiri.com.np",
                style: TextStyle(fontSize: 20),
              ),
            )
          ]),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              "Contact:\t",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "gaurovgiri@gmail.com",
              style: TextStyle(fontSize: 20),
            )
          ]),
        ])));
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  callToNumber({required String domain}) async {
    String url = 'https://$domain';

    try {
      launchUrl(Uri.parse(url));
    } catch (e) {
      print("Could not launch url");
    }
  }
}
