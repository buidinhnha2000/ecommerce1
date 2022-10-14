import 'package:flutter/material.dart';
import 'package:ecommerce/provider/item/item.dart';

class CategoriHome extends StatelessWidget {
  const CategoriHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(listCategori.length, (index) {
            return GestureDetector(
              onTap: null,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(3),
                    child: Icon(
                      listCategori[index].icon,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    listCategori[index].text,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
          })),
    );
    // return Padding(
    //   padding: EdgeInsets.only(left: 20, top: 20),
    //   child: GridView.builder(
    //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //           maxCrossAxisExtent: 100,
    //           childAspectRatio: 2/2,
    //           crossAxisSpacing: 20,
    //           mainAxisSpacing: 20
    //       ),
    //       scrollDirection: Axis.horizontal,
    //       itemCount: listCategori.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         return GestureDetector(
    //           child: Column(
    //             children: [
    //               Icon(
    //                 listCategori[index].icon,
    //                 color: Colors.white54,
    //               ),
    //               const SizedBox(
    //                 height: 5,
    //               ),
    //               Text(
    //                 listCategori[index].text,
    //                 style: const TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.white54,
    //                     fontWeight: FontWeight.w500),
    //               )
    //             ],
    //           ),
    //         );
    //     },
    //
    //   ),
    // );
  }
}
