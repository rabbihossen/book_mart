// import 'package:book_mart/global/constant/category_list.dart';
// import 'package:book_mart/screen/book_category/islamic_book_list.dart';
// import 'package:flutter/material.dart';

// class BookCategory extends StatefulWidget {
//   const BookCategory({Key? key}) : super(key: key);

//   @override
//   _BookCategoryState createState() => _BookCategoryState();
// }

// class _BookCategoryState extends State<BookCategory> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       child: ListView.builder(
//           itemCount: categoryList.length,
//           itemBuilder: (context,index){
//             return ListTile(
//               title: Text(categoryList[index].categoryTitle),
//               leading: Image.asset(categoryList[index].categoryImage),
//               subtitle: Text(categoryList[index].categoryQuantity),
//               trailing: Icon(Icons.arrow_forward_ios_outlined),
//               onTap: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>islamicBookList()));
//               },
//             );
//           }),
//     );
//   }
// }
