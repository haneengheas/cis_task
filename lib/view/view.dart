import 'dart:ui';

import 'package:cis_task/styles/colors.dart';
import 'package:cis_task/view/Story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Doctors',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_rounded,
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list_outlined,
                    color: purple,
                    size: 40,
                  ))
            ],
          ),
          const StroyItem(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width,
            child: StaggeredGridView.countBuilder(
              staggeredTileBuilder: (index) =>
                  StaggeredTile.count(1, index.isEven ? 1.3 : 1),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              crossAxisCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: .5,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: index.isEven ? 150 : 115,
                        // width: index.isEven ? 300 :150,

                        padding: index.isEven
                            ? const EdgeInsets.symmetric(
                                vertical: 15)
                            : const EdgeInsets.only(top:0),
                        child: ClipRRect(
                          borderRadius: index.isEven
                              ? BorderRadius.circular(15.0)
                              : BorderRadius.circular(15.0),
                          child: const Image(
                            image: AssetImage('assets/doctor1.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'Dr.hayile Siphron',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'Dentist',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Text(
                            '540 Reviews',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
