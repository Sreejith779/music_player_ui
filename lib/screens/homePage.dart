import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/model/models.dart';
import 'package:music_player/screens/player/player.dart';

import '../utils/textThemes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      appBar: AppBar(
        title: Text(
          "Musify.",
          style: TextThemes.headingtitle,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 30,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Suggested Playlists",
              style: TextThemes.subHeadingtitle,
            ),
            coverImages(context),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Recommended for you",
                style: TextThemes.subHeadingtitle,
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 5),
                  itemCount: songsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        Player(song: songsList[index])));
                      },
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(songsList[index].coverImg))),
                        ),
                        title: Text(songsList[index].songName,
                        style: TextThemes.subTitle,),
                        subtitle: Text(songsList[index].author,
                        style: TextThemes.miniTitle,),
                        trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 10,),
                            Icon(Icons.download)
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget coverImages(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: songsList.length,
          itemBuilder: (context, index) {
            final Song song = songsList[index];
            return Container(
              margin: EdgeInsets.only(right: 20),
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(song.coverImg),
                    fit: BoxFit.cover,
                  )),
            );
          },
        ),
      ),
    );
  }

  recommendedSongs(BuildContext context) {
    return ListView.builder(
        itemCount: songsList.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.white,
          );
        });
  }
}
