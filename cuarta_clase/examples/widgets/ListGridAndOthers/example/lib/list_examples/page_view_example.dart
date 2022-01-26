import 'package:example/element_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PageViewExample extends StatelessWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
        Scaffold(
          appBar: AppBar (title: const Text('Página 1 '),),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              SizedBox(
                height: 610,
                child:
              ElementTile(currentNumber: 1,))]),
              bottomNavigationBar: Container(
          height: 233,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Cuando necesites hacer scroll para navegar entre pantallas'
              ' utiliza el PageView 🧐',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
        ),
        Scaffold(
          appBar: AppBar (title: const Text('Página 2 '),),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            SizedBox(
              height: 610,
              child:
            ElementTile(currentNumber: 2,))]),
            bottomNavigationBar: Container(
          height: 233,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Cuando necesites hacer scroll para navegar entre pantallas'
              ' utiliza el PageView 🧐',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
        ),
        Scaffold(
          appBar: AppBar (title: const Text('Página 3 '),),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            SizedBox(
              height: 610,
              child:
            ElementTile(currentNumber: 3,))]),
            bottomNavigationBar: Container(
          height: 233,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Cuando necesites hacer scroll para navegar entre pantallas'
              ' utiliza el PageView 🧐',
              style: GoogleFonts.actor(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )),
        )
      ],
    );
  }
}
