// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:book_mart/model/all-book.dart';
import 'package:book_mart/widget/tabBar/popularBook.dart';
import 'package:flutter/material.dart';

import '../book_category_list.dart';
import 'freeBook.dart';
import 'newBook.dart';
import 'start.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    Key? key,
  }) : super(key: key);
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
                        text: "????????????",
                      ),
                      Tab(
                        text: "???????????? ??????",
                      ),
                      Tab(
                        text: "???????????????????????????",
                      ),
                      Tab(
                        text: "???????????? ??????",
                      ),
                      Tab(
                        text: "????????????????????? ??????",
                      ),
                      Tab(
                        text: "?????????????????????",
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
                      newBook(),
                      BookCategory(),
                      freeBook(),
                      PopularBooks(),
                      Container(child: Icon(Icons.directions_bike)),
                    ],
                  ),
                ),
              ],
            )));
  }
}
