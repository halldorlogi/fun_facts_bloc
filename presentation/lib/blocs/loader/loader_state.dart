part of 'loader_bloc.dart';

@freezed
class LoaderState<T> with _$LoaderState {
  const factory LoaderState.initial() = _Initial;
  const factory LoaderState.loadInProgress() = _LoadInProgress;
  const factory LoaderState.loadSuccess(T result) = _LoadSuccess;
  const factory LoaderState.loadFailure(Exception error) = _LoadFailure;
}
