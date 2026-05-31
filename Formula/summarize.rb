class Summarize < Formula
  desc "Link → clean text → summary"
  homepage "https://github.com/steipete/summarize"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-macos-arm64-v0.11.3.tar.gz"
      sha256 "839af2cddb47ec3557915b4ebff778151e6f543a74f6ace9eeae1bd57960ed63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-linux-x64-v0.11.3.tar.gz"
      sha256 "ea1ecd70bf1387a970af4954b0d753f6bce0c4383856091a01f2a6b241809d05"
    end
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.3/summarize-linux-arm64-v0.11.3.tar.gz"
      sha256 "9e38c9edce2a27d639f8b06d5182ca580730b49d1cb2016f357c7f59764ef9da"
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
