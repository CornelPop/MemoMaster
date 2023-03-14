import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:memomaster/Services/Database.dart';
import 'package:memomaster/Services/Get_data_widget.dart';
import 'package:provider/provider.dart';

class Get_Data_Widget extends StatefulWidget {
  @override
  Get_Data_WidgetState createState() => Get_Data_WidgetState();
}

class Get_Data_WidgetState extends State<Get_Data_Widget>
{

  @override
  Widget build(BuildContext context) {

    late String username;
    late final userData = Provider.of<QuerySnapshot?>(context);

    if (userData != null) {
      for (var doc in userData.docs) {
        username = doc.get('name').toString();
        print(username);
      }
    }

    return Container(child: Text(username),);
  }
}
