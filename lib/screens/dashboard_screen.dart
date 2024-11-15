import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 229, 229),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  // AppBar content
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.notifications, color: Colors.yellow),
                          onPressed: () {
                            // Add your notification logic here
                          },
                        ),
                        Text(
                          'Welcome, User',
                          style: TextStyle(color: Colors.white),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  // Search bar
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search, color: Colors.black),
                            onPressed: () {
                              // Add your search logic here
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 15.0, // Adjust the vertical padding
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 231, 229, 229),
              child: Center(
                child: Text(
                  "Main Content Here",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(Icons.add, color: Colors.white),
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 231, 229, 229),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 8.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today, color: Colors.black),
                  onPressed: () {},
                ),
                SizedBox(width: 40),
                IconButton(
                  icon: Icon(Icons.grid_view, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
