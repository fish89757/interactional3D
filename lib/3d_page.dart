import 'package:flutter/material.dart';

import 'interactinal_3d_widget.dart';

class Page3d extends StatefulWidget {
  const Page3d({Key? key}) : super(key: key);

  @override
  _Page3dState createState() => _Page3dState();
}

class _Page3dState extends State<Page3d> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Interactional3DWidget(
        maxAngleX: 40,
        maxAngleY: 80,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        middleScale: 1,
        foregroundScale: 1.2,
        backgroundScale: 1.2,
        backgroundWidget: backgroundWidget(),
        middleWidget: middleWidget(),
        foregroundWidget: foregroundWidget(),
      ),
    );
  }

  Widget backgroundWidget() {
    return Container(
      child: getImage('bg.png'),
    );
  }

  Widget foregroundWidget() {
    return Container(
      child: getImage('top.png'),
    );
  }

  Widget middleWidget() {
    // return Center(child: Text('hello'));
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: RotatedBox(
          quarterTurns: 45,
          child: Text("测测真棒",style: const TextStyle(
            color: Colors.white
          ),),
        ),
      ),
    );
  }

  Image getImage(String s) {
    return Image.asset(
      "assets/images/$s",
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
      scale: 3.0,
    );
  }
}
