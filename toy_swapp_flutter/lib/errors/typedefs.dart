import 'package:fpdart/fpdart.dart';

import 'errors.dart';

typedef FutureUnit = Future<Either<Failure, Unit>>;
typedef FutureEither<T> = Future<Either<Failure, T>>;
