
import 'package:bizlers_assignment/models/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleDetailTitleBar extends StatelessWidget {
  const VehicleDetailTitleBar({
    Key? key,
    required this.vehicle,
  }) : super(key: key);

  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${vehicle.vehicleModel} ${vehicle.vehicleTransmission}'
                .toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            '${vehicle.vehicleNumber}'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
