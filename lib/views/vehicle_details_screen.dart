import 'package:bizlers_assignment/models/vehicle.dart';
import 'package:bizlers_assignment/widgets/vehicleDetailScreen/vehicle_detail_tile.dart';
import 'package:bizlers_assignment/widgets/vehicleDetailScreen/vehicle_detail_title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleDetailScreen extends StatelessWidget {
  const VehicleDetailScreen({super.key, required this.vehicle});
  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.deepPurple,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.all(
                      0.0,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  Spacer(),
                  VehicleDetailTitleBar(vehicle: vehicle),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.all(
              25.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VehicleDetailTile(
                        'MAKE', vehicle.vehicleMake.toString(), context),
                    SizedBox(
                      width: 25.0,
                    ),
                    VehicleDetailTile(
                        'MODEL', vehicle.vehicleModel.toString(), context),
                  ],
                ),
                const SizedBox(
                  height: 55.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VehicleDetailTile(
                        'FUEL TYPE', vehicle.fuelType.toString(), context),
                    SizedBox(
                      width: 25.0,
                    ),
                    VehicleDetailTile('TRANSMISSION',
                        vehicle.vehicleTransmission.toString(), context),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
