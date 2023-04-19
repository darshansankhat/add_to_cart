import 'package:add_to_cart/Cart_scrren/Provider_scrren/Fashin_provider.dart';
import 'package:add_to_cart/Cart_scrren/View_scrren/Home_scrren.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Fashion_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Home_scrren(),
        },
      ),
    ),
  );
}