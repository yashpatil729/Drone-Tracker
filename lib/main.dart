import 'package:flutter/material.dart';
// import 'package:order_tracker/order_tracker.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soaran',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.teal,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(), //title: 'Flutter Demo Home Page'
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List InitialOrderDataList = [
      ["Drone Booked", "5th July 2023"],
      ["Pilot on the way to the location", "30 mins away"],
      ["Payment Completed", "10th July 2023, 11.45pm"],
      ["Service Completed", "10th July 2023, 11.45pm"]
    ];

    // List<TextDto> OrderShippedDataList = [
    //   TextDto("Pilot on the way to the location", "30 mins away"),
    // ];

    // List<TextDto> OrderOutOfDeliveryDataList = [
    //   TextDto("Payment Completed", "10th July 2023, 11.45pm"),
    // ];

    // List<TextDto> OrderDeviveredDataList = [
    //   TextDto("Service Completed", "10th July 2023, 11.45pm"),
    // ];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: const Text(
          'Track Order',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        // bottom: PreferredSize(
        //     preferredSize: Size(MediaQuery.of(context).size.width, 40),
        //     child: const Text(
        //   'Track Order',
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontFamily: 'Outfit',
        //     color: Colors.black,
        //     fontSize: 22,
        //   ),
        // ),
        //     ),
        // child: Center(
        //   child: new Row(
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //       new RaisedButton(
        //         onPressed: () {},
        //         child: Text('Rolagem '),
        //       ),
        //       new RaisedButton(
        //         onPressed: () {},
        //         child: Text('TOM '),
        //       ),
        //     ],
        //   ),
        // ),
        actions: [],
        centerTitle: true,
        elevation: 2,
        // title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        // color: Colors.teal,
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(99, 8, 75, 68),
                            Color.fromARGB(99, 46, 128, 110),
                          ],
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/drone.png',
                        width: 80,
                        height: 77,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Videography Drone',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Ultra HD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  '₹ 1050',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 10, 0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        // color: Colors.teal,
                                        gradient: const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color.fromARGB(255, 1, 22, 20),
                                            Color.fromARGB(255, 45, 144, 127),
                                          ],
                                        )),
                                    width: 80,
                                    height: 30,
                                    child: const FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Text("123456",
                                            style: TextStyle(
                                              height: 2,
                                              fontSize: 9,
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                            ))),
                                    // const Text(
                                    //     '123456',
                                    //     style: TextStyle(color: Colors.white),
                                    //   ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color.fromARGB(204, 60, 60, 33),
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                      child: Text(
                        'Order Details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Drone Type',
                      ),
                      Text(
                        'Category',
                      ),
                      Text(
                        'Data',
                        // textAlign: TextAlign.left,
                      ),
                      Text(
                        'Duration',
                        // textAlign: TextAlign.left,
                      ),
                      Text(
                        'Service Location',
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Videography Drone',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Small',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '05-07-2023',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('NMIDS Massbtank Bus stop..',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color.fromARGB(204, 60, 60, 33),
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                      child: Text(
                        'Operator Info',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                      ),
                      Text(
                        'Mobile number',
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Operator One',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                        Text('1234567890',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color.fromARGB(204, 60, 60, 33),
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                      child: Text(
                        'Order Status',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // OrderTracker(
                            //   status: Status.delivered,
                            //   activeColor: Colors.teal,
                            //   //Color.lerp( Color.fromARGB(255, 1, 22, 20),Color.fromARGB(255, 45, 144, 127), double p),
                            //   inActiveColor: Colors.grey,
                            //   orderTitleAndDateList: InitialOrderDataList,
                            //   shippedTitleAndDateList: OrderShippedDataList,
                            //   outOfDeliveryTitleAndDateList:
                            //       OrderOutOfDeliveryDataList,
                            //   deliveredTitleAndDateList: OrderDeviveredDataList,
                            // ),
                            Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: SizedBox(
                                    height: 400,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Timeline.tileBuilder(
                                      theme: TimelineThemeData(
                                        nodePosition: 0,
                                        // color:Color.lerp( Color.fromARGB(255, 1, 22, 20),Color.fromARGB(255, 45, 144, 127), double p),// Colors.blue,
                                        // indicatorTheme:
                                        //     const IndicatorThemeData(
                                        //   position: 0,
                                        //   size: 30.0,
                                        // ),
                                        // connectorTheme:
                                        //     const ConnectorThemeData(
                                        //   space: 30.0,
                                        //   thickness: 5.0,
                                        // ),
                                      ),

                                      // TimelineThemeData: InitialOrderDataList,
                                      builder: TimelineTileBuilder.connected(
                                        itemCount: 4,

                                        // contentsAlign: ContentsAlign.alternating,
                                        contentsBuilder: (context, index) {
                                          // print(index);
                                          // Icon icon;
                                          // if (index == 0) {
                                          //   icon = const Icon(
                                          //     Icons.document_scanner_outlined,
                                          //     //   color: Color.fromARGB(
                                          //     //       0, 59, 56, 56),
                                          //   );
                                          // }
                                          // if (index == 1) {
                                          //   icon = const Icon(
                                          //     Icons.paragliding_outlined,
                                          //     //   color: Color.fromARGB(
                                          //     //       0, 59, 56, 56),
                                          //   );
                                          // }
                                          // if (index == 2) {
                                          //   icon = const Icon(
                                          //     Icons.payment_outlined,
                                          //     //   color: Color.fromARGB(
                                          //     //       0, 59, 56, 56),
                                          //   );
                                          // }
                                          // if (index == 3) {
                                          //   icon = const Icon(
                                          //     Icons.handshake_outlined,
                                          //     //   color: Color.fromARGB(
                                          //     //       0, 59, 56, 56),
                                          //   );
                                          // }
                                          // print(icon);
                                          return SizedBox(
                                              height: 60,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                InitialOrderDataList[
                                                                    index][0],
                                                                style:
                                                                    const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                              Text(
                                                                InitialOrderDataList[
                                                                    index][1],
                                                                // style: const TextStyle(
                                                                //     fontSize: 16.0),
                                                              ),
                                                            ]),
                                                        (index == 0)
                                                            ? const Icon(
                                                                Icons
                                                                    .document_scanner_outlined,
                                                                //   color: Color.fromARGB(
                                                                //       0, 59, 56, 56),
                                                              )
                                                            : (index == 1)
                                                                ? const Icon(
                                                                    Icons
                                                                        .paragliding_outlined,
                                                                    //   color: Color.fromARGB(
                                                                    //       0, 59, 56, 56),
                                                                  )
                                                                : (index == 2)
                                                                    ? const Icon(
                                                                        Icons
                                                                            .payment_outlined,
                                                                        //   color: Color.fromARGB(
                                                                        //       0, 59, 56, 56),
                                                                      )
                                                                    : const Icon(
                                                                        Icons
                                                                            .handshake_outlined,
                                                                        //   color: Color.fromARGB(
                                                                        //       0, 59, 56, 56),
                                                                      ),
                                                        // icon,
                                                      ])));
                                          //     Align(
                                          //   alignment: Alignment.topLeft,
                                          //   child: Padding(
                                          //     padding: const EdgeInsets.all(10.0),
                                          //     child:
                                          //         Text('Timeline Event $index'),
                                          //   ),
                                          // )
                                        },
                                        indicatorBuilder: (_, index) {
                                          return DotIndicator(
                                              size: 30,
                                              child: Container(
                                                width: 20.0,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color.fromARGB(
                                                          255, 1, 22, 20),
                                                      Color.fromARGB(
                                                          255, 90, 184, 168),
                                                    ],
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomLeft,
                                                  ),
                                                ),
                                              ));
                                        },
                                        connectorBuilder: (_, index, type) {
                                          // print(index);
                                          // print(type.toString());
                                          String t = type.toString();
                                          return
                                              // DotIndicator(
                                              //     size: 30,
                                              //     child:
                                              Container(
                                            width: 6.0,
                                            decoration: BoxDecoration(
                                              // shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                colors: (t ==
                                                        "ConnectorType.end")
                                                    ? [
                                                        Color.fromARGB(
                                                            255, 1, 22, 20),
                                                        Color.fromARGB(
                                                            255, 27, 103, 90),
                                                      ]
                                                    : [
                                                        Color.fromARGB(
                                                            255, 27, 103, 90),
                                                        Color.fromARGB(
                                                            255, 90, 184, 168),
                                                      ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                              ),
                                            ),
                                          );
                                          // );
                                        },
                                        // IndicatorStyle.dot((
                                        // width: 20.0,
                                        // color: Colors.transparent,
                                        // indicatorXY:
                                        //     0.5, // Adjust this value to position the indicator
                                        // indicatorY: 0.0,
                                        // drawGap: true,

                                        // gapWidth:
                                        //     8.0,
                                        // // Adjust this value to control the gap width
                                        // // child: Container(
                                        //   decoration: const BoxDecoration(
                                        //     shape: BoxShape.circle,
                                        //     gradient: LinearGradient(
                                        //       colors: [
                                        //         Colors.blue,
                                        //         Colors.green
                                        //       ],
                                        //       begin: Alignment.topCenter,
                                        //       end: Alignment.bottomCenter,
                                        //     ),
                                        //   ),
                                        // child: const Center(
                                        //   child: Icon(
                                        //     Icons.circle,
                                        //     color: Colors.transparent,
                                        //     size: 16.0,
                                        //   ),
                                        // ),

                                        // endIndicator: ClipRRect(
                                        //   borderRadius:
                                        //       const BorderRadius.vertical(
                                        //           bottom:
                                        //               Radius.circular(8.0)),
                                        //   child: Container(
                                        //     width: double.infinity,
                                        //     height:
                                        //         16.0, // Adjust this value to control the clipped indicator height
                                        //     decoration: const BoxDecoration(
                                        //       gradient: LinearGradient(
                                        //         colors: [
                                        //           Colors.blue,
                                        //           Colors.green
                                        //         ],
                                        //         begin: Alignment.topCenter,
                                        //         end: Alignment.bottomCenter,
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        // ),
                                      ),
                                    )))
                          ]))
                ])
          ],
        ),
      ),
      // ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 60,
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(4),
            shape: BoxShape.rectangle,
            // color: Colors.teal,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 19, 25, 25),
                Color.fromARGB(255, 45, 144, 127),
              ],
            )),

        child: const FittedBox(
            fit: BoxFit.fitHeight,
            child: Text("Connect with Pilot",
                style: TextStyle(
                  height: 3,
                  // fontSize: 5,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ))),

        // child:  Container(

        // padding: EdgeIn
        // sets.all(0),

        // const Text(
        //     '123456',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
