import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/history_screen.dart';
import 'package:lapka/agent/presentation/pages/home_screen.dart';
import 'package:lapka/agent/presentation/widget/theme.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: deepblueColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      foregroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    Text( 
                      'Amanda Putri',
                      style: semiboldwhitetext.copyWith(fontSize: 22),
                    ),
                  ]
              ),
              ),
            ],
        ),
        
        
      ),

      bottomNavigationBar: Container(
          color: Colors.blue.shade900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
                backgroundColor: Colors.blue.shade900,
                color: Colors.white,
                activeColor: Colors.black,
                tabBackgroundColor: Colors.yellowAccent.shade700,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.history,
                    text: 'History',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profil',
                  ),
                ],
                onTabChange: (int index) {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                      break;

                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HistoryScreen(),
                        ),
                      );
                      break;

                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilScreen(),
                        ),
                      );
                      break;
                  }
                }),
          ),
        ),
      ),
    );
  }
}