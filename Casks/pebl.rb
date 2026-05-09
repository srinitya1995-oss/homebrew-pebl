cask "pebl" do
  version "0.4.2"
  sha256 "f4747cc70ba059524035e041304c5fbb30ea8357becad6c966018f4c0c653e34"

  # v0.4.2 is arm64-only. Intel returns in v0.5.0.
  depends_on arch: :arm64

  url "https://github.com/srinitya1995-oss/pebl-releases/releases/download/v#{version}/Pebl-#{version}.dmg"
  name "Pebl"
  desc "Free Mac app that reminds you to stretch and breathe and stays quiet during Zoom calls"
  homepage "https://peblapp.com"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Pebl.app"

  # Pebl is not yet signed with a Developer ID certificate.
  # Until notarization is set up, Homebrew Cask will auto-remove the
  # quarantine attribute so macOS Gatekeeper doesn't block the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Pebl.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Pebl",
    "~/Library/Preferences/com.pebl.wellness.plist",
    "~/Library/Saved Application State/com.pebl.wellness.savedState",
    "~/Library/Caches/com.pebl.wellness",
    "~/Library/Logs/Pebl",
  ]
end
