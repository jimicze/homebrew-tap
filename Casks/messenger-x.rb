cask "messenger-x" do
  arch arm: "aarch64", intel: "95c652b25405f99178e7e5037be3bfaf063417d3033149fdca4a5c5100e12dea"

  version "1.3.5"
  sha256 arm:   "6a60929ec1e914df7f4e80695bc2bf2b09486f9f8286d654972e16676fb76032",
         intel: "95c652b25405f99178e7e5037be3bfaf063417d3033149fdca4a5c5100e12dea"

  url "https://github.com/jimicze/fb-messanger-crossplatform/releases/download/v#{version}/Messenger.X_#{version}_#{arch}.dmg"
  name "Messenger X"
  desc "Cross-platform desktop client for Facebook Messenger"
  homepage "https://github.com/jimicze/fb-messanger-crossplatform"

  app "Messenger X.app"

  zap trash: [
    "~/Library/Application Support/com.lasakondrej.messengerx",
    "~/Library/Caches/com.lasakondrej.messengerx",
    "~/Library/Logs/com.lasakondrej.messengerx",
    "~/Library/Preferences/com.lasakondrej.messengerx.plist",
    "~/Library/Saved Application State/com.lasakondrej.messengerx.savedState",
  ]
end
