import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Deepak",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "22EBKCS037",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),
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
                      buildMenuItem(icon: Icons.calendar_today, text: "Calendar"),
                      buildMenuItem(icon: Icons.folder, text: "Resources"),
                      buildMenuItem(icon: Icons.date_range, text: "Timetables"),
                      buildMenuItem(icon: Icons.calculate, text: "CGPA Calculator"),
                      buildMenuItem(icon: Icons.school, text: "Placement & Training Unit"),
                      buildMenuItem(icon: Icons.group, text: "Developers"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0, bottom: 20),
                  child: Container(
                    color: Colors.red[100],
                    height: 50,
                    width: 50,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Icon(Icons.logout, color: Colors.red),
                        ),
                        Text('Logout', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

      // ✅ Body Content
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ Greeting
                Text(
                  "Hi Deepak!",
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "22EBKCS037",
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 20),

                // ✅ Upcoming
                sectionTitle("Upcoming"),
                Text(
                  "Ye sem lite, agla fodenge",
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),

                // ✅ What's New
                sectionTitle("What’s New ⭐"),
                const SizedBox(height: 10),
                Row(
                  children: [
                    buildButton("Placement Unit",() {

                    },),
                    const SizedBox(width: 10),
                    buildButton("CGPA Calculator",() {

                    },),
                  ],
                ),
                const SizedBox(height: 20),

                // ✅ Services
                sectionTitle("Services"),
                const SizedBox(height: 10),
                Row(
                  children: [
                    buildButton("Exam Schedule",() {

                    },),
                    const SizedBox(width: 10),
                    buildButton("Class Schedule",() {

                    },),
                  ],
                ),
                const SizedBox(height: 20),

                // ✅ Courses
                sectionTitle("Courses"),
                const SizedBox(height: 10),
                const CourseTile(block: "BLOCK A04", subject: "C Programming", teacher: "Pradeep Singh Shekhawat"),
                const CourseTile(block: "BLOCK A04", subject: "Python Programming", teacher: "Dr. Sonam Mittal"),
                const CourseTile(block: "BLOCK A04", subject: "DSA", teacher: "Dr. Nimish Kumar"),
                const CourseTile(block: "BLOCK A04", subject: "DSA", teacher: "Dr. Nimish Kumar"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ✅ Helper Widgets

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.playfairDisplay(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildButton(String text, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap, // <-- click action here
        borderRadius: BorderRadius.circular(8), // Important for ripple effect
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4F6FF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ),
        ),
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

// ✅ Course Tile Widget
class CourseTile extends StatelessWidget {
  final String block;
  final String subject;
  final String teacher;

  const CourseTile({
    super.key,
    required this.block,
    required this.subject,
    required this.teacher,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFD4F6FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(block, style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
              Text(subject, style: GoogleFonts.playfairDisplay(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(teacher, style: GoogleFonts.poppins(fontSize: 12)),
            ],
          ),
          InkWell(
            child: Text(
              "Resources",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.blue,
                decoration: TextDecoration.underline,
               ),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
