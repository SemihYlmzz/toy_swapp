import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/app/app.dart';

import '../create_toy.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    final createToyCubit = context.watch<CreateToyCubit>();
    return BaseScaffold(
      safeArea: true,
      body: Stack(
        children: [
          BaseColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SharedGap.gap128,
              ToySwappTextField(
                labelText: 'Toy Name',
                onChanged: createToyCubit.toyNameChanged,
              ),
              ToySwappTextField(
                labelText: 'Description',
                onChanged: createToyCubit.toyDescriptionChanged,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                maxLength: 100,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: createToyCubit.state.imageUrlList.length,
                  itemBuilder: (context, index) {
                    final imageUrl = createToyCubit.state.imageUrlList[index];
                    return Padding(
                      padding: SharedPaddings.all8,
                      child: Image.memory(
                        imageUrl.value.toyImage128,
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: createToyCubit.selectMultipleImages,
                child: const Text('Select Toy Images'),
              ),
              DropdownButton(
                value: createToyCubit.state.toyAge,
                hint: const Text('Minimum Age'),
                items: ToyAge.values
                    .map(
                      (e) => DropdownMenuItem<ToyAge>(
                        value: e,
                        child: Text(e.toString()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  createToyCubit.toyAgeChanged(value);
                },
              ),
              DropdownButton(
                value: createToyCubit.state.toyGender,
                hint: const Text('Pref. Gender'),
                items: ToyGender.values
                    .map(
                      (e) => DropdownMenuItem<ToyGender>(
                        value: e,
                        child: Text(e.toString()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  createToyCubit.toyGenderChanged(value);
                },
              ),
              DropdownButton(
                value: createToyCubit.state.toyCondition,
                hint: const Text('Toy Condition'),
                items: ToyCondition.values
                    .map(
                      (e) => DropdownMenuItem<ToyCondition>(
                        value: e,
                        child: Text(e.toString()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  createToyCubit.toyConditionChanged(value);
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.maybePop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                margin: SharedPaddings.all20,
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(Icons.close_rounded),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: SharedPaddings.all16,
              child: TouchRipple<void>(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  final toyName = createToyCubit.state.toyName;
                  final toyDescription = createToyCubit.state.toyDescription;
                  final imageUrlList = createToyCubit.state.imageUrlList;
                  final toyAge = createToyCubit.state.toyAge;
                  final toyGender = createToyCubit.state.toyGender;
                  final toyCondition = createToyCubit.state.toyCondition;

                  if (toyName.isNotValid) return;
                  if (toyDescription.isNotValid) return;
                  if (imageUrlList.length < 2) return;
                  if (toyAge == null) return;
                  if (toyGender == null) return;
                  if (toyCondition == null) return;

                  context.read<CreateToyBloc>().add(
                        CreateToyEvent.createOwnedToy(
                          toyName: toyName,
                          toyDescription: toyDescription,
                          imageUrlList: imageUrlList,
                          toyAge: toyAge,
                          toyGender: toyGender,
                          toyCondition: toyCondition,
                        ),
                      );
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: SharedBorderRadius.circular8,
                  ),
                  child: const Center(
                    child: Icon(Icons.done, size: 32),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
