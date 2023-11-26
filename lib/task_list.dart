import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'task_creation.dart';
import 'task_detail.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  Future<List<ParseObject>> fetchTasks() async {
    QueryBuilder<ParseObject> query =
      QueryBuilder<ParseObject>(ParseObject('Task'));

    final response = await query.query();

    if (response.success) {
      return response.results?.cast<ParseObject>() ?? [];
    } else {
      print(response.error?.message);
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: FutureBuilder<List<ParseObject>>(
        future: fetchTasks(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final tasks = snapshot.data;
            return ListView.builder(
              itemCount: tasks?.length,
              itemBuilder: (context, index) {
                final task = tasks?[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskDetailScreen(task: task!),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(task?.get('title') ?? '', style: Theme.of(context).textTheme.headline6),
                      subtitle: Text(task?.get('description') ?? '', style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          // By default, show a loading spinner.
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskCreationScreen(),
            ),
          ).then((value) => setState((){}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}