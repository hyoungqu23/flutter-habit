import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit/src/features/introduction/views/widgets/on_boarding_tab.dart';
import 'package:habit/src/routes/routes_provider.dart';

List<Map<String, dynamic>> introductions = [
  {
    'title': 'WELCOME TO\nMONUMENTAL HABITS',
    'imageAsset': 'assets/images/instruction_01.png'
  },
  {
    'title': 'CREATE NEW\nHABIT EASILY',
    'imageAsset': 'assets/images/instruction_02.png'
  },
  {
    'title': 'KEEP TRACK OF YOUR\nPROGRESS',
    'imageAsset': 'assets/images/instruction_03.png'
  },
  {
    'title': 'JOIN A SUPPORTIVE\nCOMMUNITY',
    'imageAsset': 'assets/images/instruction_04.png'
  },
];

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: introductions.length,
      vsync: this,
    )..addListener(handleTab);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleTab() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(
          top: 40,
          right: 12,
          left: 12,
          bottom: 50,
        ),
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  for (var tab in introductions)
                    OnBoardingTab(
                      title: tab['title'],
                      imageAsset: tab['imageAsset'],
                    ),
                  // ...introductions.map(
                  //   (e) => OnBoardingTab(
                  //     title: e['title'],
                  //     imageAsset: e['imageAsset'],
                  //   ),
                  // )
                ],
              ),
            ),
            tabController.index == 3
                ? ElevatedButton(
                    onPressed: () {
                      context.pushNamed(Routes.home['name']!);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFFC9D45),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          vertical: 22,
                          horizontal: 132,
                        ),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color(0xFF573353),
                        backgroundColor: Color(0xFFFC9D45),
                        fontSize: 16,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.pushNamed(
                            Routes.home['name']!,
                          );
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF573353),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          tabController.animateTo(1);
                        },
                        child: TabPageSelector(
                          controller: tabController,
                          borderStyle: BorderStyle.none,
                          color: const Color(0xFFFC9D45),
                          selectedColor: const Color(0xFF573353),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (tabController.index + 1 <=
                              introductions.length - 1) {
                            return tabController
                                .animateTo(tabController.index + 1);
                          }
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Color(0xFF573353),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

// padding: EdgeInsets.only(
//           top = 80,
//           right = 32,
//           left = 32,
//           bottom = 100,
//         ),

// Column(
//       children: [
//         TabBarView(
//           controller: tabController,
//           children: [
//             OnBoardingTab(
//               tabController: tabController,
//               title: introductions[0]['title'],
//               imageAsset: introductions[0]['imageAsset'],
//             ),
//             OnBoardingTab(
//               tabController: tabController,
//               title: introductions[1]['title'],
//               imageAsset: introductions[1]['imageAsset'],
//             ),
//             OnBoardingTab(
//               tabController: tabController,
//               title: introductions[2]['title'],
//               imageAsset: introductions[2]['imageAsset'],
//             ),
//             OnBoardingTab(
//               tabController: tabController,
//               title: introductions[3]['title'],
//               imageAsset: introductions[3]['imageAsset'],
//             ),
//             // ListView.builder(
//             //   itemCount: introductions.length,
//             //   itemBuilder: (context, index) => OnBoardingTab(
//             //     title: introductions[index]['title'],
//             //     imageAsset: introductions[index]['imageAsset'],
//             //   ),
//             // )
//           ],
//         ),
//       ],
//     );