cask "pisaka" do
  version "1.2"
  sha256 "79eb58fbe4f8d3829f02916962b6b5ee8f87945671e1f3b166de3bd72192d387"

  url "https://github.com/HawkeyePierce89/pisaka/releases/download/v#{version}/Pisaka-#{version}.zip"
  name "Pisaka"
  desc "Native code editor with a first-class git client"
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
