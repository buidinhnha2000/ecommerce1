import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({Key? key}) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return ListView.builder(
        padding: EdgeInsets.only(top: 100),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.black54,
                ),
                padding: EdgeInsets.only(
                  right: 10,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      listProduct[index].img,
                                    ),
                                    fit: BoxFit.fill)))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(listProduct[index].name,
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 15)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                listProduct[index].gia,
                                style: TextStyle(
                                    color: Colors.deepOrange, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.white54,
                                      )),
                                  Text(listProduct[index].soluong,
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white54,
                                      ))
                                ],
                              )
                            ],
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever, size: 30, color: Colors.deepOrange,))
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
