import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AAIzaSyCiSh4VnnI1jemtZTytDoj2X7Wl6evey30")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
