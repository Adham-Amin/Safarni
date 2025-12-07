import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:safarni/core/functions/theme_dark.dart';
import 'package:safarni/core/functions/theme_light.dart';
import 'package:safarni/core/routes/go_router.dart';
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: themeLight(),
        darkTheme: themeDark(),
        routerConfig: AppGoRouter.router,
      ),
    );
  }
}
