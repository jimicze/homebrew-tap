cask "messenger-x" do
  arch arm: "aarch64", intel: "f41e1866b5d7894883a7a08c5b6928e1732ba934bf762fc9c3cdbff3a4056771"

  version "1.3.29"
  sha256 arm:   "421f30537fc0acf0ab8f86398a6301ddb9b6ae80525451e6fb7ce5d54d3d25c1",
         intel: "f41e1866b5d7894883a7a08c5b6928e1732ba934bf762fc9c3cdbff3a4056771"

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
