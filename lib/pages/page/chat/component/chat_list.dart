import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: ListView.builder(
          padding: EdgeInsets.only(top: 140),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: listProduct.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.only(
                    right: 10,
                    top: 5,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(listProduct[index].img),
                                ),)),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(listProduct[index].name,
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 19)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    listProduct[index].gia,
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 15),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text('09/12')
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
