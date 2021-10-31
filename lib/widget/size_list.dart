import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  const SizeList({Key? key}) : super(key: key);

  @override
  _SizeListState createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizelist = ['S', 'M', 'L', 'XL', 'XXL'];
  var currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: currentSelected == index
                          ? Theme.of(context).accentColor
                          : Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2)),
                  child: Text(
                    sizelist[index],
                    style: TextStyle(
                        color: currentSelected == index
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(width: 10),
          itemCount: sizelist.length),
    );
  }
}
