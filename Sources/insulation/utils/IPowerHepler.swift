import Foundation
import insulationC

struct iOSCPUInfo {
  let ECPUMHz: Double;
  let PCPUMHz: Double;
}

class IPowerHepler {
  private init() {}


  static let shared = IPowerHepler();

  func getCPUMaxPower() -> Int {
    let plistValue = IFileManager.getPlistContent(
      withPath: insulationC.rootlessPath("/var/mobile/Library/Preferences/com.be-huge.insulation-prefs.plist")
    );
    let powerValue = (plistValue["cpuMinPowerValue"] as? String) ?? "";
    let num = Int(powerValue.trimmingCharacters(in: .whitespacesAndNewlines)) ?? 0;
    return num;
  }
}
