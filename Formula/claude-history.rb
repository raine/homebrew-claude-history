class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.80/claude-history-darwin-arm64.tar.gz"
      sha256 "2fd9b7ed7b97b3e3ee0c8509e1f2eb4daaf8f6d74b0774ed17e590ca50a69b2d"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.80/claude-history-darwin-amd64.tar.gz"
      sha256 "125826ab0452df0918101fde5c49d42215b44732adc2fd0e6714b82e0d5303f1"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.80/claude-history-linux-amd64.tar.gz"
    sha256 "a3721c284289aca5d5d1cd11153c72e7196aed4e880263d4f6e421d9331e2eaa"
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
