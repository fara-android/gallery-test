import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';

class CustomChips extends StatefulWidget {
  @override
  _CustomChipsState createState() => new _CustomChipsState();
}

class _CustomChipsState extends State<CustomChips> {
  TextEditingController _textEditingController = new TextEditingController();
  static List<String> _values = [];
  List<bool> _selected = [];
  bool isOpened = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Widget buildChips() {
    List<Widget> chips = [
      FilterChip(
        label: Text(
          "New",
          style: TextStyle(color: grey),
        ),
        avatar: Icon(
          Icons.add,
          color: grey,
        ),
        backgroundColor: Colors.transparent,
        shape: StadiumBorder(side: BorderSide()),
        onSelected: (bool value) {
          setState(() {
            isOpened = !isOpened;
          });
          print("selected");
        },
      ),
    ];

    for (int i = 0; i < _values.length; i++) {
      InputChip actionChip = InputChip(
        deleteIcon: Icon(
          Icons.close,
          color: white,
        ),

        backgroundColor: Color(0xffCF497E),
        // selected: _selected[i],
        label: Text(
          _values[i],
          style: TextStyle(color: white),
        ),

        elevation: 0,
        pressElevation: 5,

        onPressed: () {
          setState(() {
            _selected[i] = !_selected[i];
          });
        },
        onDeleted: () {
          _values.removeAt(i);
          _selected.removeAt(i);

          setState(() {
            _values = _values;
            _selected = _selected;
          });
        },
      );

      chips.insert(0, actionChip);
    }

    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2),
        itemCount: chips.length,
        itemBuilder: (context, i) => chips[i]);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            buildChips(),
            isOpened == true
                ? TextFormField(
                    controller: _textEditingController,
                  )
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextButton(
                  onPressed: () {
                    _values.add(_textEditingController.text);
                    _selected.add(true);
                    _textEditingController.clear();

                    setState(() {
                      _values = _values;
                      _selected = _selected;
                      isOpened = false;
                    });
                  },
                  child: isOpened == true ? Text("Add") : SizedBox()),
            ),
          ],
        ));
  }
}
