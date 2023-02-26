import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({Key? key}) : super(key: key);

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final controller = CarouselController();
  int activeIndex = 0;
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
              height: 400,
              initialPage: 0,
              // viewportFraction: 1,  /// ??
              autoPlay: true,

              ///Otomatik slider
              enlargeCenterPage: true,
              // animasyon
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
              pageSnapping: false,
              // reverse: true, /// tam tersi slider
              autoPlayInterval: Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
          itemCount: imageList.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = imageList[index];
            return buildImage(urlImage, index);
          },
        ),
        SizedBox(height: 32),
        buildIndicator(),
       // buildButtons(),
      ],
    );
  }

  Widget buildImage(String urlImage, index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.grey,
      width: double.infinity,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageList.length,
        effect: ColorTransitionEffect(),
      );

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: previous,
            child: Icon(
              Icons.arrow_back,
              size: 32,
            ),
          ),
          stretch ? Spacer() : SizedBox(width: 32),
          ElevatedButton(
            onPressed: next,
            child: Icon(
              Icons.arrow_forward,
              size: 32,
            ),
          ),
        ],
      );

  void next() => controller.nextPage(duration: Duration(milliseconds: 500),);

  void previous() =>
      controller.previousPage(duration: Duration(milliseconds: 500));
}
