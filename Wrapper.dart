import 'package:flutter/material.dart';
import 'package:memomaster/Models/User.dart';
import 'package:memomaster/Sign_In.dart';
import 'package:memomaster/main.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build (BuildContext context)
  {
    late final user = Provider.of<MyUser?>(context);

    if (user == null)
      {
        return const Sign_in_Page();
      }
    else
      {
        return const MyHomePage();
      }

  }
}