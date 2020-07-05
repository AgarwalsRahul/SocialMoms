part of 'info_bloc.dart';

@freezed
abstract class InfoState with _$InfoState {
  const factory InfoState({
    @required UserInfo info,
    @required bool isSaving,
    @required bool isEditing,
    @required bool showErrorMessages,
    @required Option<Either<InfoFailure, Unit>> infoFailureOrSuccess,
    @required Option<InfoFailure> imageFailureOrSuccess,
  }) = _InfoState;

  factory InfoState.initial() => InfoState(
        info: UserInfo.empty(),
        isSaving: false,
        isEditing: false,
        showErrorMessages: false,
        infoFailureOrSuccess: none(),
        imageFailureOrSuccess: none(),
      );
}
