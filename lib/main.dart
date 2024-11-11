import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user/Provider/user_provider.dart';

import 'Screen/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UserProvider(),)
    ],
     child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    ),
    );
  }
}
