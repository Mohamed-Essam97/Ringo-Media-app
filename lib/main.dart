import 'dart:async';

import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ringo_media_flutter/ui/app_router.dart';
import 'package:ringo_media_flutter/ui/themes/app_theme.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:sizer/sizer.dart';

DateTime get _now => DateTime.now();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CalendarEventData> events = [
      CalendarEventData(
        color: UIColor.kPurple.withOpacity(0.3),
        date: _now,
        title: "Sprint Review Period 02 in May 2022",
        description: "09:00 AM - 10:00 AM",
        titleStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        descriptionStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        startTime: DateTime(_now.year, _now.month, _now.day, 1, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 2, 30),
      ),
      CalendarEventData(
        color: UIColor.kOrange.withOpacity(0.3),
        date: _now,
        startTime: DateTime(_now.year, _now.month, _now.day, 3, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 4, 30),
        titleStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        descriptionStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        title: "Meeting with Client",
        description: "Attend uncle's wedding anniversary.",
      ),
      CalendarEventData(
        date: _now,
        color: UIColor.kGreen.withOpacity(0.3),
        startTime: DateTime(_now.year, _now.month, _now.day, 4, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 5, 30),
        titleStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        descriptionStyle: context.sub1!.copyWith(color: UIColor.kPrimary),
        title: "Football Tournament",
        description: "Go to football tournament.",
      ),
    ];

    return Sizer(
      builder: (context, orientation, deviceType) {
        return CalendarControllerProvider(
          controller: EventController()..addAll(events),
          child: MaterialApp.router(
            locale: const Locale('en'),
            localizationsDelegates: const [
              // AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale('en')],
            debugShowCheckedModeBanner: false,
            title: 'Ringo Media',
            themeMode: ThemeMode.dark,
            theme: AppTheme.lightThemeData,
            darkTheme: AppTheme.darkThemeData,
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}
