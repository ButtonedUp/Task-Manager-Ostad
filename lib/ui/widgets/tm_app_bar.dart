import 'package:flutter/material.dart';
import 'package:task_manager_ostad/ui/screens/update_profile_screen.dart';
import 'package:task_manager_ostad/ui/utils/app_colors.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
    this.fromUpdateProfile = false,
  });

  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.themeColor,
      title: Row(
        children: [
          CircleAvatar(
            radius: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (!fromUpdateProfile) {
                  Navigator.pushNamed(context, UpdateProfileScreen.name);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rabbil Hasan',
                    style: textTheme.titleSmall?.copyWith(color: Colors.white),
                  ),
                  Text(
                    'rabbil@gmail.com',
                    style: textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
