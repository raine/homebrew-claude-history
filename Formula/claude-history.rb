class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "Intel macOS bottles are not available for this version"
    end

    url "https://github.com/raine/claude-history/releases/download/v0.1.62/claude-history-darwin-arm64.tar.gz"
    sha256 "c3501563f66fabab8f8f4140ad6b2b3e0761ebd2cd674c43391bbca6fde1bc9e"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.62/claude-history-linux-amd64.tar.gz"
    sha256 "2db907370e6c41eca1fe9e3b3e5252ecfbc5010af866f0d8ef434c1c66575836"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
