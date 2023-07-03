import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final todoListProvider = StateNotifierProvider<TodoList, List<String>>(
  (ref) => TodoList(),
);

class TodoList extends StateNotifier<List<String>> {
  TodoList() : super([]);

  void add(String todo) {
    state = [...state, todo];
  }

  void remove(String todo) {
    state = state.where((t) => t != todo).toList();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListView(),
    );
  }
}

class TodoListView extends ConsumerStatefulWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  TodoListState createState() => TodoListState();
}

class TodoListState extends ConsumerState<TodoListView> {
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'New Todo',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(todoListProvider.notifier).add(_controller.text);
              _controller.clear();
            },
            child: Text('Add Todo'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];

                return ListTile(
                  title: Text(todo),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      ref.read(todoListProvider.notifier).remove(todo);
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
