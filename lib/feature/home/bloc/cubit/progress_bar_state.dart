part of 'progress_bar_cubit.dart';


class ProgressBarState {}

final class ProgressBarInitial extends ProgressBarState {}

final class UpdateSocreSusscess extends ProgressBarState {
  final int score;

  UpdateSocreSusscess(this.score);

  List<Object> get props => [score];
}
