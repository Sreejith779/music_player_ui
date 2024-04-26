import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/model/models.dart';
import 'package:music_player/utils/textThemes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Playlist",

        style:TextThemes.headingtitle,),
        centerTitle: true,
      ),
      body: Container(
   margin: EdgeInsets.all(10),
        child: Column(
          children: [
            searchBar(),
            SizedBox(height: 20,),
            Expanded(
              child: Container(

                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 1),
                    itemCount: songsList.length,
                    itemBuilder: (context,index){
                      return Container(
              margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(songsList[index].coverImg)
                          )
                        ),
                      );
                    }),
              ),
            )


          ],
        ),
      ),
    );
  }

  searchBar() {
    return  Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.2),
      ),
      child:   TextField(
        decoration: InputDecoration(
            hintText: "Search..",
            suffixIcon: Icon(Icons.search_outlined,
            color: Colors.red.shade100,),
            hintStyle: TextStyle(
                color: Colors.red.shade100
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }
}
