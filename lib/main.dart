import 'package:flutter/material.dart';

void main() => runApp(const Portfolio());

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// PAGE 1 - HOME
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello, I'm Sahas",
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("CSE Applied Mathematics Student"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const AboutPage()),
              ),
              child: const Text("About Me"),
            ),
          ],
        ),
      ),
    );
  }
}

// PAGE 2 - ABOUT
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Education",
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const Text("B.Tech CSE Applied Mathematics"),
            const Text("CR RAO AIMSCS"),

            const SizedBox(height: 25),

            const Text("Skills",
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const Text("Python • Cybersecurity • Cryptography"),

            const Spacer(),

            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ProjectsPage()),
                ),
                child: const Text("My Projects"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PAGE 3 - PROJECTS
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Projects")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Password Strength Analyzer"),
                subtitle: const Text(
                  "A Python project that analyzes password "
                  "strength and security.",
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.security),
                title: const Text("ShadowBit"),
                subtitle: const Text(
                  "A security project based on cryptography "
                  "and information hiding.",
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text("GitHub",
                style: TextStyle(fontSize: 22,
                    fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            const Text("github.com/yourusername"),
          ],
        ),
      ),
    );
  }
}
