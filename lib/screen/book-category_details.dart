import 'package:book_mart/model/all-book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCategoryDetails extends StatelessWidget {

  const BookCategoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Islamic Book"),
        backgroundColor: Color(0xff0d964c),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
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
                            child: Image.asset("assets/books_image/book_cover.jpg",height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                  children:
                                  List.generate(5, (index) => Icon(Icons.star,color: Color(0xff89dad0),size: 15,))
                              ),
                              Text("Book Name",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Author NAme",style: TextStyle(color: Colors.grey),),
                              Text("Price"),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
