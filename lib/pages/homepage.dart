import 'package:flutter/material.dart';
import '../collections/collection_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String _firstTitleText = 'What do you want to\nhave today?';
  final String _secontTitleText = 'Popular Coffee';
  late final List<CollectionModel> _items;
  late final List<PopularCoffee> _itemss;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
    _itemss = PopularCoffeeItems().itemss;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding()._horizontalPadding,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [_title(_firstTitleText), _searchButton()],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: ProjectPadding()._firstListBuilder,
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return _FirstList(model: _items[index]);
                },
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: ProjetColors()._containerColor,
                child: Padding(
                  padding: ProjectPadding()._horizontalPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _title(_secontTitleText),
                      Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _itemss.length,
                          itemBuilder: (context, index) {
                            return _SecondListCard(cmodel: _itemss[index]);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _searchButton() {
    return SizedBox(
      width: ProjectNumbers()._searchButtonW,
      height: ProjectNumbers()._searchButtonH,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: ProjetColors()._searchButtonB,
              foregroundColor: ProjetColors()._searchButtonI,
              padding: ProjectPadding()._searchButtonPadding,
              shape: RoundedRectangleBorder(
                borderRadius: ProjectShape()._radiusTen,
              )),
          child: Icon(
            Icons.search,
            size: ProjectNumbers()._searchButtonI,
          )),
    );
  }

  Text _title(item) {
    return Text(
      item,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          height: ProjectNumbers()._textHeight),
    );
  }
}

class _SecondListCard extends StatelessWidget {
  const _SecondListCard({
    Key? key,
    required PopularCoffee cmodel,
  })  : _cmodel = cmodel,
        super(key: key);

  final PopularCoffee _cmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding()._cardVertical,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: ProjectShape()._radiusTwelve),
        child: SizedBox(
            height: ProjectNumbers()._cardSize,
            child: Padding(
              padding: ProjectPadding()._cardList,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: ProjectPadding()._imageListTen,
                    height: ProjectNumbers()._fContainer2,
                    width: ProjectNumbers()._fContainer2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(_cmodel.image),
                        ),
                        borderRadius: ProjectShape()._radiusTwelve),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Title(model: _cmodel),
                      Row(
                        children: [
                          _tags(0),
                          (_cmodel.tags.length > 1) ? _tags(1) : const SizedBox(),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on),
                          Text(_cmodel.location),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }

  Container _tags(int x) {
    return Container(
      margin: ProjectPadding()._tagsPadding,
      width: (_cmodel.tags[x].length > 5) ? 100 : 50,
      height: ProjectNumbers()._tagsN,
      decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color:
              (x == 0) ? ProjetColors()._tagBlueA : ProjetColors()._tagOrangeA),
      child: Center(
          child: Text(
        _cmodel.tags[x],
        style: TextStyle(
            color:
                (x == 0) ? ProjetColors()._tagBlue : ProjetColors()._tagOrange),
      )),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required PopularCoffee model,
  })  : _model = model,
        super(key: key);

  final PopularCoffee _model;

  @override
  Widget build(BuildContext context) {
    return Text(_model.name,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.bold));
  }
}

class _FirstList extends StatelessWidget {
  const _FirstList({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: ProjectPadding()._firstListContainer,
          height: ProjectNumbers()._fContainer,
          width: ProjectNumbers()._fContainer,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(_model.imagePath),
              ),
              borderRadius: ProjectShape()._radiusTen),
        ),
        Text(_model.modeltype)
      ],
    );
  }
}

class ProjectPadding {
  final EdgeInsets _horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final _searchButtonPadding = EdgeInsets.zero;
  final _firstListBuilder =
      const EdgeInsets.only(top: 20, bottom: 10, left: 20);
  final _firstListContainer = const EdgeInsets.only(right: 10, bottom: 10);
  final _cardList = const EdgeInsets.all(10);
  final _cardVertical = const EdgeInsets.only(top: 10);
  final _imageListTen = const EdgeInsets.only(right: 10);
  final _tagsPadding = const EdgeInsets.only(top: 10, right: 10, bottom: 2);
}

class ProjectShape {
  final _radiusTen = BorderRadius.circular(10);
  final _radiusTwelve = BorderRadius.circular(20);
}

class ProjectNumbers {
  final double _searchButtonH = 60;
  final double _searchButtonW = 60;
  final double _searchButtonI = 40;
  final double _textHeight = 1.5;
  final double _fContainer = 130;
  final double _fContainer2 = 80;
  final double _tagsN = 20;
  final double _cardSize = 100;
}

class ProjetColors {
  final Color _searchButtonB = Colors.white;
  final Color _searchButtonI = Colors.black;
  final Color _containerColor = Colors.grey.shade300;
  final Color _tagBlue = Colors.blue;
  final Color _tagBlueA = Colors.blue.shade100;
  final Color _tagOrange = Colors.orange;
  final Color _tagOrangeA = Colors.orange.shade100;
  final Color _tagPurple = Colors.purple;
  final Color _tagPurpleA = Colors.purple.shade100;
}
