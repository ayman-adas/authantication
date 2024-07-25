import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/view/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    //  MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: (_) => Counter()),
    //   ],
    //   child:
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
        
      );
  }
}
