part of 'delay_cubit.dart';

@immutable
abstract class DelayState {}

class DelayInitial extends DelayState {}

class DelayLoading extends DelayState {}

class DelaySuccess extends DelayState {}
