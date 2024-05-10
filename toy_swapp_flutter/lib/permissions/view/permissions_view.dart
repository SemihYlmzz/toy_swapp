import 'package:flutter/material.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:permission_service/permission_service.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../permissions.dart';

class PermissionsView extends StatelessWidget {
  const PermissionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PermissionsAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PermissionStatusDisplayer(
            iconData: Icons.camera_alt,
            title: 'Camera',
            description: 'To take Pictures or Video of your toys.',
            permissionState: PermissionState.granted,
          ),
          PermissionStatusDisplayer(
            iconData: Icons.photo_library,
            title: 'Photos',
            description: 'To select pictures of your toys.',
            permissionState: PermissionState.permanentlyDenied,
          ),
          PermissionStatusDisplayer(
            iconData: Icons.location_on,
            title: 'Location',
            description: 'To see distance of toys.',
            permissionState: PermissionState.requestable,
          ),
          PermissionStatusDisplayer(
            iconData: Icons.mic,
            title: 'Microphone',
            description: 'To send voice messages in chat.',
            permissionState: PermissionState.permanentlyDenied,
          ),
          PermissionStatusDisplayer(
            iconData: Icons.notifications,
            title: 'Notifications',
            description: 'When someone sends you a message or likes your toy.',
            permissionState: PermissionState.requestable,
          ),
        ],
      ),
    );
  }
}

class PermissionStatusDisplayer extends StatelessWidget {
  const PermissionStatusDisplayer({
    required this.iconData,
    required this.title,
    required this.description,
    required this.permissionState,
    super.key,
  });
  final IconData iconData;
  final String title;
  final String description;
  final PermissionState permissionState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedPaddings.bottom32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      size: 30,
                    ),
                    SharedGap.gap8,
                    Text(title, style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                Text(description),
              ],
            ),
          ),
          TouchRipple<void>(
            onTap: () {},
            rippleColor: Colors.white60,
            borderRadius: SharedBorderRadius.circular12,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: switch (permissionState) {
                  PermissionState.granted => Colors.greenAccent,
                  PermissionState.requestable => Colors.orangeAccent,
                  PermissionState.permanentlyDenied => Colors.redAccent,
                },
                borderRadius: SharedBorderRadius.circular12,
                boxShadow: [
                  BoxShadow(
                    color: switch (permissionState) {
                      PermissionState.granted => Colors.greenAccent,
                      PermissionState.requestable => Colors.orangeAccent,
                      PermissionState.permanentlyDenied => Colors.redAccent,
                    },
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: switch (permissionState) {
                  PermissionState.granted => const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  PermissionState.requestable => const Text('Allow'),
                  PermissionState.permanentlyDenied => const Text('Denied'),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
