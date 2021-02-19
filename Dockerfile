FROM cirrusci/flutter:1.17.3

ADD . /app
WORKDIR /app

# 修改flutter源

RUN  PUB_HOSTED_URL=https://pub.flutter-io.cn \
  FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn \
  flutter packages get && \
  flutter pub run build_runner build  && \
  flutter build apk -t lib/main.production.dart --release





