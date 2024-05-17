import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/widget/theme.dart';

class LabuhScreen extends StatefulWidget {
  const LabuhScreen({super.key});

  @override
  State<LabuhScreen> createState() => _LabuhScreenState();
}

class _LabuhScreenState extends State<LabuhScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jasa Labuh',
                  style: boldBlackTextStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            const CircleAvatar(
              foregroundImage: AssetImage("assets/images/profile.png"),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      )
      ),
    );
  }
}