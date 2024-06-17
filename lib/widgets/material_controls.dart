import 'package:flutter/material.dart';

class MaterialControls extends StatefulWidget {
  @override
  _MaterialControlsState createState() => _MaterialControlsState();
}

class _MaterialControlsState extends State<MaterialControls> {
  double _sliderValue = 50;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Material Slider', style: TextStyle(fontSize: 18)),
          Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text('Material Switch', style: TextStyle(fontSize: 18)),
          Switch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
