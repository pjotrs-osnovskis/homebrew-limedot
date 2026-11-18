cask "dockbar" do
  version "0.9,1"
  sha256 "765ed483ce80ecdce2446c1d8190145d00c6ec7232aa54f96b77cbc9cfec0d51"

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
