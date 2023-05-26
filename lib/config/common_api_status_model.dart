class CommonApiStatus<T> {
  final Status status;
  final T? data;
  final String? errorString;
  CommonApiStatus._({required this.status, this.data, this.errorString});

  static CommonApiStatus<T> success<T>({T? data}) {
    return CommonApiStatus<T>._(status: Status.success, data: data);
  }

  static CommonApiStatus<T> failure<T>({String? errorMsg}) {
    return CommonApiStatus._(status: Status.failure, errorString: errorMsg);
  }

  static CommonApiStatus<T> error<T>() {
    return CommonApiStatus._(status: Status.error);
  }

  static CommonApiStatus<T> loading<T>() {
    return CommonApiStatus._(status: Status.loading);
  }

  // factory CommonApiStatus.succes(dynamic data) = SuccessState;
  // factory CommonApiStatus.failure(String errorMsg) = FailureState;
  // factory CommonApiStatus.error() = ErrorState;
}

// class SuccessState<T> extends CommonApiStatus {
//   final T data;
//   SuccessState(this.data) : super._();
// }

// class FailureState extends CommonApiStatus {
//   final String errorMsg;
//   FailureState(this.errorMsg) : super._();
// }

// class ErrorState extends CommonApiStatus {
//   ErrorState() : super._();
// }

enum Status { error, loading, success, failure }
