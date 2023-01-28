import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String page;

  GridItem(this.title, this.imageUrl, this.page);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(page);
      },
      child: GridTile(
        footer: null,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              width: 2,
              color: Colors.black26,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  imageUrl,
                ),
                width: 74,
                height: 66,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 75,
                child: Text(
                  title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
