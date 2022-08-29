# flutter_appauth
- [flutter_appauth | Gói Flutter (pub.dev)](https://pub.dev/packages/flutter_appauth)
- các gói phụ thuộc khác:
```yaml
  http: ^
  flutter_appauth: ^
  flutter_secure_storage: ^
```
## Thiết lập Auth0
- đăng kí, đăng nhập tài khoản trong auth0.com và tạo một app mới trong auth0.com
- thanh menu chọn "Application" -> chọn "connecttion" -> bật "google-oauth2"
- thanh menu chọn "Application" -> chọn "setting" -> kéo tìm đến "Application URIs" -> "Allowed Callback URLs" nhập vào theo định dạng "{tên gói flutter}://login-callback"


## Android
- Cập nhật tệp như sau:`android/app/build.gradle`
```groovy
defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        minSdkVersion 18
        manifestPlaceholders += [
                'appAuthRedirectScheme': '{tên gói}'
        ]
    }
```
### Hàm đăng nhập trong logincontrol |
- lib/modalBottomSheet.dart
  - trong textbutton "đăng kí"
### Tài khoản Auth0
- mail: huykoj0@gmail.com
- pass: Vqh26022001@
### Các trường hợp

	
