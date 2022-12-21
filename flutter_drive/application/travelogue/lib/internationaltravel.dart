import 'package:flutter/material.dart';
import 'package:travelogue/Properties.dart';
import 'package:webview_flutter/webview_flutter.dart';

class international extends StatefulWidget {
  const international({super.key});

  @override
  State<international> createState() => _internationalState();
}

class _internationalState extends State<international> {
  var properties = Properties();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   child: WebView(
      //     initialUrl: 'https://www.delhiinformation.in/delhi/history.html',
      //   ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: properties.recommendedImages.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                margin: const EdgeInsets.only(right: 25, top: 25),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: const Color.fromARGB(255, 231, 229, 229),
                  image: DecorationImage(
                    image: AssetImage(properties.recommendedImages[index]),
                    fit: BoxFit.cover,
                    matchTextDirection: true,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  properties.popularPlace[index])));
                    });
                  },
                  child: Stack(alignment: Alignment.center, children: [
                    Text(
                      properties.recommendedImgText[index],
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2),
                    )
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
