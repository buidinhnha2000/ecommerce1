import 'package:flutter/material.dart';

class BottomCart extends StatefulWidget {
  const BottomCart({Key? key}) : super(key: key);

  @override
  State<BottomCart> createState() => _BottomCartState();
}

class _BottomCartState extends State<BottomCart> {
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

    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 60,
                color: Colors.black45,
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("All", style: TextStyle(fontSize: 17),)
                  ],
                )
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                  height: 60,
                  color: Colors.black45,
                  padding: EdgeInsets.only(top: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tong thanh toan", style: TextStyle(fontSize: 17),),
                      SizedBox(width: 3,),
                      Text("0 USD", style: TextStyle(fontSize: 17, color: Colors.deepOrange),)
                    ],
                  )),
            ),
            Expanded(
                flex: 2,
                child: Container(
                    height: 60,
                    color: Colors.deepOrange[600],
                    child: Center(
                      child: Text(
                        'Mua hang',
                        style: TextStyle(fontSize: 17),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
