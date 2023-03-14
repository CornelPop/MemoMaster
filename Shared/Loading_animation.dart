import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {

  @override
  Widget build (BuildContext context)
  {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: SpinKitWave(
          color: Colors.indigo[100],
          size: 50,
        ),
      ),
    );
  }
}
