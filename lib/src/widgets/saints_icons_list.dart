import 'package:flutter/material.dart';
import 'package:pray/src/models/saint.dart';
import 'package:transparent_image/transparent_image.dart';

const IMG_BASE_URL = 'https://cdn.azbyka.ru/days/assets/img/saints';

class SaintIconsList extends StatelessWidget {
  const SaintIconsList({Key key, @required this.saint}) : super(key: key);

  final Saint saint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: saint.imgs.length != 0 ? 320.0 : 0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: saint.imgs.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Center(
                child: FadeInImage.memoryNetwork(
                    width: 250,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    placeholder: kTransparentImage,
                    image:
                        "$IMG_BASE_URL/${saint.id}/${saint.imgs[index].image}")),
          ),
        ),
      ),
    );
  }
}
