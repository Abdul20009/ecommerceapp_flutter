import 'package:flutter/material.dart';
import 'package:shopicon/widgets/list_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> accountItems = [
    {'icon': Icons.shopping_bag_outlined, 'title': 'Orders'},
    {'icon': Icons.assignment_return_outlined, 'title': 'Returns'},
    {'icon': Icons.favorite_border, 'title': 'Wishlist'},
    {'icon': Icons.location_on_outlined, 'title': 'Addresses'},
    {'icon': Icons.payment_outlined, 'title': 'Payment'},
    {'icon': Icons.account_balance_wallet_outlined, 'title': 'Wallet'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopicon",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple[50],
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Hi, Abdulrahman",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starter Plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "All Fetures Unlocked",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: accountItems.length,
                  itemBuilder: (context, index) {
                    return ListWidget(
                      icon: accountItems[index]['icon'],
                      icon2: Icons.arrow_forward_ios,
                      text: accountItems[index]['title'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
