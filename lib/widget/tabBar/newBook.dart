// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../data/tabbarElement/newBook.dart';

Widget newBook() {
  return Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 210),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: NewBook.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(NewBook[index].imgageUrl,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                  children:
                                  List.generate(5, (index) => Icon(Icons.star,color: Color(0xff89dad0),size: 15,))
                              ),
                              Text(NewBook[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(NewBook[index].authorName,style: TextStyle(color: Colors.grey),),
                              Text(NewBook[index].price),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      );
}