import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress Screen'),
        ),
        body: const _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 30),
        Text('Circular Progress Indicator'),
        SizedBox(height: 20),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        SizedBox(height: 20),
        Text('Controled Circular Progress Indicator'),
        SizedBox(height: 20),
        _ControlledProgressIndicator()
      ],
    ));
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(
          const Duration(milliseconds: 300),
          (data) => (data * 2) / 100,
        ).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;

          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    value: progressValue,
                    strokeWidth: 2,
                    backgroundColor: Colors.black45,
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: progressValue,
                      backgroundColor: Colors.black45,
                    ),
                  )
                ],
              ));
        });
  }
}
