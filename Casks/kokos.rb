cask "kokos" do
  version "0.1.0"
  sha256 "5cbe3ab73b5695ba88ac7db2cf685fbe42b497c95b2ec670738db95fc9db288d"

  url "https://github.com/askuksov/kokos-app/releases/download/v#{version}/Kokos_#{version}_aarch64.dmg"
  name "Kokos Password Manager"
  desc "Local-first, encrypted password manager"
  homepage "https://github.com/askuksov/kokos-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Kokos.app"

  uninstall quit: "dev.kuksov.kokos"

  zap trash: [
    "~/Library/Application Support/dev.kuksov.kokos",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/dev.kuksov.kokos.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/dev.kuksov.kokos.json",
    "~/Library/Caches/dev.kuksov.kokos",
    "~/Library/Preferences/dev.kuksov.kokos.plist",
    "~/Library/Saved Application State/dev.kuksov.kokos.savedState",
    "~/Library/WebKit/dev.kuksov.kokos",
  ]
end
