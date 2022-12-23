import 'package:bizlers_assignment/models/vehicle.dart';
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
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    VehicleDetailTile(
                      'MAKE',
                      vehicle.vehicleMake.toString(),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    VehicleDetailTile(
                      'MODEL',
                      vehicle.vehicleModel.toString(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    VehicleDetailTile(
                      'FUEL TYPE',
                      vehicle.fuelType.toString(),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    VehicleDetailTile(
                      'TRANSMISSION',
                      vehicle.vehicleTransmission.toString(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget VehicleDetailTile(String title, String subtitle) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
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
}

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
