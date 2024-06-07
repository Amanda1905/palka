import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/pages/detailhistory.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const Detailhistory(),
              )
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: deepblueColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.amber,
                    ),
                    const SizedBox(width: 8),
                    Text('Josephine', style: semiboldwhitetext.copyWith(fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 18),
                Text('Admin', style: regularwhitetext.copyWith(fontSize: 12)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, color: Colors.white),
                    const SizedBox(width: 8),
                    Text('Dalam Negri', style: regularwhitetext.copyWith(fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 8),
                Text('123', style: regularwhitetext.copyWith(fontSize: 12)),
                const SizedBox(height: 8),
                Text('GT 100', style: regularwhitetext.copyWith(fontSize: 12)),
          
              ],
            ),
          ),
        ),
      ],
    );
  }
}