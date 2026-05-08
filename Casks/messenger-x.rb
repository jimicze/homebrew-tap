cask "messenger-x" do
  arch arm: "aarch64", intel: "171983bba71f5fb2d085272198fad96d9f50580abb8b8c70c2b36ac5b94c112f"

  version "1.3.37"
  sha256 arm:   "c8875b42a70c2af1c0e64ae97a6ba5fe124a6a233adfda55ed755efeded59826",
         intel: "171983bba71f5fb2d085272198fad96d9f50580abb8b8c70c2b36ac5b94c112f"

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
