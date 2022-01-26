import 'package:example/list.dart';
import 'package:flutter/material.dart';
import 'package:example/element_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  String _name = '';
  String _importance = '';
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Ingrese Su Nombre', style: GoogleFonts.lato(fontSize: 20.0)),
        TextField(
          controller: _nameController,
          decoration: const  InputDecoration(hintText: 'Ingrese su nombre'),
        ),
        Text(_name),
        Wrap(
          spacing: 10.0,
          children: [
            // 4
            ChoiceChip(
              // 5
              selectedColor: Colors.black,
              // 6
              selected: _importance == 'baja',
              label: const Text(
                'Baja',
                style: TextStyle(color: Colors.white),
              ),
              // 7
              onSelected: (selected) {
                setState(() => _importance = 'baja');
              },
            ),
            ChoiceChip(
              selectedColor: Colors.black,
              selected: _importance == 'medio',
              label: const Text(
                'Media',
                style: TextStyle(color: Colors.white),
              ),
              onSelected: (selected) {
                setState(() => _importance = 'medio');
              },
            ),
            ChoiceChip(
              selectedColor: Colors.black,
              selected: _importance == 'alta',
              label: const Text(
                'Alta',
                style: TextStyle(color: Colors.white),
              ),
              onSelected: (selected) {
                setState(() => _importance = 'alta');
              },
            ),
          ],
        ),
        Text('La importancia es :' + _importance),

        // 2
        Row(
          // 3
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 4
            Text(
              'Fecha',
              style: GoogleFonts.lato(fontSize: 28.0),
            ),
            // 5
            TextButton(
              child: const Text('Select'),
              // 6
              onPressed: () async {
                final currentDate = DateTime.now();
                // 7
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: currentDate,
                  lastDate: DateTime(currentDate.year + 5),
                );
                // 8
                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                  }
                });
              },
            ),
          ],
        ),
        Text(DateFormat('yyyy-MM-dd').format(_dueDate)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hora',
              style: GoogleFonts.lato(fontSize: 28.0),
            ),
            TextButton(
              child: const Text('Select'),
              onPressed: () async {
                // 1
                final timeOfDay = await showTimePicker(
                  // 2
                  initialTime: TimeOfDay.now(),
                  context: context,
                );

                // 3
                setState(() {
                  if (timeOfDay != null) {
                    _timeOfDay = timeOfDay;
                  }
                });
              },
            ),
          ],
        ),
        Text(_timeOfDay.format(context)),
        Dismissible(
            // 6
            key: const Key('holi'),
            // 7
            direction: DismissDirection.endToStart,
            // 8
            background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.delete_forever,
                    color: Colors.white, size: 50.0)),
            // 9
            onDismissed: (direction) {
              // 10
              // 11
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Elemto Eliminado')));
            },
            child: SizedBox(
              width: 400,
              child: ElementTile(
                currentNumber: 4,
              ),
            )),
        const SizedBox(height: 16),
        MaterialButton(
          child: Text('Ejemplos Listas', style: GoogleFonts.abel(fontSize: 25, color: Colors.white)),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ListExamples())),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepPurple,
        )
      ]),
    );
  }
}
