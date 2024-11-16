import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/assets/images/nike_logo.png',
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info_outline,
                  ),
                  title: const Text(
                    "A B O U T",
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/about_page');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_2_outlined,
                  ),
                  title: const Text(
                    "P R O F I L E",
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/profile_page');
                  },
                ),
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text(
                "L O G O U T",
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/intro_page');
              },
            )
          ],
        ),
      ),
    );
  }
}
