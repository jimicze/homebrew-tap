cask "messenger-x" do
  arch arm: "aarch64", intel: "750658445a61e5deea1a348734331ebb000e7edff7534b6629ff124da31bf4dc"

  version "1.4.5"
  sha256 arm:   "b34c0e7aeeb9d3941f8f168790b00ddc7dce0095d2723e489809d64b9ef0ef88",
         intel: "750658445a61e5deea1a348734331ebb000e7edff7534b6629ff124da31bf4dc"

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
