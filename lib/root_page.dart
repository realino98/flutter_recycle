import 'package:flutter/material.dart';
import 'package:flutter_recycle/pages/categories_page.dart';
import 'package:flutter_recycle/pages/dashboard_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  List<Widget> pages = [
    DashboardPage(),
    CategoriesPage(),
    DashboardPage(),
    DashboardPage(),
    DashboardPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("New York")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("Sorting"),
            ),
            ListTile(
              onTap: () {},
              title: Text("Processing"),
            ),
            ListTile(
              onTap: () {},
              title: Text("Weather"),
            ),
            ListTile(
              onTap: () {},
              title: Text("News"),
            ),
            ListTile(
              onTap: () {},
              title: Text("Account"),
            ),
            ListTile(
              onTap: () {},
              title: Text("Tools"),
            ),
          ],
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            print(value);
            if (value == 4) {
            } else {
              pageIndex = value;
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "",
          ),
        ],
      ),
    );
  }
}
