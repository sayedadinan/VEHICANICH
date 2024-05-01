import 'package:bloc/bloc.dart';
import 'package:vehicahich_admin/repositery/shop_updation.dart';
part 'current_status_event.dart';
part 'current_status_state.dart';

class CurrentStatusBloc extends Bloc<CurrentStatusEvent, CurrentStatusState> {
  CurrentStatusBloc() : super(CurrentStatusInitial()) {
    on<ApprovedButtonPressed>(approvebuttonpressed);
    on<RejectedButtonPressed>(rejectedbuttonpressed);
  }
  approvebuttonpressed(
      ApprovedButtonPressed event, Emitter<CurrentStatusState> emit) async {
    emit(ApprovedLoading());
    try {
      await ShopDetailsUpdation().approveShop(event.documentId);
      emit(ApprovedSucces());
    } catch (e) {
      emit(ApprovedError());
    }
  }

  rejectedbuttonpressed(
      RejectedButtonPressed event, Emitter<CurrentStatusState> emit) async {
    emit(RejectedLoading());
    try {
      await ShopDetailsUpdation().rejectShop(event.documentId);
      emit(RejectedSucces());
    } catch (e) {
      emit(RejectedError());
    }
  }
}
