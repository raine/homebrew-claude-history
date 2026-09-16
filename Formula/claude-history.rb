class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.75/claude-history-darwin-arm64.tar.gz"
      sha256 "ac5577280f4c4cf67845b0f6c38f98ba06923f6f346e9c7f3813e0ef1ba59686"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.75/claude-history-darwin-amd64.tar.gz"
      sha256 "9dd3509d2d77f613e8e97e328a3a82897476dab41e2eea504a0c6b3462ebce76"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.75/claude-history-linux-amd64.tar.gz"
    sha256 "a5ddde3e028fbee32293d0473b6f41a5b63b1cc6e1600f90918021e112dfc3d3"
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
