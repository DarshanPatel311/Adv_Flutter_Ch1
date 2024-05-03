import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'homescreen/components/album_view.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  get provider => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Gallery",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffc9ddf8)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Albums",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 30,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ),
          AlbumView(provider:provider)

        ],
      ),
    );
  }
}
