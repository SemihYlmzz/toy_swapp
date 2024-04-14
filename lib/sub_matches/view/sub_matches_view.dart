import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/sub_matches/sub_matches.dart';

class SubMatchesView extends StatelessWidget {
  const SubMatchesView({super.key});

  @override
  Widget build(BuildContext context) {
    final initialNote = context.read<SubMatchesBloc>().state.oldNote;
    var note = '';
    return BaseScaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<SubMatchesBloc>()
              .add(SubMatchesEvent.updateNote(note: note));

          FocusManager.instance.rootScope.focusedChild?.unfocus();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: TextFormField(
              maxLines: 200,
              initialValue: initialNote,
              onChanged: (value) {
                note = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
