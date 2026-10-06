cask "everywhere-screen" do
  version "1.3.0"
  sha256 "c8fbe4b85a2d1bf8f2ce8dbb5006138b4d9344f2f1502c37aa1a29fd13d53d02"

  url "https://github.com/massimopozzi1989-gif/Everywhere-Screen/releases/download/v#{version}/EverywhereScreen-#{version}.dmg"
  name "Everywhere Screen"
  desc "Use any tablet or phone as an extra display for your Mac"
  homepage "https://github.com/massimopozzi1989-gif/Everywhere-Screen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Everywhere Screen.app"

  uninstall quit: "com.massimopozzi.everywherescreen"

  zap trash: "~/Library/Preferences/com.massimopozzi.everywherescreen.plist"
end
