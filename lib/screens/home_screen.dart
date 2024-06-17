import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'material_controls_screen.dart';
import 'cupertino_controls_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material and Cupertino Controls Lab 11'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaterialControlsScreen()),
                );
              },
              child: Text('Mostrar Material Controls Ej 2'),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CupertinoControlsScreen()),
                );
              },
              child: Text('Mostrar Cupertino Controls Ej 2'),
              color: CupertinoColors.activeBlue,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showMaterialAlert(context);
              },
              child: Text('Mostrar Material Alert Ej 1'),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                _showCupertinoAlert(context);
              },
              child: Text('Mostrar Cupertino Alert Ej 1'),
              color: CupertinoColors.activeBlue,
            ),
          ],
        ),
      ),
    );
  }

  void _showMaterialAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Material Alert Title'),
          content: Text('This is a Material Alert message'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Alert Title'),
          content: Text('This is a Cupertino Alert message'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
