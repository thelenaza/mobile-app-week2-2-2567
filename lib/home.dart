import 'package:flutter/material.dart';
import 'package:flutter_week2/widgets/row_page.dart';
import 'package:flutter_week2/widgets/column_page.dart';
import 'package:flutter_week2/widgets/list_view_menu.dart';
import 'package:flutter_week2/widgets/card_demo.dart';
import 'package:flutter_week2/widgets//my_card1.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Home"),
        ),
      drawer: Drawer(
        child: ListView(
          children: [
           const UserAccountsDrawerHeader(
                accountName: Text("Leena"),
                accountEmail: Text("leena07@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  child: Icon(Icons.android),
                )
            ),
            ListTile(
              leading:  Icon((Icons.home)),
              title:  Text("Home"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              }, //on Tap
            ),
            ListTile(
              leading:  Icon((Icons.apps)),
              title:  Text("Row"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              }, //on Tap
            ),
            ListTile(
              leading:  Icon((Icons.apps)),
              title:  Text("Culumn"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              }, //on Tap
            ),
            ListTile(
              leading:  Icon((Icons.menu)),
              title:  Text("ListViewMenu"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              }, //on Tap
            ),
            ListTile(
              leading:  Icon((Icons.credit_score)),
              title:  Text("Card & Inkwell widget"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
              }, //on Tap
            ),
            ListTile(
              leading:  Icon((Icons.credit_score)),
              title:  Text("My Card"),
              onTap: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              }, //on Tap
            ),
          ],
        ),
      ),
      body: const Center(
          child: Text("MyApp"),
        ),
    );
  }
}