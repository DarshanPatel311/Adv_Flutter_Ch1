import 'package:adv_flutter_ch1/1_7_gallery/utils/img_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';
import 'HiddenScreen.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

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
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffacc8f1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Albums",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
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
                  Spacer(),
                  Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hide'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Setting'),
                          ],
                        ),
                        onTap: () async {
                          if (await Provider.of<GalyerProvider>(context,
                                  listen: false)
                              .fingerprint()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HiddenScreen(),
                                ));
                          }
                        },
                      ),
                    ],
                  )
                ],
              ),
              GridView.builder(
                itemCount: 10,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 140),
                itemBuilder: (context, index) => imgBox(Profile[index]['img'],
                    Profile[index]['name'], Profile[index]['count']),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column imgBox(String img1, String name, int num,) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {

                },
                isDefaultAction: true,
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {

                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  },
                trailingIcon: CupertinoIcons.heart,
                child: const Text('Favorite'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {

                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            child:  Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(img1), fit: BoxFit.cover),
                ),

              ),
            ),
          ),


        Text(name),
        Text(num.toString())
      ],
    );
  }
}
