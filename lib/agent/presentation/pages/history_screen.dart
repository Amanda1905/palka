import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/widget/theme.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                  'History',
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
      ),
    );
  }
}