import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:safarni/core/services/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Prefs.init();
  runApp(const Safarni());
}

class Safarni extends StatelessWidget {
  const Safarni({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
