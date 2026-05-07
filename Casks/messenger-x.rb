cask "messenger-x" do
  arch arm: "aarch64", intel: "5579de268440bba8767d3ae9abd34261c4aa0d1477d92e341d4872ac78887f27"

  version "1.3.26"
  sha256 arm:   "e089e6cff4750e8be46e418e547336277e1d669900bddf4d03403d5d67cc6f9f",
         intel: "5579de268440bba8767d3ae9abd34261c4aa0d1477d92e341d4872ac78887f27"

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
