import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with:self)
    GMSServices.provideAPIKey("AIzaSyD8NBU9RQQgn7LKoqV8im8xnt3GZiG_oHU")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
