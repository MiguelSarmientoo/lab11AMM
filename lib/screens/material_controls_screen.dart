import 'package:flutter/material.dart';
import '../widgets/material_controls.dart';

class MaterialControlsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Controls'),
      ),
      body: MaterialControls(),
    );
  }
}
