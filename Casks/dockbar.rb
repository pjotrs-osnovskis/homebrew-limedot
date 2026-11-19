cask "dockbar" do
  version "0.9.2,3"
  sha256 "db04872dddc75e2bac8a608890bfaf94d5ae53b77cc66e52db42171ce5aab4d8"

  url "https://limedot.io/dockbar/download/DockBar-#{version.csv.first}-#{version.csv.second}.dmg"
  name "DockBar"
  desc "Widgets in the empty space beside the Dock"
  homepage "https://limedot.io/dockbar/"

  livecheck do
    url "https://limedot.io/dockbar/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "DockBar.app"

  uninstall quit: "io.limedot.DockBar"

  zap trash: [
    "~/Library/Application Support/io.limedot.DockBar",
    "~/Library/Caches/io.limedot.DockBar",
    "~/Library/HTTPStorages/io.limedot.DockBar",
    "~/Library/Preferences/io.limedot.DockBar.plist",
  ]
end
