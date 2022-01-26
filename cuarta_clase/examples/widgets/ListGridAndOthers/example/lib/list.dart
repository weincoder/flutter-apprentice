import 'package:example/list_examples/example_gridview.dart';
import 'package:example/list_examples/example_listview_builder.dart';
import 'package:example/list_examples/example_listview_separeted.dart';
import 'package:example/list_examples/nested_listviews.dart';
import 'package:example/list_examples/normal_listview.dart';
import 'package:example/list_examples/page_view_example.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListExamples extends StatelessWidget {
  const ListExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo listviews'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              child: Text('ListView por defecto', style: GoogleFonts.abel(fontSize: 20, color: Colors.white)),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const NormalListView())),
            ),
            MaterialButton(
              child: Text('ListView.builder()', style: GoogleFonts.abel(fontSize: 20, color: Colors.white) ,),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const ExampleListViewBuilder())),
            ),
            MaterialButton(
              child: Text('ListView.separeted()', style: GoogleFonts.abel(fontSize: 20, color: Colors.white) ,),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const ExampleListViewSepareted())),
            ),
            MaterialButton(
              child: Text('Listas Anidadas', style: GoogleFonts.abel(fontSize: 20, color: Colors.white) ,),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const NestedListViews())),
            ),
            MaterialButton(
              child: Text('Ejemplo GridView', style: GoogleFonts.abel(fontSize: 20, color: Colors.white) ,),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const ExampleGridView())),
            ),
            MaterialButton(
              child: Text('Page View Example', style: GoogleFonts.abel(fontSize: 20, color: Colors.white) ,),
              color: Colors.deepPurple,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const PageViewExample())),
            )
          ],
        ),
      ),
    );
  }
}
