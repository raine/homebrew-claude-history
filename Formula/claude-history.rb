class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.71"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.71/claude-history-darwin-arm64.tar.gz"
    sha256 "877c367b153f0b85f08cfeb72aa55f91e7b5ef9eedbe4236a2b358a7dfce6c7f"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.71/claude-history-linux-amd64.tar.gz"
    sha256 "a4e9936338f1a2946e49f09a72a88b504a9ad258d0f237c4438a309a600c39ff"
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
