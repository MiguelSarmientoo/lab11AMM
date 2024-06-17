import 'package:flutter/cupertino.dart';

class CupertinoControls extends StatefulWidget {
  @override
  _CupertinoControlsState createState() => _CupertinoControlsState();
}

class _CupertinoControlsState extends State<CupertinoControls> {
  double _sliderValue = 50;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cupertino Slider', style: TextStyle(fontSize: 18)),
          CupertinoSlider(
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
          Text('Cupertino Switch', style: TextStyle(fontSize: 18)),
          CupertinoSwitch(
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
