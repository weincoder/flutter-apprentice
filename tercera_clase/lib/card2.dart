import 'package:flutter/material.dart';

import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(width: 350, height: 450),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                AuthorCard(
                    authorName: 'Mike Katz',
                    title: 'conocedor de batidos',
                    imageProvider: AssetImage('assets/author_katz.jpeg')),
                Expanded(
                    child: Stack(
                  children: [
                    Positioned(
                        left: 16,
                        bottom: 70,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Batidos',
                            style: FooderlichTheme.lightTextTheme.headline1,
                          ),
                        )),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        'Receta',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ],
                ))
              ],
            )));
  }
}
