class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.74"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.74/claude-history-darwin-arm64.tar.gz"
    sha256 "98a434e7cfadb320104bf820745cfe76c492a473ced3ef934fb1f0a8a4f50d11"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.74/claude-history-linux-amd64.tar.gz"
    sha256 "cf2f0e3d4025b82fe744f49c0b6a3e44a32b5ccf705fbd817e5cca83f3a13545"
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
