import 'dart:math';

class MyCard {
  int? _rightNumber;
  int? _leftNumber;
  int? _cpuResult;
  int? _userResult;
  int? _totalPlayed;

  MyCard( int? cpuResult, int? userResult, int? totalPlayed) {
    int mLeftNumber = Random().nextInt(13)+2;
    _rightNumber = mLeftNumber;
    _leftNumber = mLeftNumber;
    _cpuResult = cpuResult;
    _userResult = userResult;
    _totalPlayed = totalPlayed;
  }

  int getRightNumber() {
    return _rightNumber!;
  }

  int getLeftNumber() {
    return _leftNumber!;
  }

  int getUserResult() {
    return _userResult!;
  }

  int getCpuResult() {
    return _cpuResult!;
  }

  int getTotalPlayed() {
    return _totalPlayed!;
  }

  void changeCardNumber() {
    int mLeftNumber = Random().nextInt(13);
    int mRightNumber = Random().nextInt(13);
    _rightNumber = mLeftNumber + 2;
    _leftNumber = mRightNumber + 2;
    _totalPlayed = _totalPlayed! + 1;
  }

  void updateResult() {
    if (_leftNumber != _rightNumber) {
      if (_leftNumber! > _rightNumber!) {
        _userResult = _userResult! + 1;
      } else {
        _cpuResult = _cpuResult! + 1;
      }
    }
  }
}

