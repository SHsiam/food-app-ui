import 'package:flutter/material.dart';
import 'package:simplebuttonapp/styles/category-style.dart';

List<CategoryStyle> categoyList=[
 CategoryStyle("Burger", "burger.jpg"),
  CategoryStyle("Chicken", "chicken.png"),
  CategoryStyle("French", "french.jpg"),
  CategoryStyle("Icc-cream", "icccream.png"),
  CategoryStyle("Noodles", "noodles.jpg"),
  CategoryStyle("Pizza", "pizza.jpg"),
  CategoryStyle("Sandwich", "sandwich.jpg"),
  CategoryStyle("Soup", "soup.jpg"),
  CategoryStyle("Sushi", "sushi.png"),
];

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoyList.length,
        itemBuilder:(_,index){
          return Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(5, 8),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/${categoyList[index].image}",
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${categoyList[index].name}",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent),
                )
              ],
            ),
          );
        },),
    );
  }
}
