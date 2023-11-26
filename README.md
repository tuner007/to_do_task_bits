# Flutter App with Back4App Integration

![Flutter](https://img.shields.io/badge/-Flutter-02569B?style=flat-square&logo=flutter)
![Dart](https://img.shields.io/badge/-Dart-0175C2?style=flat-square&logo=dart)
![Parse Server](https://img.shields.io/badge/-Parse%20Server-FF4500?style=flat-square&logo=parse)

This repository contains the code for a Flutter application developed as part of an assignment. The application uses the Parse Server SDK to manage tasks. The tasks are stored in a Parse Server hosted on Back4App, a Backend-as-a-Service (BaaS) platform.

## Assignment Description

In this assignment, we were tasked to create a Flutter app that connects to Back4App to manage tasks. The assignment involved setting up the Back4App backend, creating the Flutter app, and implementing the necessary functionality to interact with the backend.

## Assignment Steps

1. **Set Up Back4App**: We signed up for a Back4App account, created a new Back4App app, and created a class in Back4App named Task with columns title (String) and description (String).

2. **Flutter Setup**: We created a new Flutter project, added the required dependencies to our pubspec.yaml file, and initialized the Parse SDK in our Flutter app.

3. **Task List**: We created a screen in our Flutter app to display a list of tasks, implemented a function to fetch tasks from Back4App using the Back4App API, and displayed the tasks in a list view with titles and descriptions.

4. **Task Creation**: We created a screen for adding new tasks, implemented functionality to create and save tasks to Back4App, and verified that newly created tasks appear in the task list.

5. **Task Details**: We added a feature to view task details when a task is tapped in the task list and displayed the title and description of the selected task.

6. **Bonus Features**: We added a feature to edit and update existing tasks.

## Testing the Application

To test the application, you need to have Flutter and Dart installed on your machine. Follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install) to install Flutter and Dart.

Once you have Flutter and Dart installed, you can clone this repository and run the application:

```bash
git clone https://github.com/yourusername/task_management_app.git
cd task_management_app
flutter run
```

You also need to have a Parse Server instance running. You can create a free account on [Back4App](https://www.back4app.com/) and use their hosted Parse Server. Replace the application ID, server URL, and client key in `main.dart` with your own values.