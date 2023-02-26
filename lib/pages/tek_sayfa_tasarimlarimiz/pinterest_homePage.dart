import 'package:flutter/material.dart';

class Pinterest_HomePage extends StatefulWidget {
  const Pinterest_HomePage({Key? key}) : super(key: key);

  @override
  State<Pinterest_HomePage> createState() => _Pinterest_HomePageState();
}

class _Pinterest_HomePageState extends State<Pinterest_HomePage> {
  bool isSelected = false;
  List<String> veri = ["dsdfs", "ffff", "sssss", "fdfdff","sdfsdf","sdfdf"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fresh Juices",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("We server over 200 varities of fresh juices"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.black12,
                    //   offset: Offset(0, 0),
                    //   blurRadius: 15,
                    //   spreadRadius: 2,
                    // )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.black45,
                      ),
                      border: InputBorder.none,
                      hintText: "Şifre",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                child: ListView.builder(
                  itemCount: veri.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        width: 70,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.red.shade200
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            veri[index],
                          ),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFADD8CE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (1).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFD696C0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (2).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFFEDA90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (5).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFFDA597),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (6).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFB9E0A2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (4).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFF0DAA3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (3).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFFFF7D63),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (4).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 120,
                      onPressed: () {
                        print("tıklandı");
                      },
                      elevation: 0,
                      color: Color(0xFF6DBFD1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/drinks (3).png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class KategoriCard extends StatelessWidget {
  const KategoriCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



