import 'package:english_kids_app/models/dummy_data.dart';
import 'package:english_kids_app/models/type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(DetailScreen());

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  String ic_pause =  'assets/images/ic_pause.png';
  String ic_play =  'assets/images/ic_play.png';
  String img;
  final _images = ["https://i.pinimg.com/originals/23/0a/8f/230a8f828e48554f44aa67fd3e2f35ac.jpg", "https://www.abbey-vetgroup.co.uk/template_41868_rWqjP7gz916a7RV6d2BD/site/img/Fotolia_53735947_XS.jpg", "https://ak.picdn.net/shutterstock/videos/1037308034/thumb/1.jpg?ip=x480"];
  PageController _pageController;
  int _currentSlide = 1;


  void playVideo(BuildContext context) {
    Navigator.of(context).pushNamed("/play");
  }

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final tipe = route['tipe'];
    Type selectedType = null;

    if (tipe == "Animals") {
      selectedType = ANIMALS_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    } else if (tipe == "Colours") {
      selectedType = COLOURS_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    } else if (tipe == "Fruits") {
      selectedType = FRUITS_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    } else if (tipe == "Trees") {
      selectedType = TREES_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    } else if (tipe == "Vegetables") {
      selectedType = VEGETABLES_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    } else if (tipe == "Vehicles") {
      selectedType = VEHICLES_DUMMY_DATA.firstWhere((datas) => datas.id == id);
    }
    img = ic_play;

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedType.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Image.network(
                    selectedType.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            TextGenerator("Description"),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        selectedType.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.assignment_ind,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              selectedType.author,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic, fontSize: 15),
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(selectedType.description),
                  ),
                ],
              ),
            ),
            TextGenerator("Photos"),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 200.0,
                              child: PageView.builder(
                                controller: _pageController,
                                onPageChanged: (value) {
                                  setState(() {
                                    _currentSlide = value;
                                  });
                                },
                                itemBuilder: (BuildContext context, int index) => slideShow(index),
                                itemCount: _images.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            TextGenerator("Video"),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: <Widget>[
                        Center(
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_controller.value.isPlaying) {
                                      img = ic_pause;
                                      _controller.pause();
                                    } else {
                                      img = ic_play;
                                      _controller.play();
                                    }
                                  });
                                },
                                child: Icon(
                                   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                                ),
                            ),
                          ],
                        )
                      ],
                    );
                  } else {
                    return LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  slideShow(int index) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          _images[index],
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}

class TextGenerator extends StatelessWidget {
  String value;

  TextGenerator(String text) {
    value = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: new Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

}
