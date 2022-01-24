import 'package:example_provider/cat_provider.dart';
import 'package:example_provider/home.dart';
import 'package:example_provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ProviderExample extends StatelessWidget {
  const ProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: 
      [
        ChangeNotifierProvider(create:  (context) => UserProvider(),),
        ChangeNotifierProvider(create:  (context) => CatProvider(),)
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}