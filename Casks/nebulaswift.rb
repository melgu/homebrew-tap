cask "nebulaswift" do
  version "1.0.0-1"
  sha256 "1067d9a4de627cc4bb2369decc15a64e44a7211297bd9514a4d3870a464b9574"

  url "https://github.com/melgu/NebulaSwift/releases/download/#{version}/NebulaSwift.zip"
  name "NebulaSwift"
  desc "Unofficial client for the Nebula streaming service"
  homepage "https://github.com/melgu/NebulaSwift"

  depends_on macos: :sonoma

  app "NebulaSwift.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/NebulaSwift.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/de.melgu.NebulaSwift",
    "~/Library/Containers/de.melgu.NebulaSwift",
  ]
end
