import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String dropdownValue = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading:
            false, //This code automatically makes the back button
        leading: IconButton(
          //Same as automaticallyImplyLeading
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton(
                value: dropdownValue,
                items: [
                  DropdownMenuItem(value: '1', child: Text("value 1")),
                  DropdownMenuItem(value: '2', child: Text("value 2")),
                  DropdownMenuItem(value: '3', child: Text("value 3")),
                ],
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value.toString();
                  });
                  ;
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                tristate: true,
                title: const Text('CheckboxListTile'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: const Text('SwitchListTile'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                divisions: 10,
                max: 10.0,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              // GestureDetector(
              //   onTap: () {
              //     print("image selected");
              //   },
              //   child: Image.asset('assets/images/bgReal.png'),
              // ),
              Container(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: InkWell(
                  highlightColor: Colors.blueGrey,
                  onTap: () {
                    print("image selected");
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.white24,
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("This is a snackbar"),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: const Text("Show Snackbar"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert Title"),
                        content: Text("Alert Content"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Alert Button"),
              ),
              FilledButton(
                onPressed: () {
                  print('Filled button');
                },
                child: Text("FilledB"),
              ),
              TextButton(
                onPressed: () {
                  print('Text button');
                },
                child: Text("TextB"),
              ),
              OutlinedButton(
                onPressed: () {
                  print('Outline button');
                },
                child: Text('OutlineB'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
