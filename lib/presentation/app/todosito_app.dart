import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/app/flavor_config.dart';
import 'package:todositos/presentation/todos/todoListScreen.dart';

class TododitoApp extends ConsumerWidget {
  const TododitoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tododito',
      home: const TodoListScreen(),
      builder: (context, child) {
        if (!FlavorConfig.isProduction) {
          return Banner(
            message: FlavorConfig.instance.name,
            location: BannerLocation.topStart,
            color: Colors.red,
            child: Stack(
              children: [
                child!,
              ],
            ),
          );
        }
        return Stack(
          children: [
            child!,
          ],
        );
      },
    );
  }
}
