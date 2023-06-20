import 'package:flutter/material.dart';
import 'package:landing_page/public/community/community_space.dart';
import 'package:landing_page/public/home/join_community.dart';
import 'package:landing_page/public/social/social_content.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
      return const HomeDesktopView();
    }
    return const HomeMobileView();
  }
}

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 500,
                  child: Image.asset('images/flutter_pt_hz.png'),
                ),
                const SizedBox(height: 42),
                const CommunitySpace(),
                const SizedBox(height: 42),
                const JoinCommunity(),
                const SocialContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 500,
                child: Image.asset('images/flutter_pt_hz.png'),
              ),
              const SizedBox(height: 42),

              /// Community picked
              const CommunitySpace(),
              const SizedBox(height: 42),
              const JoinCommunity(),
              const SocialContent(),
            ],
          ),
        ),
      ),
    );
  }
}
