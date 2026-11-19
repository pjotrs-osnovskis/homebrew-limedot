cask "dockbar" do
  version "0.9.3,4"
  sha256 "c1c661f0be8e687ab7b4568cff10eacdb1544595ca0e0e8b91cf449068ceab69"

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
