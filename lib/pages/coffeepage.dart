import 'package:flutter/material.dart';
import 'package:newapp/collections/collection_item.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});
  final String title = 'Caramel Macchiato';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(title),
        //centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.local_grocery_store)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              //margin: const EdgeInsets.all(20),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(PopularCoffeeItems().itemss[0].image),
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Caramel Macchiato',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 75,
                      decoration: const BoxDecoration(
                          color: Color(0xffB67F2A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Text(
                        '\$ 12,99',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.white),
                      ))
                ],
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
