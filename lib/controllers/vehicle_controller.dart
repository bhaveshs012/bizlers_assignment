import 'package:bizlers_assignment/models/vehicle.dart';
import 'package:get/get.dart';

class VehicleController extends GetxController {
  var currVehicleNumber = ''.obs;
  var currVehicleMake = ''.obs;
  var currVehicleModel = ''.obs;
  var currFuelType = ''.obs;
  var currTransmissionType = ''.obs;
  Rx<List<Vehicle>> vehicles = Rx<List<Vehicle>>([]);

  void addVehicle() {
    vehicles.value.add(Vehicle(
      vehicleNumber: currVehicleNumber.value,
      vehicleMake: currVehicleMake.value,
      vehicleModel: currVehicleModel.value,
      fuelType: currFuelType.value,
      vehicleTransmission: currTransmissionType.value,
    ));
  }
}
