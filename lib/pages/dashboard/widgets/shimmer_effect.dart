import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Number of shimmering items
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          period: Duration(milliseconds: 800),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
            ),
            title: Container(
              height: 20,
              color: Colors.grey,
            ),
            subtitle: Container(
              height: 15,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}