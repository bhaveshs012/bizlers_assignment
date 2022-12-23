import 'package:flutter/material.dart';

Widget VehicleDetailTile(String title, String subtitle, BuildContext context) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            subtitle.toUpperCase(),
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
