import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/history_screen.dart';
import 'package:lapka/agent/presentation/pages/profil_screen.dart';
import 'package:lapka/agent/presentation/widget/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    'Welcome',
                    style: boldBlackTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Amanda Putri',
                    style: boldBlackTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
              const CircleAvatar(
                foregroundImage: AssetImage("assets/images/profile.png"),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(28),
                child: SizedBox(
                  height: 170,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/banner.png',
                      ),
                      const Text(
                        'make delivering your cargo easier and more practical',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text('data'),
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
