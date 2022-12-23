import 'package:bizlers_assignment/constants/data.dart';
import 'package:bizlers_assignment/constants/fonts.dart';
import 'package:bizlers_assignment/controllers/vehicle_controller.dart';
import 'package:bizlers_assignment/views/vehicle_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleTransmissionScreen extends StatelessWidget {
  VehicleTransmissionScreen({super.key});

  final VehicleController vehicleController = Get.put(VehicleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0,
        title: const Text('Select Transmission Type'),
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
                  itemCount: transmissionTypes.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(
                        transmissionTypes[index],
                        style: kListSubtitle,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          vehicleController.currTransmissionType.value =
                              transmissionTypes[index];
                          vehicleController.addVehicle();
                          Get.offAll(() => VehicleListScreen());
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
