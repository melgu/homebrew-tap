class TidalswiftCli < Formula
  desc "Command-line tool and MCP server for Tidal"
  homepage "https://github.com/melgu/TidalSwiftCLI"
  url "https://github.com/melgu/TidalSwiftCLI/releases/download/1.3.1/tidal-1.3.1-macos.tar.gz"
  sha256 "a7bcc8b4268e0eb30daeeee9b2371e0336fc60e32335c22da64d5ca3bc65fe52"
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
