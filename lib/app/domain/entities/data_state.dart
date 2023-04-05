import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failure.dart';

part 'data_state.freezed.dart';

typedef StateCallback<T> = void Function(DataState<T> state);

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.initial() = Initial;
  const factory DataState.pending() = Pending;
  const factory DataState.complete(T data) = Complete;
  const factory DataState.error(Failure failure) = Error;
}

extension DataStateX on DataState {
  bool get isError => maybeWhen(error: (failure) => true, orElse: (() => false));
  bool get isPending => maybeWhen(pending: () => true, orElse: (() => false));
}