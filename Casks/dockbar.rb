cask "dockbar" do
  version "0.9.4,5"
  sha256 "4aefb7400bd76b94cbbc7e10b1accd0f91fd6d8e2155e255efa86a0d15f7639c"

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
