import 'package:agroly/app/app_module.dart';
import 'package:agroly/app/app_widget.dart';
import 'package:agroly/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  const String env = String.fromEnvironment('ENV', defaultValue: 'prod');
  final String fileName = env == 'dev' ? ".env.development" : ".env";

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await dotenv.load(fileName: fileName);

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
