import 'package:flutter/material.dart';

class NoNetworkPage extends StatelessWidget {
  const NoNetworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('No Network Connection'))
        ],
      ),
    );
  }
}
