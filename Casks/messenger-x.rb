cask "messenger-x" do
  arch arm: "aarch64", intel: "5a8cb24675847fe699de6ba82827626c5d6dc7cb76d6f50b55ee5bb6ac2bdfbf"

  version "1.3.11"
  sha256 arm:   "69443d20494c2ba18d1f50818d37dc0de9f4cff98be3b0adf99d0795873bfc60",
         intel: "5a8cb24675847fe699de6ba82827626c5d6dc7cb76d6f50b55ee5bb6ac2bdfbf"

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
