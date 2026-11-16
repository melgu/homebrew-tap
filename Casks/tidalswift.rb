cask "tidalswift" do
  version "1.1.1-70"
  sha256 "9ab6a392c30d0c9c1492a2a4e89cc6051365a3f1c126290d48bbb4d247399c2a"

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
