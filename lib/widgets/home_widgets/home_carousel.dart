import 'package:bank_app/models/home_carousel_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCarousel extends StatefulWidget {
  final List<HomeCarouselModel>? items;
  const HomeCarousel({Key? key, this.items}) : super(key: key);

  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey[200],
      child: Column(
        children: [
          CarouselSlider(
            items: List.generate(
              widget.items!.length,
              (index) => Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 390,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xff4a4b54),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 45,
                        right: -45,
                        child: SvgPicture.asset(
                          'assets/circle.svg',
                          height: 80,
                          color: Color(0xfff6c6c2),
                        ),
                      ),
                      Positioned(
                        right: -35,
                        bottom: 45.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                          ),
                          child: SvgPicture.asset(
                            'assets/circle.svg',
                            height: 70,
                            color: Color(0xffa4a1d9),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Image.asset(
                          widget.items![index].imagePath!,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        top: 42,
                        left: 32,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              widget.items![index].amount!.toString(),
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 15,),
                            Text(widget.items![index].cartNumber!,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            options: CarouselOptions(
                onPageChanged: (index, r) {
                  _currentIndex = index;
                  setState(() {});
                },
                enableInfiniteScroll: false,
                scrollPhysics: BouncingScrollPhysics()),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                widget.items!.length,
                (index) => Container(
                      height: 8,
                      width: 8,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.black
                              : Colors.grey),
                    )),
          )
        ],
      ),
    );
  }
}
