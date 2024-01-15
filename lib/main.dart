import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit/src/routes/routes_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HabitApp(),
    ),
  );
}

class HabitApp extends ConsumerWidget {
  const HabitApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routesProvider);

    return MaterialApp.router(
      title: 'Habit',
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
