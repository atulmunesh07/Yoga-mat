
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:permission_handler/permission_handler.dart';

class BleController extends GetxController{

  FlutterBlue ble = FlutterBlue.instance;
  Future scanDevices() async{
   if(await Permission.bluetooth.request().isGranted){
     if(await Permission.bluetoothConnect.request().isGranted){
       ble.startScan(timeout: Duration(seconds: 20));

       ble.stopScan();
     }
   }
  }
  Stream<List<ScanResult>>get scanResult => ble.scanResults;
}

