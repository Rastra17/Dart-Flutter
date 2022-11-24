import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});
  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  int principal = 0, time = 0, rate = 0;
  int simpleInterest = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (principalValue) {
                principal = int.parse(principalValue);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the principle',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (timeValue) {
                time = int.parse(timeValue);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the time in years',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (rateValue) {
                rate = int.parse(rateValue);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the rate',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    simpleInterest = principal * time * rate;
                  });
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Text(
              "The result is: $simpleInterest",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}