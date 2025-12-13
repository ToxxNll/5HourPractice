import 'package:fivehour/views/data/notifiers.dart';
import 'package:fivehour/views/pages/home_page.dart';
import 'package:fivehour/views/pages/profile_page.dart';
import 'package:fivehour/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        centerTitle: true,
        actions: [ValueListenableBuilder(
          valueListenable: selectedThemeNotifier,
          builder: (context, selectedTheme, child) {
            return IconButton(onPressed: () {
              selectedTheme = !selectedTheme;
              print(selectedTheme);
            }, icon: selectedTheme ? Icon(Icons.dark_mode) : Icon(Icons.light_mode));
          }
        )],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
          ],
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
