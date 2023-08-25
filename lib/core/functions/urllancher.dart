
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constance.dart';

void customlaunchurl(BuildContext context, String? urltext) async {
  if (urltext ==null) {
    customsnakbar(context: context,text:"Can't find the Link 🤦‍♂️");
  } else {
    Uri url = Uri.parse(urltext);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}


