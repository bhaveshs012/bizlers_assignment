import 'package:bizlers_assignment/constants/data.dart';
import 'package:bizlers_assignment/constants/fonts.dart';
import 'package:bizlers_assignment/controllers/vehicle_controller.dart';
import 'package:bizlers_assignment/views/select_transmission.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleFuelTypeScreen extends StatelessWidget {
  VehicleFuelTypeScreen({super.key});

  final VehicleController vehicleController = Get.put(VehicleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0,
        title: const Text('Select Fuel Type'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: fuelTypes.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(
                        fuelTypes[index],
                        style: kListSubtitle,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          vehicleController.currFuelType.value =
                              fuelTypes[index];
                          Get.to(() => VehicleTransmissionScreen());
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.black54,
                          size: 30.0,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
