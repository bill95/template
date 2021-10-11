class TestBean<T> {
  int code;
  String msg;
  T t;

  @override
  String toString() {
    return 'TestBean{code: $code, msg: $msg, t: $t}';
  }
}
