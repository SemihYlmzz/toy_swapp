part of 'permissions_bloc.dart';

@freezed
sealed class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.fetch() = PermissionsFetch;
}
