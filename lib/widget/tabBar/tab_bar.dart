// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../book_category_list.dart';
import 'freeBook.dart';
import 'newBook.dart';
import 'start.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text(
                  "Book Mart",
                  style: TextStyle(color: Colors.black),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                      IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active,
                        color: Colors.black,
                      )),
                ]),
            backgroundColor: Color(0xffedf1f2),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    automaticIndicatorColorAdjustment: true,
                    labelColor: Color(0xff0D964C),
                    unselectedLabelColor: Colors.black54,
                    physics: RangeMaintainingScrollPhysics(),
                    tabs: [
                      Tab(
                        text: "শুরু",
                      ),
                      Tab(
                        text: "নতুন বই",
                      ),
                      Tab(
                        text: "ক্যাটাগরি",
                      ),
                      Tab(
                        text: "ফ্রী বই",
                      ),
                      Tab(
                        text: "জনপ্রিয় বই",
                      ),
                     
                      Tab(
                        text: "প্রকাশক",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    children: [
                      start(),
                      //Container(child: Icon(Icons.directions_bike)),
                      newBook(),
                      // BookCategory(),
                     freeBook(),
                      
                      Container(child: Icon(Icons.directions_bike)),
                      Container(child: Icon(Icons.directions_bike)),
                      Container(child: Icon(Icons.directions_bike)),
                    ],
                  ),
                ),
              ],
            )));
  }
}
