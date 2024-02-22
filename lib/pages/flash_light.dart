import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlashLightState();
  }

}

class _FlashLightState extends State<FlashLight>{
  late CameraController _controller;
  late List<CameraDescription> cameras;

  @override
  void initState() {
    super.initState();
    requestPermissions();
    initializeCamera();
    // requestPermissions();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    if(cameras.isNotEmpty) {
      _controller = CameraController(cameras[0], ResolutionPreset.veryHigh);
      await _controller.initialize();
    }
    // _controller.initialize().then((_) {
    //   if (!mounted) {
    //     return;
    //   }
    //   setState(() {});
    // }).catchError((Object e) {
    //   if (e is CameraException) {
    //     switch (e.code) {
    //       case 'CameraAccessDenied':
    //       // Handle access errors here.
    //         break;
    //       default:
    //       // Handle other errors here.
    //         break;
    //     }
    //   }
    // });
  }

  Future<void> requestPermissions() async {
    var status = await Permission.camera.status;
    if (status != PermissionStatus.granted) {
      await Permission.camera.request();
    }
  }

  Future<void> toggleFlashlight() async {
    if (_controller.value.isInitialized) {
      if (_controller.value.flashMode == FlashMode.off) {
        await _controller.setFlashMode(FlashMode.torch);
      } else {
        await _controller.setFlashMode(FlashMode.off);
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (!_controller.value.isInitialized) {
    //   return Container(); // Replace with a loading indicator if needed
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashlight App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CameraPreview(_controller),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: toggleFlashlight,
            child: Text('Toggle Flashlight'),
          ),
        ],
      ),
    );
  }
}