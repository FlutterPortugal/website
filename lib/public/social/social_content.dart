import 'package:flutter/material.dart';
import 'package:landing_page/shared/constants.dart';
import 'package:landing_page/public/social/social.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SocialContent extends StatelessWidget {
  const SocialContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final items = socials.map<Social>(
      (social) {
        return Social(
          title: social.title,
          description: social.description,
          label: social.label,
          url: Uri.https(
            social.url.host,
            social.url.path,
          ),
        );
      },
    ).toList();

    return isDesktop
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items,
          )
        : Column(
            children: items,
          );
  }
}
