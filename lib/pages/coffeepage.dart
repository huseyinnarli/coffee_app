import 'package:flutter/material.dart';
import 'package:newapp/collections/collection_item.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});
  final String title = 'Caramel Macchiato';
  final String price = '\$ 12,99';
  final String bodyText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
  final String suggestText = 'More for You';
  final String scoreText = '4.3 ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.local_grocery_store)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: ProjectShape().columnPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.zero,
              height: ProjectSized().mainPictureSizeH,
              width: ProjectSized().mainPictureSizeW,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(PopularCoffeeItems().itemss[0].image),
                  ),
                  borderRadius: ProjectShape().radius2xTen),
            ),
            Padding(
              padding: ProjectShape().paddingTopTen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: ProjectSized().priceBoxH,
                      width: ProjectSized().priceBoxW,
                      decoration: BoxDecoration(
                          color: ProjectColors().priceColor,
                          borderRadius: ProjectShape().priceRadius),
                      child: Text(
                        price,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.white),
                      ))
                ],
              ),
            ),
            Padding(
              padding: ProjectShape().paddingTopTen,
              child: Row(
                children: [
                  Text(
                    scoreText,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Icon(
                    Icons.star,
                    size: ProjectSized().iconSize,
                    color: ProjectColors().iconColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: ProjectShape().paddingTopTen,
              child: Text(
                bodyText,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: ProjectShape().paddingTop2xTen,
              child: Text(
                suggestText,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: ProjectShape().paddingTopTen,
              child: SizedBox(
                height: ProjectSized().listbuilderH,
                child: ListView.builder(
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: ProjectSized().mainPictureSizeW,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: ProjectShape().radiusTen,
                        ),
                        margin: EdgeInsets.zero,
                        color: Colors.green,
                        child: Row(
                          children: [
                            Container(
                              margin: ProjectShape().allPaddingTen,
                              height: ProjectSized().suggestPicture,
                              width: ProjectSized().suggestPicture,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        PopularCoffeeItems().itemss[0].image),
                                  ),
                                  borderRadius: ProjectShape().radiusTen),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectShape {
  final columnPadding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  final paddingTopTen = const EdgeInsets.only(top: 10);
  final paddingTop2xTen = const EdgeInsets.only(top: 20);
  final allPaddingTen = const EdgeInsets.all(10);
  final priceRadius = const BorderRadius.only(
      bottomLeft: Radius.circular(20), topLeft: Radius.circular(20));
  final radiusTen = BorderRadius.circular(10);
  final radius2xTen = BorderRadius.circular(20);
}

class ProjectSized {
  final mainPictureSizeH = 352.7;
  final mainPictureSizeW = 352.7;
  final priceBoxH = 25.0;
  final priceBoxW = 75.0;
  final iconSize = 15.0;
  final suggestPicture = 60.0;
  final listbuilderH = 80.0;
  
}

class ProjectColors {
  final iconColor = Colors.amber;
  final priceColor = const Color(0xffB67F2A);
  
}