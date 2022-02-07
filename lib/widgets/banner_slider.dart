import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {


  const BannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items:generateSliders(),
    );
  }
  List <Widget> generateSliders() {

    List<Widget> sliders = [];
    for(int i = 1; i<=3; i++) {
      sliders.add(
        Card(
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage('images/sale'+i.toString()+'.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
        )
      );
    }

    return sliders;
  }
}
