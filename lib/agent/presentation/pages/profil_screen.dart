import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lapka/agent/presentation/pages/changeprofil.dart';
import 'package:lapka/agent/presentation/pages/changepw.dart';
import 'package:lapka/agent/presentation/pages/history_labuh.dart';
import 'package:lapka/agent/presentation/pages/home_screen.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';
import 'package:lapka/agent/presentation/pages/login_screen.dart';

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
                      foregroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Amanda Putri',
                      style: semiboldwhitetext.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 12, 4),
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.person_2_outlined),
                        title: Text(
                          'Change Profil',
                          style: mediumBlackTextStyle.copyWith(fontSize: 15),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Changeprofil(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.lock_clock_outlined),
                        title: Text(
                          'Change Password',
                          style: mediumBlackTextStyle.copyWith(fontSize: 15),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Changepw(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(
                          'Sign Out',
                          style: mediumBlackTextStyle.copyWith(fontSize: 15),
                        ),
                        onTap: () async {
                          bool confirm = false;
                          await showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(30.0),
                                child: Wrap(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sign Out",
                                            style: boldBlackTextStyle.copyWith(
                                                fontSize: 15),
                                          ),
                                          const SizedBox(height: 20),
                                          Text(
                                            'Are you sure you want to sign out?',
                                            style: regularBlackTextStyle
                                                .copyWith(fontSize: 15),
                                          ),
                                          const SizedBox(height: 20),
                                          Image.asset("assets/images/out.png"),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xff5875DC),
                                              shadowColor: Colors.black,
                                            ),
                                            onPressed: () {
                                              confirm = true;
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginScreen(),
                                                  ));
                                            },
                                            child: Text("Yes",
                                                style: mediumWhiteTextStyle
                                                    .copyWith(fontSize: 15)),
                                          ),
                                          const SizedBox(height: 15),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("No",
                                                style: mediumBlackTextStyle
                                                    .copyWith(fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                          if (confirm) {
                            print("Confirmed!");
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.delete, color: Colors.red),
                        title: Text(
                          'Delete Account',
                          style: mediumdeepredTextStyle.copyWith(fontSize: 15),
                        ),
                        onTap: () async {
                          bool confirm = false;
                          await showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(30.0),
                                child: Wrap(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("Delete Account",
                                              style: boldBlackTextStyle
                                                  .copyWith(fontSize: 15)),
                                          const SizedBox(height: 20),
                                          Text(
                                            'Are you sure you want to delete this account?',
                                            style: mediumBlackTextStyle
                                                .copyWith(fontSize: 15),
                                                textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 20),
                                          Image.asset(
                                              "assets/images/delete.png"),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xff5875DC),
                                              shadowColor: Colors.black,
                                            ),
                                            onPressed: () {
                                              confirm = true;
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginScreen(),
                                                  ));
                                            },
                                            child: Text("Yes",
                                                style: mediumWhiteTextStyle
                                                    .copyWith(fontSize: 15)),
                                          ),
                                          const SizedBox(height: 15),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "No",
                                              style: mediumBlackTextStyle
                                                  .copyWith(fontSize: 15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                          if (confirm) {
                            print("Account Deleted!");
                          }
                        },
                      ),
                    ),
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
              ),
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
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
