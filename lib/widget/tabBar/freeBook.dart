// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:book_mart/data/tabbarElement/freeBook.dart';
import 'package:flutter/material.dart';

Widget freeBook() {
  return Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: FreeBook.length,
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
                            child: Image.asset(FreeBook[index].imgageUrl,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                  children:
                                  List.generate(5, (index) => Icon(Icons.star,color: Color(0xff89dad0),size: 15,))
                              ),
                              Text(FreeBook[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(FreeBook[index].authorName,style: TextStyle(color: Colors.grey),),
                              Text(FreeBook[index].price),
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