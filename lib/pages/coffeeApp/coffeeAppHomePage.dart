import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const _duration = Duration(
  milliseconds: 500,
);

class CoffeAppHomePage extends StatefulWidget {
  const CoffeAppHomePage({Key? key}) : super(key: key);

  @override
  State<CoffeAppHomePage> createState() => _CoffeAppHomePageState();
}

class _CoffeAppHomePageState extends State<CoffeAppHomePage> {
  final _pageCoffeeController = PageController(
    viewportFraction: 0.3,
  );

  final _pageTextController = PageController();

  double _currentPage = 0.0;
  double _textPage = 0.0;

  void _coffeeScrolListener() {
    setState(() {
      _currentPage = _pageCoffeeController.page!;
    });
  }

  void _textScrollListener() {
    _textPage = _currentPage;
  }

  @override
  void initState() {
    _pageCoffeeController.addListener(_coffeeScrolListener);
    _pageCoffeeController.addListener(_textScrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _pageCoffeeController.removeListener(_coffeeScrolListener);
    _pageCoffeeController.removeListener(_textScrollListener);

    _pageCoffeeController.dispose();
    _pageTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
              left: 20,
              right: 20,
              bottom: -size.height * 0.22,
              height: size.height * 0.4,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.shade200,
                      blurRadius: 100,
                      offset: Offset.zero,
                      spreadRadius: 35,
                    ),
                  ],
                ),
              )),
          Transform.scale(
            scale: 1.6,
            alignment: Alignment.bottomCenter,
            child: PageView.builder(
              controller: _pageCoffeeController,
              scrollDirection: Axis.vertical,
              itemCount: coffees.length + 1,
              onPageChanged: (value) {
                if (value < coffees.length) {
                  _pageTextController.animateToPage(
                    value,
                    duration: _duration,
                    curve: Curves.linear,
                  );
                }
              },
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox.shrink();
                }
                final coffee = coffees[index - 1];
                final result = _currentPage - index + 1;
                final value = -0.4 * result + 1;
                final opacity = value.clamp(0.0, 1.0);
                //  print(result);

                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..translate(
                        0.0,
                        MediaQuery.of(context).size.height /
                            2.6 *
                            (1 - value).abs(),
                      )
                      ..scale(value),
                    child: Opacity(
                        opacity: opacity,
                        child: Image.asset(
                          coffee.image,
                          height: 100,
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            top: 40,
            right: 0,
            height: 100,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: coffees.length,
                    controller: _pageTextController,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final opacity =
                          (1 - (index - _textPage).abs()).clamp(0.0, 1.0);
                      return Opacity(
                          opacity: opacity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.2),
                            child: Text(
                              coffees[index].name,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(height: 8),
                AnimatedSwitcher(
                  duration: _duration,
                  child: Text(
                    "\$${coffees[_currentPage.toInt()].price.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 25),
                    key: Key(coffees[_currentPage.toInt()].name),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

double _doubleInRange(Random source, num start, num end) =>
    source.nextDouble() * (end - start);
final random = Random();
final coffees = List.generate(
  _names.length,
  (index) => Coffee(
    name: _names[index],
    image: "assets/images/icedcoffe.png",
    price: _doubleInRange(random, 3, 7),
  ),
);

class Coffee {
  Coffee({
    required this.name,
    required this.image,
    required this.price,
  });

  final String name;
  final String image;
  final double price;
}

final _names = [
  'Caramel Cold Drink',
  'Iced Coffee Mocha',
  'Caramalized Pecan Latte',
  'Toffe Nut Latte',
  'Capuchino',
  'Toffe Nut Iced Latte',
  'Americano',
  'Caramel Macchiato',
];

class CoffeeDetailPage extends StatelessWidget {
  const CoffeeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        // if (details.primaryDelta < -20) {
        //   Navigator.of(context).push(
        //     PageRouteBuilder(
        //       transitionDuration: Duration(milliseconds: 650),
        //       pageBuilder: (context, animation, _) {
        //         return FadeTransition(
        //           opacity: animation,
        //         child: CoffeAppHomePage(),
        //         );
        //       },
        //     ),
        //   );
        // }
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA89276),
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.15,
              child: Hero(
                tag: '7',
                child: Image.asset('assets/images/icedcoffe.png'),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height * 0.7,
              left: 0,
              right: 0,
              bottom: 0,
              child: Hero(
                tag: '8',
                child: Image.asset(
                  'assets/images/drinks (1).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height,
              left: 0,
              right: 0,
              bottom: -MediaQuery.of(context).size.height * 0.8,
              child: Hero(
                tag: '9',
                child: Image.asset(
                  'assets/images/drinks (3).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              height: 140,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                'assets/images/drinks (3).png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
