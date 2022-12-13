import 'package:student_management_firebase/models/student.dart';
import 'package:flutter/material.dart';

class displayStudent extends StatefulWidget {
  const displayStudent({super.key});

  @override
  State<displayStudent> createState() => displayStudentState();
}

class displayStudentState extends State<displayStudent> {
  List<Student> lstStudent = [];

  @override
  void didChangeDependencies() {
    //recieve the student from the previous screen
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
      ),
      body: lstStudent.isNotEmpty
          ? ListView.builder(
              itemCount: lstStudent.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(lstStudent[index].fname!),
                    subtitle: Text(lstStudent[index].address!),
                    trailing: Wrap(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      ],
                    ));
              },
            )
          : const Center(
              child: Text('No data found'),
            ),
    );
  }
}
