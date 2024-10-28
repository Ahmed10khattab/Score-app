import 'package:flutter_bloc/flutter_bloc.dart';
part 'enter_your_score_state.dart';

class EnterYourScoreCubit extends Cubit<EnterYourScoreState> {
  EnterYourScoreCubit() : super(EnterYourScoreInitial());
  static EnterYourScoreCubit get(context) => BlocProvider.of(context);

  int? score;

  void getScore(String value) {
    score = value.isEmpty ? null : int.tryParse(value);
    emit(EntersScoreState());
  }
}
