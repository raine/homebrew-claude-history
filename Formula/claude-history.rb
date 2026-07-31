class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.72"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.72/claude-history-darwin-arm64.tar.gz"
    sha256 "ba4aca64e1c33b68073e2a09ec04beca063633a4b745da7a145e0ab2ea10fc67"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.72/claude-history-linux-amd64.tar.gz"
    sha256 "aeb69f64a5915c39cb25267a9551061ec8b7a46fbd8240a409e093fda239bc7a"
  end

  def install
    bin.install "claude-history"
    lib.install Dir["lib/*"]
    bin.install_symlink lib/"libonnxruntime.dylib" if OS.mac?
    bin.install_symlink lib/"libonnxruntime.so" if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
