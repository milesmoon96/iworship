import 'package:flutter/material.dart';
import 'package:iworship_bible/models/account_auth.dart';
import 'package:provider/provider.dart';
import 'package:iworship_bible/providers/album_provider.dart';
import 'package:iworship_bible/pages/album_view.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
    ],
    child: MaterialApp(
      title: 'IWorship Bible',
      routes: {
        '/index':(context) => IndexScreen(),
        '/login':(context) => LoginScreen(),
        '/splash':(context) => SplashScreen(),
        '/register':(context) => registerScreen(),
      },
      initialRoute: '/splash',
    ),
  );
  }
}