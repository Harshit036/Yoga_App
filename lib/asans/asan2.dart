import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';
import 'package:yoga/widgets/timer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Asan2 extends StatefulWidget {
  const Asan2({Key? key}) : super(key: key);

  @override
  _Asan2State createState() => _Asan2State();
}

class _Asan2State extends State<Asan2> {
  bool viewVisible = false;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Naukasana Or Boat Pose"),
              titleSpacing: 00.0,
              centerTitle: true,
              toolbarHeight: 80.2,
              elevation: 0.00,
              backgroundColor: Colors.blueGrey,
            ),
            drawer: MyDrawer(),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage('assets/images/pose2.jpg'),
                        height: 170,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'This is one of the easy asanas. This asana stretches the abdominal muscles and it improves digestion and reduces belly fat. It is good to improve the efficiency of abdominal muscles.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tip: One needs to lie on one’s back with legs together and the hands-on the thighs, without touching them. Then the body should make a 30-degree angle.',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tip: Sit with the legs tucked inside the opposite thighs and the spine should be vertically straight. The hands should be placed on the knees and breathe in and out gently.',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Video Tutorial:',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 190,
                      width: 340,
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: '8KsyQvwi85Q', //Add videoID.
                          flags: YoutubePlayerFlags(
                            hideControls: false,
                            controlsVisibleAtStart: true,
                            autoPlay: false,
                            mute: false,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: showWidget,
                        child: Text(
                          'Try it Now!',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Visibility(
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        visible: viewVisible,
                        child: Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(top: 50, bottom: 30),
                            child: Timer())),
                  ],
                ),
              ),
            )));
  }
}
