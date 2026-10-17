class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.77/claude-history-darwin-arm64.tar.gz"
      sha256 "37dc921cbd74ad0d28e00bda7610f392cef637a1d6f6e4cf89efb5aebcbdbfa7"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.77/claude-history-darwin-amd64.tar.gz"
      sha256 "bd72663fe591ae61574892663c0246b6cb1d49fcad1acf19ec7c279a40584ae2"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.77/claude-history-linux-amd64.tar.gz"
    sha256 "2bb6c102016addf235484fb1f1cf81ae7b8bb49ffae67a86a5079729b2918155"
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
