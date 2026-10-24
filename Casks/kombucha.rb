cask "kombucha" do
  version "0.2.0"
  sha256 "5f24e855a0b08b9d9bef0f88b1a760e2056616c3cd00bc49df91875f8bb5314f"

  url "https://github.com/askuksov/kombucha/releases/download/v#{version}/Kombucha-#{version}.zip"
  name "Kombucha"
  desc "Battery charge limiter in the menu bar"
  homepage "https://github.com/askuksov/kombucha"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Kombucha.app"

  uninstall quit: "dev.kuksov.kombucha"

  zap trash: [
    "~/Library/Application Support/Kombucha",
    "~/Library/Preferences/dev.kuksov.kombucha.plist",
  ]
end
