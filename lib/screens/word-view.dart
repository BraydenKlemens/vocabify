import 'package:flutter/material.dart';
import 'package:vocabify/data/dictapi.dart';
import 'package:vocabify/data/httpget.dart';

class WordView extends StatelessWidget {
  WordView({Key? key, required this.word}) : super(key: key);
  final List<String> syns = ["Pepsi", "Coke", "Another Word"];
  final DictItem word;

  @override
  Widget build(BuildContext context) {
    //this needs to be added at the top of the page, but not under appbar or floating action button
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            elevation: 0,
            actions: [
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz, color: Colors.black),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.add_circle_outline),
                            title: Text("Add To Vault"),
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.share),
                            title: Text("Share Word"),
                          ),
                          value: 2,
                        )
                      ])
            ]),
        body: Align(
            alignment: Alignment.topLeft,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(20, 80, 0, 0)),
                            Text(word.word,
                                style: const TextStyle(
                                    fontSize: 30,
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700)),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    // child: ListView.builder(
                                    //   // Let the ListView know how many items it needs to build.
                                    //   itemCount: word.phonetics.length,
                                    //   scrollDirection: Axis.vertical,
                                    //   shrinkWrap: true,
                                    //   // Provide a builder function. This is where the magic happens.
                                    //   // Convert each item into a widget based on the type of item it is.
                                    //   itemBuilder: (context, index) {
                                    //     final item = word.phonetics[index];
                                    //     print(item.text);

                                    //     return ListTile(
                                    //       title: Text(item.text),
                                    //     );
                                    //   },
                                    // ),
                                  ),
                                  Icon(Icons.audio_file),
                                ]),
                          ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Description: ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500)),
                            Padding(padding: EdgeInsets.all(4)),
                            // ListView.builder(
                            //   // Let the ListView know how many items it needs to build.
                            //   itemCount: word.phonetics.length,
                            //   scrollDirection: Axis.vertical,
                            //   shrinkWrap: true,
                            //   // Provide a builder function. This is where the magic happens.
                            //   // Convert each item into a widget based on the type of item it is.
                            //   itemBuilder: (context, index) {
                            //     final item = word.meanings[index].definitions;
                            //     print(item);

                            //     for (Definitions def in item) {
                            //       return ListTile(
                            //         title: Text(def.definition),
                            //       );
                            //     }
                            //   },
                            // ),
                            Text(
                                "This is a descrition that will go here. This description will define the word...",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400)),
                          ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Synonyms: ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500)),
                            const Padding(padding: EdgeInsets.all(4)),
                            Row(children: [
                              for (var syn in syns)
                                Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Card(
                                        color: Colors.lightBlue,
                                        child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(syn))))
                            ]),
                          ])),
                ])));
  }
}
