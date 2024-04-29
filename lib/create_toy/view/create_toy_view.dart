import 'package:flutter/material.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../create_toy.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      safeArea: true,
      body: Stack(
        children: [
          BaseColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ToySwappTextField(
              //   labelText: 'Toy Name',
              //   onChanged: createToyCubit.toyNameChanged,
              // ),
              // ToySwappTextField(
              //   labelText: 'Description',
              //   onChanged: createToyCubit.toyDescriptionChanged,
              //   keyboardType: TextInputType.multiline,
              //   minLines: 1,
              //   maxLines: 5,
              //   maxLength: 100,
              // ),
              ToyCreateSelectedImagesDisplayer(),

              // DropdownButton(
              //   value: createToyCubit.state.toyAge,
              //   hint: const Text('Minimum Age'),
              //   items: ToyAge.values
              //       .map(
              //         (e) => DropdownMenuItem<ToyAge>(
              //           value: e,
              //           child: Text(e.toString()),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (value) {
              //     if (value == null) return;
              //     createToyCubit.toyAgeChanged(value);
              //   },
              // ),
              // DropdownButton(
              //   value: createToyCubit.state.toyGender,
              //   hint: const Text('Pref. Gender'),
              //   items: ToyGender.values
              //       .map(
              //         (e) => DropdownMenuItem<ToyGender>(
              //           value: e,
              //           child: Text(e.toString()),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (value) {
              //     if (value == null) return;
              //     createToyCubit.toyGenderChanged(value);
              //   },
              // ),
              // DropdownButton(
              //   value: createToyCubit.state.toyCondition,
              //   hint: const Text('Toy Condition'),
              //   items: ToyCondition.values
              //       .map(
              //         (e) => DropdownMenuItem<ToyCondition>(
              //           value: e,
              //           child: Text(e.toString()),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (value) {
              //     if (value == null) return;
              //     createToyCubit.toyConditionChanged(value);
              //   },
              // ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CreateToyPopButton(),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CreateToyButton(),
          ),
        ],
      ),
    );
  }
}
