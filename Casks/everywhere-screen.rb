cask "everywhere-screen" do
  version "1.3.2"
  sha256 "73b834554114b30739e716a323477958d37d7ed5f246d959e2588520e3810758"

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
