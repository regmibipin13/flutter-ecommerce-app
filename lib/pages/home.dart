import 'package:ecommerce/widgets/banner_slider.dart';
import 'package:ecommerce/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daraz Duplicate", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){},
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, color: Colors.black,))
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            // Slider Banner
            const BannerSlider(),

            // Categorized products
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Category 1", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    TextButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_right_alt), label: const Text("All"))
                  ],
                ),
                Row(
                  children: [
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7
                        ),
                        itemBuilder: (context, index) {
                          return Product();
                        }
                    )
                  ],
                )

              ],
            ),
          ],
        ),
      )
    );
  }

}
