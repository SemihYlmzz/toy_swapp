import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:shared_constants/shared_constants.dart';

import '../create_toy.dart';

class NextAndCreateToyButton extends StatelessWidget {
  const NextAndCreateToyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitState = context.watch<CreateToyCubit>().state;
    final toyCreateable = cubitState.toyName.isValid &&
        cubitState.toyDescription.isValid &&
        cubitState.imageUrlList.length > 1 &&
        cubitState.toyAge != null &&
        cubitState.toyGender != null &&
        cubitState.toyCondition != null;
    return toyCreateable
        ? Padding(
            padding: SharedPaddings.all16,
            child: TouchRipple<void>(
              onTap: () {
                FocusScope.of(context).unfocus();
                context.read<CreateToyBloc>().add(
                      CreateToyEvent.createOwnedToy(
                        toyName: cubitState.toyName,
                        toyDescription: cubitState.toyDescription,
                        imageUrlList: cubitState.imageUrlList,
                        toyAge: cubitState.toyAge!,
                        toyGender: cubitState.toyGender!,
                        toyCondition: cubitState.toyCondition!,
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
          )
        : const SizedBox.shrink();
  }
}
