cask "tidalswift" do
  version "1.1.2-71"
  sha256 "4954dde85cd50cecad62960d65458d1d7a33e9e6e37dfaa7fcd2c5da50afb14c"

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
