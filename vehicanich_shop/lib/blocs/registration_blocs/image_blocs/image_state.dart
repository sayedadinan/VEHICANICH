part of 'image_bloc.dart';

sealed class ImageState {
  final String licenceimagepath;
  final String mmimagepath;
  final String bannerimagepath;
  final String logoimagepath;
  ImageState(
      {required this.licenceimagepath,
      required this.logoimagepath,
      required this.mmimagepath,
      required this.bannerimagepath});
}

final class ImageInitial extends ImageState {
  ImageInitial({
    required super.logoimagepath,
    required super.licenceimagepath,
    required super.mmimagepath,
    required super.bannerimagepath,
  });
}
