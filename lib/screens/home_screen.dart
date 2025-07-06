import 'package:counter_app_redesign/components/count_display.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal[400],
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Counter App Redesign"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            CountDisplay(
              count: _count,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        --_count;
                      });
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 28,
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count = 0;
                      });
                    },
                    child: const Text("Reset")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_count;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      size: 28,
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
