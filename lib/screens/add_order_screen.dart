import 'package:flutter/material.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  DateTime? selectedDate;Future<void> selectDate() async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime(2030),
  );

  if (pickedDate != null) {
    setState(() {
      selectedDate = pickedDate;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B132B),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B132B),
        foregroundColor: const Color(0xFFD4AF37),
        title: const Text(
          "Orders",
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

     body: SingleChildScrollView(
  padding: const EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "CLIENT SPECIFICATION",
        style: TextStyle(
          color: Color(0xFFD4AF37),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),

const Text(
  "Customer",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter customer name",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),
const SizedBox(height: 20),

const Text(
  "Order Type",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter order type",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),
const SizedBox(height: 30),

const Text(
  "MEASUREMENTS",
  style: TextStyle(
    color: Color(0xFFD4AF37),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 20),

const Text(
  "Bust",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter bust measurement",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),
const SizedBox(height: 20),

const Text(
  "Waist",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter waist measurement",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 20),

const Text(
  "Hip",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter hip measurement",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),
const SizedBox(height: 20),

const Text(
  "Shoulder",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter shoulder measurement",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 20),

const Text(
  "Sleeve Length",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter sleeve length",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 20),

const Text(
  "Dress Length",
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter dress length",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixText: "cm",
    suffixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 30),

const Text(
  "DELIVERY DATE",
  style: TextStyle(
    color: Color(0xFFD4AF37),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 20),

TextField(
  readOnly: true,
  onTap: selectDate,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
hintText: selectedDate == null
    ? "Select delivery date"
    : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",    
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    suffixIcon: const Icon(
      Icons.calendar_month,
      color: Color(0xFFD4AF37),
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 30),

const Text(
  "TOTAL AMOUNT",
  style: TextStyle(
    color: Color(0xFFD4AF37),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  style: const TextStyle(
    color: Colors.white,
  ),
  decoration: InputDecoration(
    hintText: "Enter total amount",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    prefixText: "₹ ",
    prefixStyle: const TextStyle(
      color: Color(0xFFD4AF37),
      fontSize: 18,
    ),
    filled: true,
    fillColor: const Color(0xFF1A2342),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),const SizedBox(height: 35),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Order created successfully"),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFD4AF37),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: const Text(
      "CREATE ORDER",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
    ],
  ),
),
    );
  }
}