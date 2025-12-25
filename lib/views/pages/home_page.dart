import 'package:fivehour/views/widgets/container_widget.dart';
import 'package:fivehour/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroWidget(title: 'Card'),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
            ContainerWidget(
              title: 'Some Card',
              descriptionText: 'Some Card Details',
            ),
          ],
        ),
      ),
    );
  }
}
