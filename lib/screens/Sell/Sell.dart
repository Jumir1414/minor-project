import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:minorproject/screens/Drawer/Drawer_Screen.dart';

class SellScreen extends KFDrawerContent {
  @override
  _SellScreenState createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    Size _height = MediaQuery.of(context).size;
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('sell Book'),
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: _height.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Sell',
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: onBackPressed,
    );
  }

  Future<bool> onBackPressed() {
    return Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (context) {
        return DrawerScreen();
      },
    ), (route) => false);
  }
}
