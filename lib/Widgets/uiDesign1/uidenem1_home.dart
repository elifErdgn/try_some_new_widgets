import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:try_some_new_widgets/Widgets/uiDesign1/carouselScreen.dart';


class UiDesign1 extends StatefulWidget {
  const UiDesign1({Key? key}) : super(key: key);

  @override
  State<UiDesign1> createState() => _UiDesign1State();
}

class _UiDesign1State extends State<UiDesign1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFF5D787),

            /// E3B98F - SOLUK KAHVE
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.arrow_circle_left,
                            color: Color(0XFFCD6252),
                          ),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0XFFCD6252), width: 2),
                            shape: BoxShape.circle,
                            color: Color(0XFF34355E),
                          ),
                        ),
                        Text(
                          "BAŞLIK",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Icons.search_sharp,
                                color: Color(0XFFC2977D),
                              ),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0XFFC2977D),
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                                color: Color(0XFF83564F),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.menu_open_rounded,
                                color: Color(0XFF9A3116),
                              ),
                              width: 35,
                              height: 35,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0XFF9A3116),
                                ),
                                color: Color(0XFF72A78D),
                              ),
                            ),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 200,
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/desen.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        height: 210,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5D787).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "  KŞSDFSDF \nSDFSŞLDFSD",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 0),
                                  blurRadius: 15,
                                ),
                              ],
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) => Widget2(),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) => Widdget(),
                    ),
                  ),
                  Stack(
                    children: [
                      GFButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: Text("buton"),
                        shape: GFButtonShape.pills,
                        type: GFButtonType.outline2x,
                      ),
                      GFBadge(
                        border: BorderSide(color: Colors.red,width: 2),
                        child: Text("12"),
                        size: GFSize.MEDIUM,
                        shape: GFBadgeShape.circle,
                        textColor: Colors.black,
                        color: Colors.red.shade200,
                      ),
                    ],
                  ),


                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: 160,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/desen.png"),
              ),
              color: Colors.orange,
              borderRadius: BorderRadius.circular(90),
            ),
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: 80,
          ),
          Text(
            "sdfsdf sdfsdf sfdfsd dfgdfg dfgdfgdfg ",
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class Widdget extends StatelessWidget {
  const Widdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderPageScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        height: 140,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
          //  border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 60,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10,right: 8,left:8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(width: 20,height: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red,),),
                      Container(width: 20,height: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),),
                    ],),
                    Text(
                      "DDDD\nFFFF",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
