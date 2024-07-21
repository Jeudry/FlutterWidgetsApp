import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Button Screen'),
        ),
        body: const _ButtonsVIew(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ));
  }
}

class _ButtonsVIew extends StatelessWidget {
  const _ButtonsVIew();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text('Elevated Button')),
                const ElevatedButton(
                    onPressed: null, child: Text('Elevated Disabled')),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded),
                    label: const Text('Elevated Icon')),
                FilledButton(onPressed: () {}, child: const Text('Filled')),
                const FilledButton(
                    onPressed: null, child: Text('Filled Disabled')),
                FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded),
                    label: const Text('Filled Icon')),
                OutlinedButton(
                    onPressed: () {}, child: const Text('Outlined Button')),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.terminal),
                    label: const Text('Outlined Icon')),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.access_alarm_rounded),
                    label: const Text('Text Icon')),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ice_skating_rounded),
                  iconSize: 50,
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(theme.primary)),
                  color: Colors.red,
                  splashRadius: 20,
                  padding: const EdgeInsets.all(10),
                ),
                const CustomButton(),
              ])),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Hola mundo', style: TextStyle())),
        ),
      ),
    );
  }
}
