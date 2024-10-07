Future<String> fetchUser() =>
    // Function
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );
