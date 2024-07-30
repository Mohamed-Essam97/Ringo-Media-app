import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void initialization() async {
      // ignore_for_file: avoid_print

      await Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          context.go('/login');
        },
      );
    }

    useEffect(() {
      initialization();
      return null;
    }, []);

    return const Scaffold(body: SizedBox());
  }
}
