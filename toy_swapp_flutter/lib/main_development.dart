import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toy_swapp/dependencies/dependencies.dart';
import 'package:toy_swapp/firebase_options.dart';
import 'package:toy_swapp/startup/startup.dart';

void main() async {
  // Flutter Initializer
  WidgetsFlutterBinding.ensureInitialized();

  // Dependencies
  final apiDependencies = ApiDependencies(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );
  const configDependencies = ConfigDependencies();
  const loggerDependencies = LoggerDependencies();
  const instanceDependencies = InstanceDependencies();
  final repositoryDependencies = RepositoryDependencies(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );
  const serviceDependencies = ServiceDependencies();

  // Start App
  runApp(
    StartupScreen(
      apiDependencies: apiDependencies,
      configDependencies: configDependencies,
      loggerDependencies: loggerDependencies,
      instanceDependencies: instanceDependencies,
      repositoryDependencies: repositoryDependencies,
      serviceDependencies: serviceDependencies,
    ),
  );
}
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const App());
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       darkTheme: ThemeData.dark(),
//       home: const ListScreen(),
//     );
//   }
// }

// class ListScreen extends StatelessWidget {
//   const ListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('List Screen'),
//       ),
//       body: InfiniteScrollable(
//         isFetching: false,
//         fetchFailure: null,
//         hasReachedMax: false,
//         fetchMoreItems: () {},
//         onRefresh: () {},
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text('Item $index'),
//           );
//         },
//       ),
//     );
//   }
// }
