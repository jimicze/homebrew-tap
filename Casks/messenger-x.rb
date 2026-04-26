cask "messenger-x" do
  arch arm: "aarch64", intel: "fdca8a38a76847535a869593b8d3864f0e1433c8e6af8a35429293515443e8fa"

  version "1.3.16"
  sha256 arm:   "dc41ecee9bbcde054e69a00c38451712a7fc79a7edd80bdbc80d98c6c397ceaa",
         intel: "fdca8a38a76847535a869593b8d3864f0e1433c8e6af8a35429293515443e8fa"

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
