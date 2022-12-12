import 'package:flutter/material.dart';

class StudentDetailStateScreen extends StatefulWidget {
  const StudentDetailStateScreen({super.key});

  @override
  State<StudentDetailStateScreen> createState() =>
      _StudentDetailStateScreenState();
}

class _StudentDetailStateScreenState extends State<StudentDetailStateScreen> {
  String? gender;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  final _district = [
    "Kathmandu",
    "Lalitpur",
    "Bhaktapur",
    "Makwanpur",
    "Chitwan"
  ];
  String _currentItemSelected = "Kathmandu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student Details"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Enter Name',
                )),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Last Name',
                )),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Age',
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Select Gender:",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
                RadioListTile(
                  title: const Text("Male"),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("Female"),
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("Others"),
                  value: "Others",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                const SizedBox(
                  width: 350.0,
                  height: 100,
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding: EdgeInsets.symmetric(vertical: 40),
                    labelText: 'Address',
                  )),
                ),
                DropdownButton(
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: _district.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      _currentItemSelected = newValue!;
                    });
                  },
                  value: _currentItemSelected,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Save Student")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Display Student")),
                )
              ],
            ),
          ),
        ));
  }
}
