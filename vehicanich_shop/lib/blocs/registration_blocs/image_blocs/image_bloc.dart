import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc()
      : super(ImageInitial(
            bannerimagepath: '',
            licenceimagepath: '',
            mmimagepath: '',
            logoimagepath: '')) {
    on<LicencseImagePicker>(licenceimagepicker);
    on<MMImagePicker>(mmimagepicker);
    on<BannerImagePicker>(bannerimagepicker);
    on<LogoImagePicker>(logoimagepickerpicker);
  }
  licenceimagepicker(
      LicencseImagePicker event, Emitter<ImageState> emit) async {
    try {
      final ImagePicker picker = ImagePicker();
      final licenseImage = await picker.pickImage(source: ImageSource.gallery);
      if (licenseImage != null) {
        print(licenseImage);
        emit(
          ImageInitial(
            logoimagepath: state.logoimagepath,
            bannerimagepath: state.bannerimagepath,
            licenceimagepath: licenseImage.path,
            mmimagepath: state.mmimagepath,
          ),
        );
      }
    } catch (e) {
      print('licence image fetching error');
    }
  }

  mmimagepicker(MMImagePicker event, Emitter<ImageState> emit) async {
    try {
      final ImagePicker picker = ImagePicker();
      final mmimagepath = await picker.pickImage(source: ImageSource.gallery);
      if (mmimagepath != null) {
        print(mmimagepath);
        emit(
          ImageInitial(
            logoimagepath: state.logoimagepath,
            bannerimagepath: state.bannerimagepath,
            licenceimagepath: state.licenceimagepath,
            mmimagepath: mmimagepath.path,
          ),
        );
      }
    } catch (e) {
      print('mm image fetching error');
    }
  }

  bannerimagepicker(BannerImagePicker event, Emitter<ImageState> emit) async {
    try {
      final ImagePicker picker = ImagePicker();
      final bannerpath = await picker.pickImage(source: ImageSource.gallery);
      if (bannerpath != null) {
        print(bannerpath);
        emit(
          ImageInitial(
            logoimagepath: state.logoimagepath,
            bannerimagepath: bannerpath.path,
            licenceimagepath: state.licenceimagepath,
            mmimagepath: state.mmimagepath,
          ),
        );
      }
    } catch (e) {
      print('bannerimage fetching error');
    }
  }

  logoimagepickerpicker(LogoImagePicker event, Emitter<ImageState> emit) async {
    try {
      final ImagePicker picker = ImagePicker();
      final logopath = await picker.pickImage(source: ImageSource.gallery);
      if (logopath != null) {
        print(logopath);
        emit(
          ImageInitial(
            logoimagepath: logopath.path,
            bannerimagepath: state.bannerimagepath,
            licenceimagepath: state.licenceimagepath,
            mmimagepath: state.mmimagepath,
          ),
        );
      }
    } catch (e) {
      print('logo fetching error');
    }
  }
}
