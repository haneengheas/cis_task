// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StroyItem extends StatefulWidget {
  const StroyItem({Key? key}) : super(key: key);

  @override
  _StroyItemState createState() => _StroyItemState();
}

class _StroyItemState extends State<StroyItem> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Stack(
                children:[
                  Container(
                      height: 70,
                      width: 75,
                      margin: const EdgeInsets.symmetric(horizontal: 2.5,vertical: 5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundImage:  AssetImage('assets/doctor1.jpg'),
                      )
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 20,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            )),
                      ))
                ]
            );
          }),
    );
  }
}
