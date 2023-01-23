import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:socialmedia/widgets/postWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5,),
            for(int i=0;i<10;i++)
              PostWidget(name: "__atheel_",)
          ],
        ),
      ),
    );
  }
}
