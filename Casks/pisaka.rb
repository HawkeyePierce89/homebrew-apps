cask "pisaka" do
  version "2.0"
  sha256 "5f563dd19d5adc386d68b12cf27c06c1f1d6d5b38a23340ea69796e809466238"

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
