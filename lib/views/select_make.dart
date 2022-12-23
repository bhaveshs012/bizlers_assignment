import 'package:bizlers_assignment/constants/fonts.dart';
import 'package:bizlers_assignment/controllers/api_controller.dart';
import 'package:bizlers_assignment/controllers/vehicle_controller.dart';
import 'package:bizlers_assignment/views/select_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleMakeScreen extends StatelessWidget {
  VehicleMakeScreen({super.key});

  final VehicleController vehicleController = Get.put(VehicleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0,
        title: const Text('Select Make'),
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
              FutureBuilder(
                future: ApiController().get2wMakes(),
                builder: ((context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting &&
                      snapshot.hasData == false)
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  if (snapshot.data != null) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            title: Text(
                              snapshot.data![index],
                              style: kListSubtitle,
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                vehicleController.currVehicleMake.value =
                                    snapshot.data![index];
                                Get.to(() => VehicleModelScreen());
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
                    );
                  }
                  return Container(
                    child: const Text("No data"),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
