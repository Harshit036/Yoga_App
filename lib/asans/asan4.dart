import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';
import 'package:yoga/widgets/timer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Asan4 extends StatefulWidget {
  const Asan4({Key? key}) : super(key: key);

  @override
  _Asan4State createState() => _Asan4State();
}

class _Asan4State extends State<Asan4> {
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
              title: Text("Vakrasana Or Twisted Pose"),
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
                        image: AssetImage('assets/images/pose4.jpg'),
                        height: 170,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Vakrasana makes the body flexible and reduces belly fat and also helps in improving digestion by regulating digestive juices.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tip: One needs to make a posture like a steady stance by placing the right foot high up on the left thigh and the hands should be over the head with the palms together. The spine must be straight and the sole of the foot flat and firm. After releasing the pose, one needs to change the position and try the other leg.',
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
                          initialVideoId: 'fqqotJRqncU', //Add videoID.
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
