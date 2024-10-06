import 'package:flutter/material.dart';
import 'package:landing_page/shared/build_context_extensions.dart';
import 'package:mesh/mesh.dart';

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
                child: OMeshGradient(
                  mesh: OMeshRect(
                    width: 5,
                    height: 2,
                    colorSpace: OMeshColorSpace.linear,
                    // fallbackColor: Instance of 'minified:Class677',
                    backgroundColor: null,
                    smoothColors: false,
                    vertices: [
                      (0.0, 0.0).v, (0.1, -0.16).v, (0.21, -0.22).v,
                      (0.69, -0.56).v, (1.0, 0.0).v, // Row 1
                      (0.0, 1.0).v, (0.25, 1.0).v, (0.5, 1.0).v, (1.13, 1.23).v,
                      (1.22, 0.19).v, // Row 2
                    ],
                    colors: const [
                      Color(0x0f0f0606), Color(0x0f0f0606),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 139, 230, 255),
                      Color.fromARGB(255, 220, 251, 255), // Row 1
                      Color.fromARGB(255, 96, 184, 243), null, null, null,
                      null, // Row 2
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SelectableText('By: Filipe using: omesh-playground.renan.gg'),
        ],
      ),
    );
  }
}
