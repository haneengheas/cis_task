import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class V extends StatefulWidget {
  const V({Key? key}) : super(key: key);

  @override
  _VState createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      staggeredTileBuilder: (index)=>StaggeredTile.count(1, index.isEven?1.3:1),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      crossAxisCount: 2,



      itemBuilder: (context,index){
        return Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          decoration: BoxDecoration(
              color: Colors.green,

              borderRadius: BorderRadius.circular(25)
          ),
          child: Column(
            children: [
              Container(
                height:index.isEven? 150:100,
                margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25)
                ),
              )
            ],
          ),
        );
      },

    );
  }
}
