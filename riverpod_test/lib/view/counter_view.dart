import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Create a provider
final appBarTitleProvider = Provider<String>((ref) => 'Mero title');
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            final title = ref.watch(appBarTitleProvider);
            return Text(title);
          },
        )
      ),
      body: const Center(child: Text('0')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.add)
          ),
          SizedBox(height: 8),
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove)

          )
        ],
      ),


    );
  }
}