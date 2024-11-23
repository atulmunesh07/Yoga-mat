import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogamat/wigths/bluetooth.dart';
class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({super.key});

  @override
  State<BluetoothScreen> createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ble scanner".toUpperCase()),
      ),
      body:  GetBuilder<BleController>(
          init: BleController(),
          builder: (BleController controller){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StreamBuilder<List<ScanResult>>(
                      stream: controller.scanResult,
                      builder: (context , snapshot){
                        if(snapshot.hasData){
                          return ListView.builder(itemBuilder: (context, index){
                            final data = snapshot.data![index];
                            return Card(
                              elevation: 2,
                              child: ListTile(
                                title: Text(data.device.name,style: GoogleFonts.poppins(color: Colors.black),),
                                subtitle: Text(data.device.id.id,style: GoogleFonts.poppins(color: Colors.black),),
                                trailing: Text(data.rssi.toString(),style: GoogleFonts.poppins(color: Colors.black),),
                              ),
                            );
                          });
                        }else{
                          return Center(child: Text("No Device Found",style: GoogleFonts.poppins(color: Colors.black),),);
                        }
                      }
                  ),

                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()=>controller.scanDevices(),
                      child: Text("Scan".toUpperCase())

                  )
                ],
              ),
            );
      } ),
    );
  }
}
