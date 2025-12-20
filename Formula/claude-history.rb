class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.11/aarch64-apple-darwin.tar.gz"
      sha256 "b76844c3b2413ab3f37c0cea4b2b083150f0a6411a1445ce4d8dba7664f64004"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.11/x86_64-apple-darwin.tar.gz"
      sha256 "a5f33612f5cda6cc3577fa0bd2594b3bca21a1c8debe03aaad404ffab9d5c7c7"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.11/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2baf1be43a1db273ef9dabb2362fc0f4c7e05a388ccb427b104d123da2cbfb17"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
