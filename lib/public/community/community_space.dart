import 'package:flutter/material.dart';
import 'package:landing_page/shared/build_context_extensions.dart';

class CommunitySpace extends StatelessWidget {
  const CommunitySpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.primary),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Card(
              child: Center(
                child: Text(
                  '🚧 Community Block 🚧\nLearn about this space at our Discord.',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge,
                ),
              ),
            ),
          ),
          const Text('By: TBA'),
        ],
      ),
    );
  }
}
