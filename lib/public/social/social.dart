import 'package:flutter/material.dart';
import 'package:landing_page/shared/build_context_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
    required this.title,
    required this.description,
    required this.label,
    required this.url,
  });

  final String title;
  final String description;
  final String label;
  final Uri url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: context.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              child: Text(
                label,
                style: context.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
