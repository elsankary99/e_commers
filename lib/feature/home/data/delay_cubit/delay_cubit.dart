import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delay_state.dart';

class DelayCubit extends Cubit<DelayState> {
  DelayCubit() : super(DelayInitial());
  void delay() {
    emit(DelayLoading());
    Future.delayed(
      const Duration(seconds: 5),
      () {
        emit(DelaySuccess());
      },
    );
  }
}
