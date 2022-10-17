import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isDisplayPortrait(BuildContext context) =>
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    bool isDisplayScaled(BuildContext context) =>
        (MediaQuery.of(context).devicePixelRatio > 1.0 &&
            isDisplayPortrait(context));

    return Scaffold(
        appBar: isDisplayScaled(context)
            ? AppBar(
                title: Text('Mukhiddin Sirojiddinov 1234321'),
              )
            : null,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('data'),
              ],
            ),
          ),
        ),
        body: isDisplayScaled(context)
            ? Text(
                " q32goybiq4ufown;idmw oib342ufoniq2deowp  l23n4lf;32 2o3b4nufil23 b3 ")
            : const DesktopHomePage()
    );
  }
}

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Mukhiddin jhlkb;lnkmjjnlkm;'),
                Text('Mukhiddin'),
                Text('Mukhiddin'),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          ),
        )
      ],
    );
  }
}
