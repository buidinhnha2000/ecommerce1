import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 65),
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
              child: Container(
                padding: const EdgeInsets.only(left: 10,top: 10, bottom: 10,),
                color: Colors.black12,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: DecorationImage(
                              image: AssetImage(listProduct[index].img),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        width: 250,
                        child: Text(
                          listProduct[index].name,
                          style: const TextStyle(
                              fontSize: 17, color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.more_vert),
                      flex: 1,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
