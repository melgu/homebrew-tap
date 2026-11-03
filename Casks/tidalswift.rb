cask "tidalswift" do
  version "0.17-67"
  sha256 "ab8d6e62e3bbc0c6d48f4944a03de9a2cfa225c361f5b8c2e4501278d35f1a8f"

  url "https://github.com/melgu/TidalSwift/releases/download/#{version}/TidalSwift.zip"
  name "TidalSwift"
  desc "Tidal client with offline playback, downloads, lyrics and new releases"
  homepage "https://github.com/melgu/TidalSwift"

  depends_on macos: :sonoma

  app "TidalSwift.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/TidalSwift.app"]
  end

  zap trash: "~/Library/Containers/de.melgu.TidalSwift"
end
