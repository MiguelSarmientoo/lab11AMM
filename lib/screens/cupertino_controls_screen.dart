import 'package:flutter/cupertino.dart';
import '../widgets/cupertino_controls.dart';

class CupertinoControlsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Controls'),
      ),
      child: CupertinoControls(),
    );
  }
}
