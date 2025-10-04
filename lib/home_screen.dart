import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF315B64),
        title: const Text("Home"),
      ),
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
        ),
        child: Drawer(
          backgroundColor: const Color(0xFF315B64),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Profile Section
                const CircleAvatar(
                  radius: 40,
                  /*backgroundColor: Colors.white54,
                  child: Text(
                    "K",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315B64),
                    ),
                  ),*/
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
                const SizedBox(height: 10),
                Text(
                  "Deepak",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "22EBKCS037",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),

                // Menu Items
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      buildMenuItem(
                        icon: Icons.home,
                        text: "Home",
                        isActive: true,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      buildMenuItem(
                        icon: Icons.calendar_today,
                        text: "Calendar",
                        onTap: () {},
                      ),
                      buildMenuItem(
                        icon: Icons.folder,
                        text: "Resources",
                        onTap: () {},
                      ),
                      buildMenuItem(
                        icon: Icons.date_range,
                        text: "Timetables",
                        onTap: () {},
                      ),
                      buildMenuItem(
                        icon: Icons.calculate,
                        text: "CGPA Calculator",
                        onTap: () {},
                      ),
                      buildMenuItem(
                        icon: Icons.school,
                        text: "Placement &Training Unit",
                        onTap: () {},
                      ),
                      buildMenuItem(
                        icon: Icons.group,
                        text: "Developers",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                // Bottom Section
                Padding(
                  padding: const EdgeInsets.only(left: 230.0,bottom: 20),
                  child: Container(
                    color: Colors.red[100],
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Icon(Icons.logout,
                          color: Colors.red,
                          ),
                        ),
                        Text('Logout',
                        style: TextStyle(
                          color: Colors.red
                        ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("Main Screen Content Here"),
      ),
    );
  }

  Widget buildMenuItem({
    required IconData icon,
    required String text,
    VoidCallback? onTap,
    bool isActive = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : const Color(0xFFDCEFF5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? const Color(0xFF315B64) : Colors.black87,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: isActive ? const Color(0xFF315B64) : Colors.black87,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
