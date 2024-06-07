import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';
import 'package:lapka/agent/presentation/pages/profil_screen.dart';

class Changeprofil extends StatelessWidget {
  const Changeprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Change Profil", style: semiboldwhitetext.copyWith(fontSize: 18)),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
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
                    foregroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(height: 15),
                  Text('Amanda Putri', 
                  style: semiboldwhitetext.copyWith(fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                right: 18,
                left: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                  style: regularBlackTextStyle.copyWith(fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukan username baru',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text(
                    "Email",
                  style: regularBlackTextStyle.copyWith(fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukan email baru',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilScreen()));
                    }, 
                    style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            elevation: 8,
                            shadowColor: Colors.black,
                            backgroundColor: const Color(0xff5875DC),
                            minimumSize: const Size.fromHeight(45)),
                        child: Text(
                          "Save",
                          textAlign: TextAlign.center,
                          style: mediumWhiteTextStyle.copyWith(fontSize: 18),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}