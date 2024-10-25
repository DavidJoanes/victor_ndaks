import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse('https://wa.me/08035956657'));
        },
        borderRadius: BorderRadius.circular(defaultPadding +10),
        child: const Icon(FontAwesomeIcons.whatsapp,color: Colors.greenAccent,size: 15,),
      ),
    );
  }
}
