import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = [];

  GlobalKey key = GlobalKey();
  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();

  @override
  void initState() {
    initTargets();
    WidgetsBinding.instance!.addPostFrameCallback((_layout));
    super.initState();
  }

  void _layout(_) {
    Future.delayed(Duration(milliseconds: 100));
    showTutorial();
  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(context,
        targets: targets,
        colorShadow: Colors.indigo,
        textSkip: 'SKIP',
        paddingFocus: 10,
        opacityShadow: 0.8, onFinish: () {
      print('finish');
    }, onClickTarget: (target) {
      print('onClickTarget: $target');
    }, onSkip: () {
      print('skip');
    }, onClickOverlay: (target) {
      print('onClickOverlay: $target');
    })
      ..show();
  }

  void initTargets() {
    targets.add(TargetFocus(identify: 'Target 0', keyTarget: _key1, contents: [
      TargetContent(
          align: ContentAlign.bottom,
          child: Container(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text('Lorem Ipsum',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
                Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper purus a dignissim pharetra. Nulla ullamcorper neque metus, at tincidunt justo tincidunt et. Quisque eget eros id velit maximus porta a nec turpis. Suspendisse eleifend id leo eu porttitor. ',
                      style: TextStyle(color: Colors.black),
                    ))
              ])))
    ]));
    targets.add(
      TargetFocus(
          identify: 'Target 1',
          keyTarget: key,
          color: Colors.red,
          contents: [
            TargetContent(
                align: ContentAlign.bottom,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lorem Ipsum',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper purus a dignissim pharetra. Nulla ullamcorper neque metus, at tincidunt justo tincidunt et. Quisque eget eros id velit maximus porta a nec turpis. Suspendisse eleifend id leo eu porttitor. ',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ))
          ],
          shape: ShapeLightFocus.RRect,
          radius: 5),
    );

    targets.add(TargetFocus(
        identify: 'Target 2',
        keyTarget: _key2,
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Container(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text('Lorem Ipsum',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper purus a dignissim pharetra. Nulla ullamcorper neque metus, at tincidunt justo tincidunt et. Quisque eget eros id velit maximus porta a nec turpis. Suspendisse eleifend id leo eu porttitor. ',
                          style: TextStyle(color: Colors.black),
                        ))
                  ]))),
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text('Lorem Ipsum',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper purus a dignissim pharetra. Nulla ullamcorper neque metus, at tincidunt justo tincidunt et. Quisque eget eros id velit maximus porta a nec turpis. Suspendisse eleifend id leo eu porttitor. ',
                          style: TextStyle(color: Colors.black),
                        ))
                  ])))
        ],
        shape: ShapeLightFocus.Circle));
    targets.add(
      TargetFocus(
        identify: 'Target 3',
        keyTarget: _key3,
        color: Colors.red,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/devs.jpeg',
                            fit: BoxFit.contain, height: 120)),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          'Image Load Network',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        )),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta finibus eros, egestas tincidunt orci vehicula sit amet.',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
        shape: ShapeLightFocus.Circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Coach Mark'),
          centerTitle: true,
          leading: Icon(Icons.menu),
          key: _key1),
      body: Container(
          color: Colors.white,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: InkWell(
                onTap: () {
                  showTutorial();
                },
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        key: key,
                        color: Colors.orange,
                        height: 100,
                        width: MediaQuery.of(context).size.width - 50,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/powered_by.png'),
                        ))),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    key: _key2,
                    onPressed: () {},
                    child: null,
                  ),
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    key: _key3,
                    onPressed: () {},
                    child: null,
                  ),
                )),
          ])),
    );
  }
}
