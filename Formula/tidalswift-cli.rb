class TidalswiftCli < Formula
  desc "Command-line tool and MCP server for Tidal"
  homepage "https://github.com/melgu/TidalSwiftCLI"
  url "https://github.com/melgu/TidalSwiftCLI/releases/download/1.2.0/tidal-1.2.0-macos.tar.gz"
  sha256 "000d6c169a74861f1756ed618a1dec09956dd9398fea9856f3e9b84020ed1b7f"
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
