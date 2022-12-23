import 'package:bizlers_assignment/controllers/vehicle_controller.dart';
import 'package:bizlers_assignment/models/vehicle.dart';
import 'package:bizlers_assignment/views/enter_vehicle_number.dart';
import 'package:bizlers_assignment/widgets/vehicleListScreen/vehicle_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleListScreen extends StatelessWidget {
  VehicleListScreen({super.key});
  final VehicleController vehicleController = Get.put(VehicleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() => {
              Get.to(
                () => VehicleNumberScreen(),
              )
            }),
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        leadingWidth: 30.0,
        title: const Text('Vehicle List'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 30.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: vehicleController.vehicles.value.length,
                    itemBuilder: ((context, index) {
                      return VehicleListTile(
                        vehicle: Vehicle(
                          vehicleNumber: vehicleController
                              .vehicles.value[index].vehicleNumber,
                          vehicleMake: vehicleController
                              .vehicles.value[index].vehicleMake,
                          vehicleModel: vehicleController
                              .vehicles.value[index].vehicleModel,
                          fuelType:
                              vehicleController.vehicles.value[index].fuelType,
                          vehicleTransmission: vehicleController
                              .vehicles.value[index].vehicleTransmission,
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
