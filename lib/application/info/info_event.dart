part of 'info_bloc.dart';

@freezed
abstract class InfoEvent with _$InfoEvent {
  const factory InfoEvent.submitted() = _Submitted;
  const factory InfoEvent.nameChanged(String name) = _NameChanged;
  const factory InfoEvent.ageChanged(int age) = _AgeChanged;
  const factory InfoEvent.bioChanged(String bio) = _BioChanged;
  const factory InfoEvent.cityChanged(String city) = _CityChanged;
  const factory InfoEvent.initialized(UserInfo info) = _Initialized;
  const factory InfoEvent.imageUploaded(File image) = _ImageUploaded;
  const factory InfoEvent.expertStatusChanged(bool status) =
      _ExpertStatusChanged;
}
