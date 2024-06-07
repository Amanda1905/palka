import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/changeprofil.dart';
import 'package:lapka/agent/presentation/pages/changepw.dart';
import 'package:lapka/agent/presentation/pages/history_screen.dart';
import 'package:lapka/agent/presentation/pages/home_screen.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  int selectedIndex = 2;
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
                        radius: 50,
                        foregroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Amanda Putri',
                        style: semiboldwhitetext.copyWith(fontSize: 20),
                      ),
                    ]),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 12, 4),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Card(
                        child: Row(
                          children: [
                            const Icon(Icons.person_2_outlined),
                            const SizedBox(width: 50),
                            Text('Change Profil', style: mediumBlackTextStyle.copyWith(fontSize: 15)),
                            const SizedBox(width: 125),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => const Changeprofil(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                    Icons.arrow_forward_ios_outlined)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 60,
                      child: Card(
                        child: Row(
                          children: [
                            const Icon(Icons.lock_clock_outlined),
                            const SizedBox(width: 50),
                            Text('Change Password',
                                style: mediumBlackTextStyle.copyWith(fontSize: 15)),
                                const SizedBox(width: 85),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => const Changepw(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                    Icons.arrow_forward_ios_outlined)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 60,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.person),
                            const SizedBox(width: 50),
                            Text('Sign Out',
                            style: mediumBlackTextStyle.copyWith(fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 60,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.delete, color: Colors.red),
                            const SizedBox(width: 50),
                            Text('Delete Account',
                            style: mediumdeepredTextStyle.copyWith(fontSize: 15)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: deepblueColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  activeColor: Colors.white,
                  iconSize: 24,
                  backgroundColor: deepblueColor,
                  color: Colors.grey,
                  tabBackgroundColor: Colors.amber[700]!,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  textStyle: semiboldwhitetext,
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.history_rounded,
                      text: 'History',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profil',
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onTabChange: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                    switch (index) {
                      case 0:
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                        break;

                      case 1:
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryScreen(),
                          ),
                        );
                        break;

                      case 2:
                        Navigator.pushReplacement(
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
      ),
    );
  }
}
