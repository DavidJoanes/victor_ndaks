import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'dart:html';
import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        downloadFile("assets/cv/my_cv.pdf");
        // launchUrl(Uri.parse("data:application/octet-stream;base64,${base64Encode("assets/cv/KemdirimDavid.pdf")}"));
        // launchUrl(Uri.parse('https://drive.google.com/file/d/1HSIe7rdk8VtrAL4DQuybfMHQgDrQ6xNs/view?usp=sharing'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(color: Colors.greenAccent,offset: Offset(0, -1),blurRadius: 5),
              BoxShadow(color: Colors.deepOrange,offset: Offset(0, 1),blurRadius: 5),
            ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.greenAccent,
                Colors.deepOrange.shade900,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(FontAwesomeIcons.download,color: Colors.white70,size: 15,)

          ],
        ),
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = "My CV";
    anchorElement.click();
  }
}