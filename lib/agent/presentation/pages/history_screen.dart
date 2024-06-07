import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/airbersih_screen.dart';
import 'package:lapka/agent/presentation/pages/home_screen.dart';
import 'package:lapka/agent/presentation/pages/labuh_screen.dart';
import 'package:lapka/agent/presentation/pages/profil_screen.dart';
import 'package:lapka/agent/presentation/pages/tambat_screen.dart';
import 'package:lapka/agent/presentation/pages/yatch_screen.dart';
import 'package:lapka/agent/presentation/constant/history_list.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int selectedIndex = 1;
  bool isLayananSelected = true;
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
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.amber,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: !isLayananSelected
                                ? null
                                : () {
                                    setState(() {
                                      isLayananSelected = true;
                                    });
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => const LabuhScreen(),
                                      ),
                                    );
                                  },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              elevation: isLayananSelected ? 8 : 0,
                              shadowColor: Colors.white,
                              backgroundColor: isLayananSelected
                                  ? deepblueColor
                                  : deepblueColor, // Ganti dengan warna yang lebih transparan
                              minimumSize: const Size(25, 25),
                            ),
                            child: Text(
                              'Labuh',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          ElevatedButton(
                            onPressed: !isLayananSelected
                                ? null
                                : () {
                                    setState(() {
                                      isLayananSelected = true;
                                    });
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => const TambatScreen(),
                                      ),
                                    );//route
                                  },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              elevation: !isLayananSelected ? 8 : 0,
                              shadowColor: Colors.white,
                              backgroundColor: !isLayananSelected
                                  ? deepblueColor
                                  : deepblueColor.withOpacity(0.5),
                              minimumSize: const Size(25, 25),
                            ),
                            child: Text(
                              'Tambat',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          ElevatedButton(
                            onPressed: !isLayananSelected
                                ? null
                                : () {
                                    setState(() {
                                      isLayananSelected = true;
                                    });
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => const YatchScreen(),
                                      ),
                                    );//route
                                  },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              elevation: !isLayananSelected ? 8 : 0,
                              shadowColor: Colors.white,
                              backgroundColor: !isLayananSelected
                                  ? deepblueColor
                                  : deepblueColor.withOpacity(0.5),
                              minimumSize: const Size(25, 25),
                            ),
                            child: Text(
                              'Yatch',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          ElevatedButton(
                            onPressed: !isLayananSelected
                                ? null
                                : () {
                                    setState(() {
                                      isLayananSelected = true;
                                    });
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => const AirbersihScreen(),
                                      ),
                                    );//route
                                  },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              elevation: !isLayananSelected ? 8 : 0,
                              shadowColor: Colors.white,
                              backgroundColor: !isLayananSelected
                                  ? deepblueColor
                                  : deepblueColor.withOpacity(0.5),
                              minimumSize: const Size(25, 25),
                            ),
                            child: Text(
                              'Air Bersih',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                        ],
                      ),
                    ),
                    ]
                  ),
                ),
                const SizedBox(height: 25),
                ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(height: 18),
                  itemBuilder: (context, index) => const HistoryList(),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
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
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
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
