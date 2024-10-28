import 'package:flutter_bloc/flutter_bloc.dart';

part 'progress_bar_state.dart';

class ProgressBarCubit extends Cubit<ProgressBarState> {
  ProgressBarCubit() : super(ProgressBarInitial());

  void submitScore(int score) {
    emit(UpdateSocreSusscess(score));
  }
}
