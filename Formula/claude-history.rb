class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "Intel macOS bottles are not available for this version"
    end

    url "https://github.com/raine/claude-history/releases/download/v0.1.61/claude-history-darwin-arm64.tar.gz"
    sha256 "94d3b825022253121c84717b29f767dff49b561ef26b87cd0ad87389f98b786b"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.61/claude-history-linux-amd64.tar.gz"
    sha256 "5e7ca967ec7b6161f2e24639221b4e7878bb95d48f495bb598ff55475367f686"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
