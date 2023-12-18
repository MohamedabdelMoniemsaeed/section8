import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ThemeColors.defolad,
            title: const Text(
              'Points Counter',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          body: const Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Team(nameTeam: 'Team A', number: number),
            SizedBox(
              height: MediaQuery.of(context).size.height * .75,
              child: const VerticalDivider(
                color: Colors.black54,
                endIndent: 20,
                indent: 30,
                thickness: 1,
                // width: 40,
              ),
            ),
            Team(nameTeam: 'Team B', number: number),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.defolad,
              fixedSize: const Size(200, 75)),
          onPressed: () {
            number = 0;
            setState(() {});
          },
          child: const Text(
            'Reset',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Team extends StatefulWidget {
  String nameTeam;
  int number;

  Team({super.key, required this.nameTeam, this.number = 0});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .75,
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.nameTeam,
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
            '${widget.number}',
            style: const TextStyle(fontSize: 150),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.defolad,
              fixedSize: const Size(160, 50),
            ),
            onPressed: () {
              widget.number += 1;
              setState(() {});
            },
            child: const Text(
              "Add 1 Point",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          // const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.defolad,
              fixedSize: const Size(160, 50),
            ),
            onPressed: () {
              widget.number += 2;
              setState(() {});
            },
            child: const Text(
              "Add 2 Point",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          // const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.defolad,
              fixedSize: const Size(160, 50),
            ),
            onPressed: () {
              widget.number += 3;
              setState(() {});
            },
            child: const Text(
              "Add 3 Point",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
