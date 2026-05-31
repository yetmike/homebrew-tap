class Summarize < Formula
  desc "Link → clean text → summary"
  homepage "https://github.com/steipete/summarize"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-macos-arm64-v0.11.3.tar.gz"
      sha256 "1c4555e35647e22ed3d351e697132997c576fc7dd0b3135fa7e3fe4ec587077b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-linux-x64-v0.11.3.tar.gz"
      sha256 "cdf5ff2ec006f40165db8169072c0ed3b97fd2c1c0003a209fc66f752d69d2db"
    end
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-linux-arm64-v0.11.3.tar.gz"
      sha256 "e08641789ef9e70aad0aaa7f6ca5be1f875da521dd8404ac805ba6257d97d2a5"
    end
  end

  def install
    bin.install "summarize"
  end

  def post_install
    chmod 0755, "#{bin}/summarize"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/summarize --version")
    assert_match "Summarize web pages", shell_output("#{bin}/summarize --help")
  end
end
