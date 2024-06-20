import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/app/ui/home_screen.dart';
import 'package:rick_and_morty/config/gql.dart';

void main() async {
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return ProviderScope(
      child: Consumer(builder: (context, ref, child) {
        final client = ref.read(gqlProvider);
        return GraphQLProvider(
          client: client,
          child: MaterialApp(
              title: 'Rich & Morty',
              theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
                useMaterial3: true,
              ),
              home: const HomeScreen()),
        );
      }),
    );
  }
}
