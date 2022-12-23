import 'package:bizlers_assignment/controllers/vehicle_controller.dart';
import 'package:bizlers_assignment/views/select_make.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleNumberScreen extends StatelessWidget {
  VehicleNumberScreen({super.key});

  final VehicleController vehicleController = Get.put(
    VehicleController(),
  );
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _vehicleNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          if (_formKey.currentState!.validate()) {
            vehicleController.currVehicleNumber.value =
                _vehicleNumberController.text.replaceAll(' ', '');
            print("All good");
            Get.to(
              () => VehicleMakeScreen(),
            );
          }
        }),
        child: const Icon(
          Icons.keyboard_arrow_right_rounded,
          size: 30.0,
        ),
      ),
      appBar: AppBar(
        leadingWidth: 30.0,
        title: const Text('Create a new Vehicle Profile'),
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VEHICLE NUMBER',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _vehicleNumberController,
                  validator: ((value) {
                    if (value!.isEmpty ||
                        !RegExp('^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}') //* CHECK FOR VALID NUMBER USING REGEX
                            .hasMatch(
                          value.replaceAll(' ', ''),
                        )) {
                      return 'Please enter vehicle number';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter Vehicle Number',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
