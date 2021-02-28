import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:minorproject/screens/Drawer/Drawer_Screen.dart';

class SettingScreen extends KFDrawerContent {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size _height = MediaQuery.of(context).size;
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Account Setting'),
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: _height.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Setting',
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
