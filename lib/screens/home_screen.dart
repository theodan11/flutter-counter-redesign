import 'package:counter_app_redesign/components/count_display.dart';
import 'package:counter_app_redesign/cubit/counter_cubit.dart';
import 'package:counter_app_redesign/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal[400],
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Counter App Using Bloc ( Cubit )"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Counter",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CountDisplay(
                  count: state.count,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: state.count == 0
                            ? null
                            : () {
                                context.read<CounterCubit>().decreamentCount();
                              },
                        child: state.count == 0
                            ? const Icon(
                                Icons.not_interested_rounded,
                                size: 28,
                              )
                            : const Icon(
                                Icons.remove,
                                size: 28,
                              )),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().reset();
                        },
                        child: const Text("Reset")),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().increamentCount();
                        },
                        child: const Icon(
                          Icons.add,
                          size: 28,
                        ))
                  ],
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
