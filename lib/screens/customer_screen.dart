import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0B132B),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Customers",
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // SEARCH BAR
            TextField(
              style: const TextStyle(
                color: Colors.white,
              ),

              decoration: InputDecoration(
                hintText: "Search customer",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),

                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),

                filled: true,

                fillColor: const Color(0xFF1A2342),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CUSTOMER LIST
            Expanded(
              child: ListView(
                children: const [

                  CustomerCard(
                    name: "Aisha",
                    phone: "9876543210",
                    size: "M",
                  ),

                  CustomerCard(
                    name: "Fathima",
                    phone: "9123456780",
                    size: "L",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// CUSTOMER CARD

class CustomerCard extends StatelessWidget {
  final String name;
  final String phone;
  final String size;

  const CustomerCard({
    super.key,
    required this.name,
    required this.phone,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF1A2342),

        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: const Color(0xFFD4AF37),
        ),
      ),

      child: Row(
        children: [

          const CircleAvatar(
            backgroundColor: Color(0xFFD4AF37),

            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  phone,

                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Text(
            size,

            style: const TextStyle(
              color: Color(0xFFD4AF37),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}