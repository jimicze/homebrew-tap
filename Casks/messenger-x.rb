cask "messenger-x" do
  arch arm: "aarch64", intel: "52f32433f07106402512c271bf818abb728ee3a8fb19ec9c471cb862da666b54"

  version "1.3.12"
  sha256 arm:   "46629c947057c329bfcd9866ad8a058cf4b302444f35cf96c4b5055288593403",
         intel: "52f32433f07106402512c271bf818abb728ee3a8fb19ec9c471cb862da666b54"

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
