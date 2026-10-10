cask "cubiclauncher" do
  arch arm: "aarch64", intel: "x64"

  version "35.0.0"
  sha256 arm:   "436d975f9804ed0af6eeef09ad79cf2625977e463f917b025a9d52a70f5d8996",
         intel: "50e0a4c302a5b96af1b6aeb7b0676dd6b37de7d1e75f15877000f12373aa4de3"

  url "https://github.com/CubicLauncherDevs/CubicLauncher/releases/download/v#{version}/cubiclauncher_#{version}_#{arch}.dmg",
      verified: "github.com/CubicLauncherDevs/CubicLauncher/"
  name "CubicLauncher"
  desc "Open-source launcher for Minecraft: Java Edition"
  homepage "https://cubiclauncher.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "cubiclauncher.app"

  zap trash: [
    "~/.cubic",
    "~/Library/Application Support/com.cubiclauncher.launcher",
    "~/Library/Caches/com.cubiclauncher.launcher",
    "~/Library/HTTPStorages/com.cubiclauncher.launcher",
    "~/Library/Preferences/com.cubiclauncher.launcher.plist",
    "~/Library/Saved Application State/com.cubiclauncher.launcher.savedState",
    "~/Library/WebKit/com.cubiclauncher.launcher",
  ]
end
