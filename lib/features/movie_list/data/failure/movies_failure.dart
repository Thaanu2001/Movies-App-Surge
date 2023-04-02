class MoviesFailure implements Exception {
  /// The associated error message.
  final String message;

  const MoviesFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  factory MoviesFailure.fromCode(int? code) {
    switch (code) {
      case 400:
        return const MoviesFailure(
          'Client side error. Please try again later',
        );
      case 401:
        return const MoviesFailure(
          'Invalid API key. Please contact admin.',
        );
      case 500:
        return const MoviesFailure(
          'Internal server error. Please contact admin.',
        );
      case 408:
        return const MoviesFailure(
          'Issue with the network connection. Check your internet and try again.',
        );
      default:
        return const MoviesFailure();
    }
  }
}
