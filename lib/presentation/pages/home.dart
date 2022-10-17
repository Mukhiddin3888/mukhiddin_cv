import 'package:flutter/material.dart';
import 'package:mukhiddin_cv/presentation/styles/theme.dart';
import 'package:mukhiddin_cv/presentation/styles/theme_warpper.dart';

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
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
        return  Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: colors.primary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24,bottom: 16),
                      child: Text('Mukhiddin', style: fonts.headline2,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: ClipOval(
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.contain,
                          placeholder: 'assets/gif/loading_timer.gif' ,
                          image: 'https://picsum.photos/250?image=9',

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Hi, my name is Mukhiddin Sirojiddinov and I'm a senior software engineer. Welcome to my personal website!",
                      style: fonts.bodyText1.copyWith(color: colors.black),
                      textAlign: TextAlign.center,
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.white
                      ),
                      child: Icon(Icons.linked_camera_outlined,color: colors.primary,),
                    ),
                    SocialMediaIcons(icon: Icon(Icons.linked_camera_outlined,color: colors.primary,),)



                  ],
                ),
              ),
            ),
            Flexible(
              flex: 7,
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
      },
    );
  }
}

class SocialMediaIcons extends StatelessWidget {

  final Icon icon;


  const SocialMediaIcons({Key? key, required this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white
      ),
      child: icon,
    );
  }
}

