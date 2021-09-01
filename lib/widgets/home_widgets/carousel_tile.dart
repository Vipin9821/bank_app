import 'package:bank_app/repositories/home_carousel_repo.dart';
import 'package:flutter/material.dart';

import 'home_carousel.dart';

class CarouselTile extends StatelessWidget {
  const CarouselTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              title: Row(
                children: [
                  Text("Hello,"),
                  Text(
                    "Jacob Moore !",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            HomeCarousel(
              items: HomeCarouselRepo().carouselData,
            )
          ],
        ),
      ),
    );
  }
}
