import 'package:flutter/material.dart';
import 'package:toy_repository/toy_repository.dart';

import '../profile.dart';

class OwnedToysGridViewDisplayer extends StatefulWidget {
  const OwnedToysGridViewDisplayer({
    required this.scrollController,
    required this.ownedToys,
    super.key,
  });

  final List<Toy> ownedToys;
  final ScrollController scrollController;

  @override
  State<OwnedToysGridViewDisplayer> createState() =>
      _OwnedToysGridViewDisplayerState();
}

class _OwnedToysGridViewDisplayerState
    extends State<OwnedToysGridViewDisplayer> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 8,
        mainAxisExtent: 200,
      ),
      itemCount: widget.ownedToys.length,
      itemBuilder: (context, index) {
        return ControlOwnedToyCard(
          ownedToy: widget.ownedToys.reversed.toList()[index],
        );
      },
    );
  }
}
