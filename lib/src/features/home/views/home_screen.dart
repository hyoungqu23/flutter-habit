import 'package:flutter/material.dart';
import 'package:habit/src/features/home/views/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          backgroundColor: const Color(0xFFFFF3E9),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.table_rows_rounded),
                onPressed: () {},
              ),
              const Text(
                'Homepage',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const CircleAvatar()
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Positioned(
                    top: -24,
                    right: -16,
                    child: Image.asset(
                      'assets/images/instruction_01.png',
                      scale: 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                    child: Row(
                      children: [
                        Text(
                          'We first make our habits,\nand then our habits\nmakes us.',
                          style: TextStyle(
                            color: Color(0xFF573353),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFC9D45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 24,
          weight: 800,
        ),
      ),
    );
  }
}
