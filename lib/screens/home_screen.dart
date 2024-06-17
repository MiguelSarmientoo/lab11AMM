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
              child: Text('Mostrar Material Controls'),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CupertinoControlsScreen()),
                );
              },
              child: Text('Mostrar Cupertino Controls'),
              color: CupertinoColors.activeBlue,
            ),
          ],
        ),
      ),
    );
  }
}
