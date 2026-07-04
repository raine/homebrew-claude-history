class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.69"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.69/claude-history-darwin-arm64.tar.gz"
    sha256 "e71b36cf0557cc4969838794ddfa9ee0cc63e2052bdc17a0e49cd649120c1a78"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.69/claude-history-linux-amd64.tar.gz"
    sha256 "07b5b4dd857e498453f33d402297038fc06caf09fb5b63c558082d69c3f45a01"
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
