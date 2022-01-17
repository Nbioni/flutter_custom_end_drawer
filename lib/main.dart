import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom EndDrawer',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> homeScaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    final String formatted = formatter.format(now);
    return Scaffold(
      key: homeScaffoldkey,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 280,
        actions: [
          InkWell(
            highlightColor: const Color(0xFFCDD5E5).withOpacity(0.04),
            hoverColor: const Color(0xFFCDD5E5).withOpacity(0.04),
            splashColor: const Color(0xFFCDD5E5).withOpacity(0.07),
            onTap: () {
              homeScaffoldkey.currentState!.openEndDrawer();
            },
            child: Container(
              height: 60,
              width: 280,
              color: const Color(0xFFCDD5E5),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 11, bottom: 9),
              child: Row(children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFA3BAD0),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    const Text('USER NAME',
                        style: TextStyle(
                          fontFamily: 'AsapBold',
                          fontSize: 13.9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF313B5F),
                        )),
                    const SizedBox(height: 2),
                    Text('LAST ACESS ' + formatted,
                        style: const TextStyle(
                          fontFamily: 'AsapBold',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF878787),
                        )),
                    const SizedBox(height: 3),
                  ],
                ),
                Expanded(child: Container()),
                ClipOval(
                  child: Material(
                    color: const Color(0xFFCDD5E5),
                    child: InkWell(
                      highlightColor: const Color(0xFF7F96BE),
                      hoverColor: const Color(0xFF7F96BE).withOpacity(0.4),
                      splashColor: const Color(0xFF7F96BE).withOpacity(0.7),
                      onTap: () {},
                      child: Container(
                          width: 32,
                          height: 32,
                          padding: const EdgeInsets.only(right: 2),
                          child: const Icon(
                            Icons.arrow_downward,
                            color: Color(0xFF313B5F),
                            size: 18,
                          )),
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
        flexibleSpace: Container(
          color: Colors.white,
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              //!-- Header - MenuSide
              Stack(
                children: [
                  Row(children: [
                    Container(
                      height: 60,
                      width: 250,
                      color: const Color(0xFF313B5F),
                      padding: const EdgeInsets.only(top: 18, bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                color: const Color(0xFFFFC600),
                                height: 6,
                                width: 20,
                              ),
                              Container(
                                color: const Color(0xFFFF6D2D),
                                height: 6,
                                width: 20,
                              ),
                              Container(
                                color: const Color(0xFFE24486),
                                height: 6,
                                width: 20,
                              ),
                              Container(
                                color: const Color(0xFFB2D235),
                                height: 6,
                                width: 20,
                              ),
                              Container(
                                color: const Color(0xFF00B2BF),
                                height: 6,
                                width: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.dashboard_rounded,
                                size: 29,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                          const SizedBox(width: 6),
                          const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text('My Portal',
                                style: TextStyle(
                                  fontFamily: 'AsapBoldItalic',
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  textBaseline: TextBaseline.alphabetic,
                                  letterSpacing: 1.2,
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    )
                  ]),
                  Positioned(
                      top: 18,
                      right: 0,
                      child: ClipOval(
                        child: Material(
                          color: const Color(0xFF7F96BE),
                          child: InkWell(
                            highlightColor: const Color(0xFF7F96BE),
                            hoverColor:
                                const Color(0xFFCDD5E5).withOpacity(0.04),
                            splashColor:
                                const Color(0xFFCDD5E5).withOpacity(0.07),
                            onTap: () => {},
                            child: AnimatedRotation(
                              curve: Curves.easeInCubic,
                              duration: const Duration(milliseconds: 400),
                              turns: 0,
                              child: Container(
                                  width: 32,
                                  height: 32,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: const Icon(
                                    Icons.arrow_left,
                                    color: Color(0xFFFFFFFF),
                                    size: 18,
                                  )),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              //!-- Menus
              Flexible(
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.only(right: 280),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Tooltip(
                        message: "Wait for the next version",
                        child: Icon(
                          Icons.dark_mode_sharp,
                          color: Color(0xFFDADADA),
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Tooltip(
                        message: "Wait for the next version",
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xFFDADADA),
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      endDrawer: const MyEndDrawer(),
      drawerEnableOpenDragGesture: true,
      drawerScrimColor: Colors.transparent,
      onEndDrawerChanged: (isEndDrawerOpened) {
        //!==============================================================
        //!==============================================================

        //TODO - Is it possible to set the value of bodyScrimColor?
        isEndDrawerOpened
            ? homeScaffoldkey.currentState!.showBodyScrim(true, 0.3)
            : homeScaffoldkey.currentState!.showBodyScrim(false, 0.3);

        //!==============================================================
        //!==============================================================
      },
      body: Container(
        color: const Color(0xFFFFC600),
        child: Row(
          children: [
            Container(
              width: 250,
              color: const Color(0xFF313B5F),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xFF55678B),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 14),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 6),
                        FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Center(
                            child: Text('Overview',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AsapBold',
                                    fontSize: 13.9,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 1.1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 14),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 6),
                        FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Center(
                            child: Text('FAQ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AsapBold',
                                    fontSize: 13.9,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 1.1)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, 30),
      child: Container(
        width: 640,
        height: _size.height - 60,
        decoration: BoxDecoration(
          color: const Color(0xFF313B5F),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1D1D1B).withOpacity(0.4),
              offset: const Offset(-8, 10),
              blurRadius: 20,
            ),
          ],
        ),
        padding: const EdgeInsets.only(left: 30),
        child: const Center(
          child: Text("My EndDrawer"),
        ),
      ),
    );
  }
}
