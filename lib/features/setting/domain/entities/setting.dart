import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Setting extends Equatable {
  final bool isAutoLogin;
  final bool hasToken;

  const Setting({
    @required this.isAutoLogin,
    @required this.hasToken,
  });

  @override
  List<Object> get props => [
        isAutoLogin,
        hasToken,
      ];

  factory Setting.init() => Setting(
        isAutoLogin: false,
        hasToken: false,
      );

  Setting copyWith({
    bool isAutoLogin,
    bool hasToken,
  }) {
    return Setting(
      isAutoLogin: isAutoLogin ?? this.isAutoLogin,
      hasToken: hasToken ?? this.hasToken,
    );
  }
}
