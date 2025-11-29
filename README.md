[![Stand With Palestine](https://raw.githubusercontent.com/TheBSD/StandWithPalestine/main/banner-no-action.svg)](https://thebsd.github.io/StandWithPalestine)

<p align="center">
<img src="https://user-images.githubusercontent.com/44249868/159565121-bdc4a702-cde8-48be-bc01-9067b40f852e.png" alt="Chucker Flutter" />
</p>
<p align="center">
	<a href="https://github.com/syedmurtaza108/chucker-flutter/"><img src="https://codecov.io/gh/syedmurtaza108/chucker-flutter/branch/master/graph/badge.svg?token=PGXJ24DQR4" alt="Codecov Badge"></a>
	<a href="https://pub.dev/packages/chucker_flutter"><img src="https://img.shields.io/pub/v/chucker_flutter" alt="Pub.dev Badge"></a>
	<a href="https://pub.dev/packages/chucker_flutter"><img src="https://badgen.net/pub/popularity/chucker_flutter" alt="Popularity"></a>
	<a href="https://github.com/syedmurtaza108/chucker-flutter/actions"><img src="https://github.com/syedmurtaza108/chucker-flutter/actions/workflows/build.yaml/badge.svg" alt="GitHub Build Badge"></a>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
	<a href="https://github.com/syedmurtaza108/chucker-flutter"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>
	<a href="https://github.com/syedmurtaza108/chucker-flutter"><img src="https://img.shields.io/github/stars/syedmurtaza108/chucker-flutter?logo=github&logoColor=white" alt="Stars"></a>
	<a href="https://syedmurtaza.site"><img src="https://img.shields.io/badge/Developed%20By-Syed%20Murtaza-brightgreen" alt="Developed By Badge"></a>
	
</p>

* [Getting Started](#getting-started)
* [Features](#features)
* [Libraries](#libraries)
* [License](#license)

# Chucker Flutter

[![StandWithPalestine](https://raw.githubusercontent.com/TheBSD/StandWithPalestine/main/badges/StandWithPalestine.svg)](https://github.com/TheBSD/StandWithPalestine/blob/main/docs/README.md)

An HTTP requests inspector inspired by [Chucker Android](https://github.com/ChuckerTeam/chucker). It helps you inspect the HTTP(S) requests/responses triggered by your Flutter app. Chucker Flutter stores data locally and provides a UI for inspecting network calls and sharing their content.

## Features

- Inspect HTTP(S) requests/responses
- System notifications for API requests (NEW!)
- In-app notifications
- Support for multiple HTTP clients (Dio, Chopper, HTTP)
- Share network calls
- Material design
- Dark mode support
- Localization support

## Getting Started

1. Add Chucker Flutter to your pubspec.yaml:

```yaml
dependencies:
  chucker_flutter: ^latest_version
```

2. Initialize Chucker Flutter in your app:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Chucker Flutter (required for notifications)
  await ChuckerFlutter.initialize();

  runApp(
    MaterialApp(
      navigatorObserver: [
        ChuckerFlutter.navigatorObserver, // Required for in-app notifications
      ],
      home: MyApp(),
    ),
  );
}
```

3. Add required permissions:

For Android, add to `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```

For iOS, add to `ios/Runner/Info.plist`:
```xml
<key>NSUserNotificationsUsageDescription</key>
<string>We need to send you notifications about API requests and responses</string>
```

## Usage

### Using with Dio

```dart
final dio = Dio();
dio.interceptors.add(ChuckerDioInterceptor());
```

### Using with Chopper

```dart
final chopper = ChopperClient(
  interceptors: [ChuckerChopper()],
);
```

### Using with HTTP package

```dart
final client = ChuckerHttpClient(http.Client());
```

### Notifications

Chucker Flutter now supports both in-app and system notifications for API requests. When an API request is made:

1. An in-app notification will appear showing the request method, path, and status code
2. A system notification will be shown with the same information
3. Tapping either notification will open the Chucker screen showing the request details

You can control notification behavior through settings:

```dart
// Disable all notifications
ChuckerFlutter.showNotification = false;

// Or through settings UI
ChuckerUiHelper.settings.showNotification = false;
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Contributors

Special thanks to these wonderful people👏 who are making our community bigger and better🔥

<table>
  <tr>
    <td align="center"><a href="https://github.com/Dammyololade"><img src="https://avatars.githubusercontent.com/u/44375103?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Adeyemo Adedamola</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=Dammyololade" title="Documentation">📖</a> </td>
    <td align="center"><a href="https://github.com/fachrifaul"><img src="https://avatars.githubusercontent.com/u/2288266?v=4" width="100px;" alt=""/><br /><sub><b>fachrifaul</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=fachrifaul" title="Documentation">📖</a> </td>
    <td align="center"><a href="https://github.com/navneet-singh-github"><img src="https://avatars.githubusercontent.com/u/94953723?v=4" width="100px;" alt=""/><br /><sub><b>Navneet Singh</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=navneet-singh-github" title="Documentation">📖</a> </td>
 <td align="center"><a href="https://github.com/Serproger"><img src="https://avatars.githubusercontent.com/u/11074431?v=4" width="100px;" alt=""/><br /><sub><b>Sergei</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=Serproger" title="Documentation">📖</a> </td>
  </tr>
  <tr>
  <td align="center"><a href="https://github.com/SyifaAinnur"><img src="https://avatars.githubusercontent.com/u/62318101?v=4" width="100px;" alt=""/><br /><sub><b>Syifa Ainnur</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=SyifaAinnur" title="Documentation">📖</a> </td>

 <td align="center"><a href="https://github.com/ErickArmen"><img src="https://avatars.githubusercontent.com/u/37030822?v=4" width="100px;" alt=""/><br /><sub><b>Erick Armen</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=ErickArmen" title="Documentation">📖</a> </td>
 <td align="center"><a href="https://github.com/Wreos"><img src="https://avatars.githubusercontent.com/u/15965366?v=4" width="100px;" alt=""/><br /><sub><b>Aleksandr Lozhkovoi</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=Wreos" title="Documentation">📖</a> </td>
 <td align="center"><a href="https://github.com/quango2304"><img src="https://avatars.githubusercontent.com/u/39608754?v=4" width="100px;" alt=""/><br /><sub><b>Leo Ngo</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=quango2304" title="Documentation">📖</a> </td>
  </tr>
  <tr>
  <td align="center"><a href="https://github.com/KashyapBhat"><img src="https://avatars.githubusercontent.com/u/23421932?v=4" width="100px;" alt=""/><br /><sub><b>Kashyap Bhat</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=KashyapBhat" title="Documentation">📖</a> </td>

 <td align="center"><a href="https://github.com/KeeganDC"><img src="https://avatars.githubusercontent.com/u/97861347?v=4" width="100px;" alt=""/><br /><sub><b>KeeganDC</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=KeeganDC" title="Documentation">📖</a> </td>

 <td align="center"><a href="https://github.com/mateendev3"><img src="https://avatars.githubusercontent.com/u/81102550?v=4" width="100px;" alt=""/><br /><sub><b>Mateen Mehmood</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=mateendev3" title="Documentation">📖</a> </td>

  <td align="center"><a href="https://github.com/CuongNV12"><img src="https://avatars.githubusercontent.com/u/53120409?v=4" width="100px;" alt=""/><br /><sub><b>Cuong Nguyen</b></sub></a><br /> <a href="https://github.com/syedmurtaza108/chucker-flutter/commits?author=CuongNV12" title="Documentation">📖</a> </td>
  </tr>
  
</table>

## License

```
MIT License

Copyright (c) 2022 Syed Murtaza

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
