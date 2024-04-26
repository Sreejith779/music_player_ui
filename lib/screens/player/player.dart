import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/model/models.dart';

import '../../utils/textThemes.dart';

class Player extends StatefulWidget {
  const Player({super.key, required this.song});
  final Song song;
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;

  Duration duration = const Duration();
  Duration position = const Duration();

  @override


  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_drop_down,
        color: Colors.red.shade100,
        size: 30,),
        title: Text("Now Playing",
        style: TextThemes.headingtitle,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(widget.song.coverImg),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(widget.song.songName,
              style: TextThemes.headingtitle,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(widget.song.author,
              style: TextThemes.miniTitle,),
            ),
            const SizedBox(height: 10),
            Slider(
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                await player.seek(Duration(seconds: value.toInt()));
                setState(() {});
              },
              min: 0,
              max: duration.inSeconds.toDouble(),
              inactiveColor: Colors.white,
              activeColor: Colors.red.shade100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text( "00:00",
                style: TextStyle(
                  color: Colors.white
                ),),
                Text("03.50",
                style: TextStyle(
                  color: Colors.white
                ),),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.download,
                  color: Colors.red.shade100,),
                  Icon(Icons.star_border,
                  color: Colors.red.shade100,),
                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.sync_outlined,
                color: Colors.grey,),
                const Icon(Icons.fast_rewind,
                color: Colors.grey,size: 40,),
                const SizedBox(width: 20),
                Icon( Icons.pause_circle ,
                  color: Colors.red.shade100,
                  size: 90,
                ),
                const SizedBox(width: 20),
                const Icon(Icons.fast_forward_rounded,
                  color: Colors.grey,size: 40,),
                const Icon(Icons.sync_disabled,
                  color: Colors.grey),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
FaIcon(FontAwesomeIcons.volumeMute,
color: Colors.white,size: 20,),
FaIcon(FontAwesomeIcons.music,
color: Colors.white,
    size: 20,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text("Playlist "),
                const Text(" | ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                text(" Lyrics")
              ],
            )
          ],
        ),
      ),
    );
  }

  text(text) {
    return Text(text,
    style: TextStyle(
      fontSize: 16,
      color: Colors.red.shade100
    ),);
  }
}
