import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/pages/airbersih_screen.dart';
import 'package:lapka/agent/presentation/pages/labuh_screen.dart';
import 'package:lapka/agent/presentation/pages/tambat_screen.dart';
import 'package:lapka/agent/presentation/pages/yatch_screen.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class ListServiceWidget extends StatelessWidget {
  const ListServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LabuhScreen(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Labuh',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TambatScreen(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Tambat',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const YatchScreen(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Josa Yatch',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AirbersihScreen(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Air Bersih',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}