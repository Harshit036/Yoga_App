import 'package:flutter/material.dart';
import 'package:yoga/widgets/drawer.dart';
import 'package:yoga/widgets/timer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Asan1 extends StatefulWidget {
  const Asan1({Key? key}) : super(key: key);

  @override
  _Asan1State createState() => _Asan1State();
}

class _Asan1State extends State<Asan1> {
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
              title: Text("Sukhasana Or Easy Pose"),
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
                        image: AssetImage('assets/images/pose1.jpg'),
                        height: 250,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'This is an amazing one for beginners as it gives one the desired comfort. The asana is beyond the horizons of the physical dimension and gives a spiritual bliss. Sukhasana is best to reduce anxiety and stress and mental tiredness. It corrects the body posture and stretches the chest and spine.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
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
                          initialVideoId: 'ri9B8IzLXIY', //Add videoID.
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
