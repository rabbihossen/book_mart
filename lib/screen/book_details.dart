import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 10,),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(width: 10,),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(Icons.shopping_cart_outlined),
                          CircleAvatar(
                            child: Text("0",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold),),
                            backgroundColor: Colors.red,
                            radius: 6,

                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Divider(),
                Container(
                  //height: 350,
                  width: 300,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Book Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Author Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("Islamic"),
                      SizedBox(height: 10,),
                      Text("৳50"),
                      SizedBox(height: 10,),
                      Wrap(
                          children:
                          List.generate(5, (index) => Icon(Icons.star,color: Color(0xff89dad0),size: 15,))
                      ),
                      SizedBox(height: 10,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset("assets/books_image/book_cover.jpg",height:200, width: 150,fit: BoxFit.cover,),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 115,
                      height: 30,
                      child: SizedBox(
                          width: (MediaQuery.of(context).size.width)-50,
                          height: 50,
                          child: ElevatedButton(style: ElevatedButton.styleFrom(
                              primary: Color(0xffffffff),
                              onPrimary: Colors.white,
                              elevation: 2,
                              side: BorderSide(width: 2, color: Color(0xff0d964c),)
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))


                          ),onPressed: () {}, child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.remove_red_eye_outlined,size: 18,color: Color(0xff0d964c)),
                              Text("Preview", style: TextStyle(fontSize: 15,color: Color(0xff0d964c)),)
                            ],
                          ))),),
                    SizedBox(width: 10,),
                    SizedBox(
                        width: 115,
                        height: 30,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Color(0xff0d964c),
                          onPrimary: Colors.white,
                          elevation: 2,
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))


                        ),onPressed: () {
                          showModalBottomSheet(context: context, builder: (context){
                            return Container(
                              padding: EdgeInsets.all(20),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Your payable amount:",style: TextStyle(fontSize: 20),),
                                      Text("৳50",style: TextStyle(fontSize: 20),),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Local payment",style: TextStyle(fontSize: 15),),
                                      Row(
                                        children: [
                                          Image.asset("assets/payment_image/bkash.png",height: 30, width: 30,),
                                          Image.asset("assets/payment_image/nagad.png",height: 30, width: 30,),
                                          Image.asset("assets/payment_image/rocket.png",height: 30, width: 30,),
                                        ],
                                      )
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Debit/Credit payment",style: TextStyle(fontSize: 15),),
                                      Image.asset("assets/payment_image/visaCard.png",height: 50, width: 50,),
                                    ],
                                  ),
                                  Spacer(),
                                  SizedBox(
                                      width: (MediaQuery.of(context).size.width)-50,
                                      height: 40,
                                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                                          primary: Color(0xff0d964c),
                                          onPrimary: Colors.white,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32)
                                          )


                                      ),onPressed: () {}, child: Text("Continue", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),))),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),topRight: Radius.circular(20))
                              ),
                            );
                          });
                        },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.book_outlined,size: 18,),
                                Text("Buy Now", style: TextStyle(fontSize: 15,),)
                              ],
                            ))),
                  ],
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: RichText(text: TextSpan(
                      text: "Description: ",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "It is a long established fact that a reader will be distracted by the readable content of a "
                              "page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less "
                              "normal distribution of letters, as opposed to using 'Content here, content here', making it "
                              "look like readable English. Many desktop publishing packages and web page editors now use "
                              "Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web "
                              "sites still in their infancy. Various versions have evolved over the years, sometimes by "
                              "accident, sometimes on purpose (injected humour and the like).",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),
                        )
                      ]
                  ),),
                ),
                Divider(),
                Column(
                  children: [
                    Text("Some more books",style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Container(
                      //height: ,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 8,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 250
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
