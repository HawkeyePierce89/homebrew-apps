cask "pisaka" do
  version "1.3"
  sha256 "04c073f77fc023da4cdad39d41f0317a1050e669500aca73998601da694bf294"

  url "https://github.com/HawkeyePierce89/pisaka/releases/download/v#{version}/Pisaka-#{version}.zip"
  name "Pisaka"
  desc "Native code editor with LeetCode integration and git tools"
  homepage "https://github.com/HawkeyePierce89/pisaka"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Pisaka.app"

  zap trash: [
    "~/Library/Application Support/Pisaka",
    "~/Library/Caches/ws.karmanov.pisaka",
    "~/Library/HTTPStorages/ws.karmanov.pisaka",
    "~/Library/Preferences/ws.karmanov.pisaka.plist",
    "~/Library/Saved Application State/ws.karmanov.pisaka.savedState",
    "~/Library/WebKit/ws.karmanov.pisaka",
  ]
end
