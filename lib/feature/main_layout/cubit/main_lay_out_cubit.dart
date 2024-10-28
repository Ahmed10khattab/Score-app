import 'package:flutter_bloc/flutter_bloc.dart';
part 'main_lay_out_state.dart';

class MainLayOutCubit extends Cubit<MainLayOutState> {
  MainLayOutCubit() : super(MainLayOutInitial());
  static MainLayOutCubit get(context) => BlocProvider.of(context);

  int index = 0;
  changeMainLayOutScreens(int indexOfScreen) {
    index = indexOfScreen;
    emit(MainLayOutChanged());
  }
}
