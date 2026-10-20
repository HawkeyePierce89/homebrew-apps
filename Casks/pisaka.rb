cask "pisaka" do
  version "2.1"
  sha256 "15bd7870b39f1874ebe678d6a0ea2a5c3a95a5cac17cef3ddf7cc8b383fbc715"

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
