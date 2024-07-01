import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/history_airbersih.dart';
import 'package:lapka/agent/presentation/pages/history_labuh.dart';
import 'package:lapka/agent/presentation/pages/history_yatch.dart';
import 'package:lapka/agent/presentation/pages/home_screen.dart';
import 'package:lapka/agent/presentation/pages/profil_screen.dart';
import 'package:lapka/agent/presentation/constant/history_list.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class HistoryTambat extends StatefulWidget {
  const HistoryTambat({super.key});

  @override
  State<HistoryTambat> createState() => _HistoryTambatState();
}

class _HistoryTambatState extends State<HistoryTambat> {
  int selectedIndex = 1;
  int selectedButtonIndex = 1;

  // ListView.separated<JasaLabuhDatum> jasalabuhdatum = [];
  // bool isloading = false;

  // Future<void> refreshData() async {
  //   setState(() {
  //     isloading = true;
  //   });
  //   final result = await LabuhRemote().getAll();
  //   jasalabuhdatum = result.data;
  //   setState(() {
  //     isloading = false;
  //   });
  // }

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
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
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
                              onPressed: () {
                                setState(() {
                                  selectedButtonIndex = 0;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HistoryLabuh(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                elevation: selectedButtonIndex == 0 ? 8 : 0,
                                shadowColor: Colors.white,
                                backgroundColor: selectedButtonIndex == 0
                                    ? deepblueColor
                                    : deepblueColor.withOpacity(0.5),
                                minimumSize: const Size(25, 25),
                              ),
                              child: Text(
                                'Labuh',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 9,
                                    color: selectedButtonIndex == 0
                                        ? Colors.white
                                        : Colors.white60,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedButtonIndex = 1;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HistoryTambat(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                elevation: selectedButtonIndex == 1 ? 8 : 0,
                                shadowColor: Colors.white,
                                backgroundColor: selectedButtonIndex == 1
                                    ? deepblueColor
                                    : deepblueColor.withOpacity(0.5),
                                minimumSize: const Size(25, 25),
                              ),
                              child: Text(
                                'Tambat',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 9,
                                    color: selectedButtonIndex == 1
                                        ? Colors.white
                                        : Colors.white60,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedButtonIndex = 2;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HistoryYatch(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                elevation: selectedButtonIndex == 2 ? 8 : 0,
                                shadowColor: Colors.white,
                                backgroundColor: selectedButtonIndex == 2
                                    ? deepblueColor
                                    : deepblueColor.withOpacity(0.5),
                                minimumSize: const Size(25, 25),
                              ),
                              child: Text(
                                'Yatch',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 9,
                                    color: selectedButtonIndex == 2
                                        ? Colors.white
                                        : Colors.white60,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedButtonIndex = 3;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HistoryAirbersih(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                elevation: selectedButtonIndex == 3 ? 8 : 0,
                                shadowColor: Colors.white,
                                backgroundColor: selectedButtonIndex == 3
                                    ? deepblueColor
                                    : deepblueColor.withOpacity(0.5),
                                minimumSize: const Size(25, 25),
                              ),
                              child: Text(
                                'Air Bersih',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 9,
                                    color: selectedButtonIndex == 3
                                        ? Colors.white
                                        : Colors.white60,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 18),
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
                            builder: (context) => const HistoryLabuh(),
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
