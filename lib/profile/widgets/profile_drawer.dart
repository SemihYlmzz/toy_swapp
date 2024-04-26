import 'package:flutter/material.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/liked_toys/liked_toys.dart';

import '../../settings/settings.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = [
      _DrawerSettingValue(
        title: 'Rate Us',
        iconData: Icons.stars,
        subTitle: 'Rate us out of 5.',
        onTap: () {},
      ),
      _DrawerSettingValue(
        title: 'History',
        iconData: Icons.history,
        subTitle: 'Your toy switch timeline.',
        onTap: () {},
      ),
      _DrawerSettingValue(
        title: 'Settings',
        iconData: Icons.settings,
        subTitle: 'Change is good.',
        onTap: () {
          SettingsRouter.instance.push(context);
          Scaffold.of(context).closeEndDrawer();
          Scaffold.of(context).closeDrawer();
        },
      ),
      _DrawerSettingValue(
        title: 'Liked Toys',
        iconData: Icons.favorite,
        subTitle: 'The toys you liked.',
        onTap: () {
          LikedToysRouter.instance.push(context);
          Scaffold.of(context).closeEndDrawer();
          Scaffold.of(context).closeDrawer();
        },
      ),
      _DrawerSettingValue(
        title: 'Premium',
        iconData: Icons.workspace_premium,
        subTitle: 'Explore premium features.',
        onTap: () {},
        isPremium: true,
      ),
    ];

    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: BaseColumn(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (var index = 0; index < settings.length; index++)
              ListTile(
                tileColor: !index.isEven ? Colors.black12 : null,
                title: Text(settings.elementAt(index).title),
                leading: AnimatedGradient(
                  isPremium: settings.elementAt(index).isPremium,
                  child: Icon(settings.elementAt(index).iconData),
                ),
                subtitle: Text(settings.elementAt(index).subTitle),
                trailing: Icon(Icons.adaptive.arrow_forward),
                onTap: settings.elementAt(index).onTap,
              ),
          ],
        ),
      ),
    );
  }
}

class _DrawerSettingValue {
  const _DrawerSettingValue({
    required this.title,
    required this.iconData,
    required this.subTitle,
    required this.onTap,
    this.isPremium = false,
  });
  final String title;
  final IconData iconData;
  final String subTitle;
  final VoidCallback? onTap;
  final bool isPremium;
}

class AnimatedGradient extends StatelessWidget {
  const AnimatedGradient({
    required this.child,
    required this.isPremium,
    super.key,
  });
  final Widget child;
  final bool isPremium;
  @override
  Widget build(BuildContext context) {
    return isPremium
        ? ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [
                0.25,
                0.50,
                0.75,
              ],
              colors: [
                Colors.purple,
                Colors.deepOrangeAccent,
                Colors.pink,
              ],
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: child,
          )
        : child;
  }
}
