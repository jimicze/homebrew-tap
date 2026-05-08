cask "messenger-x" do
  arch arm: "aarch64", intel: "fd328b56ffd6c4117aff6cdcd706bb26c98ed1f8dd933b696dff9db1375d9414"

  version "1.4.3"
  sha256 arm:   "24b32ec4a95e07c827219e1bb9670713aab8e05a8b81a1ad692dfd62e03adf44",
         intel: "fd328b56ffd6c4117aff6cdcd706bb26c98ed1f8dd933b696dff9db1375d9414"

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
