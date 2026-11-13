class TidalswiftCli < Formula
  desc "Command-line tool and MCP server for Tidal"
  homepage "https://github.com/melgu/TidalSwiftCLI"
  url "https://github.com/melgu/TidalSwiftCLI/releases/download/1.1.0/tidal-1.1.0-macos.tar.gz"
  sha256 "f65610985d4f44322eeb9a7a16706ea810e2abc2cde36caa5429ff3c4fde5b7e"
  license "GPL-3.0-only"

  depends_on macos: :sonoma

  def install
    bin.install "tidal"
    generate_completions_from_executable(bin/"tidal", "--generate-completion-script")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/tidal --version").strip
  end
end
