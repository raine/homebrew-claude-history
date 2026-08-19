class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.73"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.73/claude-history-darwin-arm64.tar.gz"
    sha256 "047cd5153f2d1b04e02e6f204d34e6ff202a9d034c12940fe1286db6cc4a4513"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.73/claude-history-linux-amd64.tar.gz"
    sha256 "9cc24a53cf2621842321f3019af33caa3d05e59a79739969580f0831d2f351a8"
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
