class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.12/aarch64-apple-darwin.tar.gz"
      sha256 "d04be4a7d86f5003430298cc3c7a7680898f0bd7d82fef354be4d3e76e209d45"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.12/x86_64-apple-darwin.tar.gz"
      sha256 "65deda454fa7c2669ed9a37cc74173135aa61ece3f2be28f11e16176937516f0"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.12/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f50fedd06db4bddf79df65fbf96911c20f34c5dfa0699f51211254799fb65b57"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
