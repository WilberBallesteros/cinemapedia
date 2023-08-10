import 'package:flutter/material.dart';

import 'package:cinemapedia/config/router/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


Future <void> main() async{

  await dotenv.load(fileName: '.env'); //leer el .env y defina su uso de manera global

  runApp(
    const ProviderScope(child: MainApp()) //Referencia a todos los providers de riverpod
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router( //.router para configurar el router
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    
    );
  }
}
