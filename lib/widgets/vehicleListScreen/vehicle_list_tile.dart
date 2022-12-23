import 'package:bizlers_assignment/constants/fonts.dart';
import 'package:bizlers_assignment/models/vehicle.dart';
import 'package:bizlers_assignment/views/vehicle_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleListTile extends StatelessWidget {
  const VehicleListTile({
    super.key,
    required this.vehicle,
  });
  final Vehicle vehicle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      title: Text(
        vehicle.vehicleNumber.toString(),
        style: kListTitle,
      ),
      subtitle: Text(
        '${vehicle.vehicleMake.toString()} ${vehicle.vehicleModel.toString()}',
        style: kListSubtitle,
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(() => VehicleDetailScreen(
                vehicle: vehicle,
              ));
        },
        icon: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.black54,
          size: 30.0,
        ),
      ),
    );
  }
}
