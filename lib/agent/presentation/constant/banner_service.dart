import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class Bannerservice extends StatelessWidget {
  const Bannerservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: deepblueColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Text(
                "Come on, send your cargo with our international shipping",
                style: semiboldwhitetext,
              ),
            ),
          ),
          Image.asset(
            "assets/images/bannerservice.png",
          ),
        ],
      ),
    );
  }
}