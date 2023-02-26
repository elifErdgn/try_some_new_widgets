import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class SliderDrawerPaketi extends StatefulWidget {
  const SliderDrawerPaketi({Key? key}) : super(key: key);

  @override
  State<SliderDrawerPaketi> createState() => _SliderDrawerPaketiState();
}

class _SliderDrawerPaketiState extends State<SliderDrawerPaketi> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = 'Home';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        appBar: SliderAppBar(
            appBarColor: Colors.blue,
            title: Text(title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
        key: _key,
        sliderOpenSize: 179,
        slider: _SliderView(
          onItemClick: (title) {
            _key.currentState!.closeSlider();
            setState(() {
              this.title;
            });
          },
        ),
        child: _AuthorList(),
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/illus (1).png"),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Mirabel',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          _SliderMenuItem(
              title: 'Home', iconData: Icons.home, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Add Post',
              iconData: Icons.add_circle,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Notification',
              iconData: Icons.notifications_active,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Likes', iconData: Icons.favorite, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Setting', iconData: Icons.settings, onTap: onItemClick),
          _SliderMenuItem(
              title: 'LogOut',
              iconData: Icons.arrow_back_ios,
              onTap: onItemClick),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key, required this.title, required this.iconData, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          iconData,
          color: Colors.black,
        ),
        onTap: () => onTap?.call(title));
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Data> dataList = [];
    dataList.add(Data(Colors.amber, "Amelia Brown",
        "Life would be a great deal easier if dead things had the decency to remain dead"));
    dataList.add(Data(Colors.orange, 'Olivia Smith',
        'That proves you are unusual," returned the Scarecrow'));
    dataList.add(Data(Colors.deepOrange, 'Sophia Jones',
        'Her name badge read: Hello! My name is DIE, DEMIGOD SCUM!'));
    dataList.add(Data(Colors.red, 'Isabella Johnson',
        'I am about as intimidating as a butterfly.'));
    dataList.add(Data(Colors.purple, 'Emily Taylor',
        'Never ask an elf for help; they might decide your better off dead, eh?'));
    dataList.add(Data(Colors.green, 'Maya Thomas', 'Act first, explain later'));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          scrollDirection: Axis.vertical,
          itemBuilder: (builder, index) {
            return LimitedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: dataList[index].color,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        dataList[index].name,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        dataList[index].detail,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (builder, index) {
            return Divider(
              height: 10,
              thickness: 0,
            );
          },
          itemCount: dataList.length),
    );
  }
}

class Data {
  MaterialColor color;
  String name;
  String detail;

  Data(this.color, this.detail, this.name);
}

class ColoursHelper {
  static Color blue() => Color(0xff5e6ceb);

  static Color blueDark() => Color(0xff4D5DFB);
}