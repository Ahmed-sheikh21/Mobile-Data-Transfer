import 'package:dalkey_data/Screens/screens.dart';
// import 'package:dalkey_data/Screens/navbar.dart';
// import 'package:dalkey_data/widget/buttons.dart';
// import 'package:dalkey_data/widget/databutton.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SomtelScreen extends StatefulWidget {
  const SomtelScreen({Key? key}) : super(key: key);

  @override
  State<SomtelScreen> createState() => _SomtelScreenState();
}

class _SomtelScreenState extends State<SomtelScreen> {
  int activeIndex = 0;

  final urlImages = [
    'assets/images/hormuudSlider.png',
    'assets/images/somnetSlider.png',
    'assets/images/somtelSlider.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Dalkey Data Transfer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.white,
            width: Size.infinite.width,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Fadlan dooro nooca",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Main_buttons(),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*1";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$1',
                        data: '1GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*2";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$2',
                        data: '2GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*3";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$3',
                        data: '3GB',
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*4";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$4',
                        data: '4GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*5";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$5',
                        data: '5GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*10";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$10',
                        data: '10GB',
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*15";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$15',
                        data: '15GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*20";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$20',
                        data: '20GB',
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Databutton(
                        onPressed: () async {
                          String encodedHash = Uri.encodeComponent("#");
                          const number = "*789*903434*30";
                          // ignore: deprecated_member_use
                          launch('tel://$number$encodedHash');
                        },
                        money: '\$30',
                        data: '30GB',
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 100,
                            autoPlay: true,
                            //reverse: true,
                            autoPlayInterval: Duration(seconds: 5),
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          ),
                          itemCount: urlImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = urlImages[index];

                            return buildImage(urlImage, index);
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        buildIndicator(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: RawMaterialButton(
                  fillColor: Colors.amber,
                  // ignore: duplicate_ignore
                  onPressed: () async {
                    const number = '+252615258955';
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  // ignore: sort_child_properties_last
                  child: Icon(Icons.call),
                  shape: CircleBorder(),
                  constraints: BoxConstraints.tightFor(
                    width: 56,
                    height: 56,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'This App is made by: Ahmed ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.grey,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ));

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
      );
}
