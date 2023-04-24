import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loggy/loggy.dart';
import 'package:todositos/app/d_injection/inject_dependencies.dart';
import 'package:todositos/app/logger/colored_logs.dart';
import 'package:todositos/presentation/app/todosito_app.dart';

Future<void> runTodositoApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  _initLoggy();

  injectDependencies();

  _lockOrientation();
  runApp(
    const ProviderScope(
      child: TododitoApp(),
    ),
  );
}

void _initLoggy() {
  const logPrinter = ColoredDeveloperPrinter();
  /* const logPrinter =
      kDebugMode ? ColoredDeveloperPrinter() : FirebaseLogPrinter(); */
  Loggy.initLoggy(
    logPrinter: logPrinter,
    //filters: [if (kReleaseMode) ReleaseLogFilter()],
  );
}

void _lockOrientation() {
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
}
