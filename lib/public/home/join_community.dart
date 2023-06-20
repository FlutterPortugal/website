import 'package:flutter/material.dart';
import 'package:landing_page/shared/build_context_extensions.dart';

class JoinCommunity extends StatelessWidget {
  const JoinCommunity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Join the Community!',
      style: context.textTheme.displaySmall,
    );
  }
}
