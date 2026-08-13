import 'package:flutter/material.dart';
import 'customer_screen.dart';
import 'order_screen.dart';
import 'profile_screen.dart';
import 'add_order_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  // ---------------- GREETING ----------------

  String getGreeting() {
    int hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return "Good Morning!";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon!";
    } else if (hour >= 17 && hour < 21) {
      return "Good Evening!";
    } else {
      return "Good Night!";
    }
  }

  // ---------------- HOME SCREEN ----------------

  Widget homeScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 8),

            Text(
              getGreeting(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage your boutique with ease.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // ---------------- TOTAL CUSTOMERS ----------------

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2342),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFD4AF37),
                  width: 1,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(
                    Icons.people,
                    color: Color(0xFFD4AF37),
                    size: 30,
                  ),

                  SizedBox(height: 16),

                  Text(
                    "TOTAL CUSTOMERS",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "1,284",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // ---------------- ACTIVE ORDERS ----------------

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2342),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFD4AF37),
                  width: 1,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(
                    Icons.shopping_bag,
                    color: Color(0xFFD4AF37),
                    size: 30,
                  ),

                  SizedBox(height: 16),

                  Text(
                    "ACTIVE ORDERS",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "14",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // ---------------- PENDING ORDERS ----------------

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2342),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFD4AF37),
                  width: 1,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(
                    Icons.pending,
                    color: Color(0xFFD4AF37),
                    size: 30,
                  ),

                  SizedBox(height: 16),

                  Text(
                    "PENDING ORDERS",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "14",
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ---------------- CURRENT SCREEN ----------------

  Widget getCurrentScreen() {
    if (currentIndex == 0) {
      return homeScreen();
    } else if (currentIndex == 1) {
      return const CustomerScreen();
    } else if (currentIndex == 2) {
      return const OrderScreen();
    } else {
      return const ProfileScreen();
    }
  }

  // ---------------- MAIN BUILD ----------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B132B),

      // ---------------- APP BAR ----------------

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B132B),
        foregroundColor: const Color(0xFFD4AF37),

        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
            'assets/mneme.png',
            width: 130,
            height: 130,
          ),
        ),

        elevation: 8,

        shadowColor: const Color(0xFFD4AF37),

        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 20),

            child: IconButton(
              icon: const Icon(Icons.person),

              onPressed: () {

                setState(() {
                  currentIndex = 3;
                });

              },
            ),
          ),

        ],
      ),

      // ---------------- BODY ----------------

      body: getCurrentScreen(),
      floatingActionButton: currentIndex == 2
    ? FloatingActionButton(
        backgroundColor: const Color(0xFFD4AF37),
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddOrderScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      )
    : null,

      // ---------------- BOTTOM NAVIGATION ----------------

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,

        onTap: (index) {

          setState(() {
            currentIndex = index;
          });

        },

        backgroundColor: const Color(0xFF0B132B),

        selectedItemColor: const Color(0xFFD4AF37),

        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Customers',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
      ),
    );
  }
}