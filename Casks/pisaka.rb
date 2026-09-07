cask "pisaka" do
  version "1.5"
  sha256 "cf9c3b71bb71d69420e0389472d3bbd79f52b703b400b58c652ea70370a36bf7"

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
