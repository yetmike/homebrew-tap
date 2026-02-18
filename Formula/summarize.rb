class Summarize < Formula
  desc "Link → clean text → summary"
  homepage "https://github.com/steipete/summarize"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.2/summarize-macos-arm64-v0.11.2.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.2/summarize-linux-x64-v0.11.2.tar.gz"
      sha256 "4d127466d78052c477f8504524db39e632c0d54777b82cd6be52e9db4253d988"
    end
    on_arm do
      url "https://github.com/yetmike/summarize/releases/download/v0.11.2/summarize-linux-arm64-v0.11.2.tar.gz"
      sha256 "59f1eb0bd658495a651ed76152fabef9e26011172c713f5af9829911e6e67705"
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
