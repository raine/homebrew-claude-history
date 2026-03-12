class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.34/claude-history-darwin-arm64.tar.gz"
      sha256 "e5a36a16586dd92796225b01e9b9dbc2c35ed97121a948852f411c32e9faaa59"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.34/claude-history-darwin-amd64.tar.gz"
      sha256 "5a2b8a70829f33479950784cd31b5e1005a3f111c451a4d392916539ddc1e4d7"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.34/claude-history-linux-amd64.tar.gz"
    sha256 "1ed6b6a10caebe95f4c8d4e83a07f039a02dd96cf54c85b7b5cf6cfe63ac70a7"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
