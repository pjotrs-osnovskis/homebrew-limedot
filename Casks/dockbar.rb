cask "dockbar" do
  version "0.9.1,2"
  sha256 "74da9909cbe8293a83f088bb37d9c48c66e05bf93d6a09186fda83575c537eac"

  url "https://limedot.io/dockbar/download/brew/DockBar-#{version.csv.first}-#{version.csv.second}.dmg"
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
