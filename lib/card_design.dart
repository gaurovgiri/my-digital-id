import 'package:digital_card/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'core/constants/app_styles.dart';
import 'core/constants/strings.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text(Strings.appName),
          // backgroundColor: Colors.red,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
              radius: 80, backgroundImage: AssetImage(AppImages.profilePic)),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(Strings.name, style: AppStyles.mainHeading),
            Text(
              Strings.nameValue,
              style: AppStyles.subHeading,
            )
          ]),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(Strings.rollNo, style: AppStyles.mainHeading),
            Text(
              Strings.rollNoValue,
              style: AppStyles.subHeading,
            )
          ]),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              Strings.dob,
              style: AppStyles.mainHeading,
            ),
            Text(
              Strings.dobValue,
              style: AppStyles.subHeading,
            )
          ]),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              Strings.website,
              style: AppStyles.mainHeading,
            ),
            GestureDetector(
              onTap: () {
                callToNumber(domain: Strings.websiteValue);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.web,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    Strings.websiteValue,
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            )
          ]),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              Strings.contact,
              style: AppStyles.mainHeading,
            ),
            Text(
              Strings.contactValue,
              style: AppStyles.subHeading,
            )
          ]),
        ])));
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
