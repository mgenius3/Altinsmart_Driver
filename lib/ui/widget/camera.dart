import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';

class LiveImagePreview extends StatefulWidget {
  const LiveImagePreview({Key? key}) : super(key: key);

  @override
  State<LiveImagePreview> createState() => _LiveImagePreviewState();
}

class _LiveImagePreviewState extends State<LiveImagePreview> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    final frontCamera = await cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );

    _controller = CameraController(frontCamera, ResolutionPreset.medium);
    return _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: primaryColor.withOpacity(0.3),
                width: 8.0,
              ),
            ),
            child: ClipOval(
              child: CameraPreview(_controller),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
