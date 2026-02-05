class Crisp < Formula
  desc "Website audit tool — security, performance, SEO & accessibility from your terminal"
  homepage "https://crisp.sh"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-darwin-arm64"
      sha256 "0fdad63fc9d6910b0c08774e3be671cc304e2591d7daf43c2d50d37f013c4762"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-darwin-x64"
      sha256 "d47769c680c789b58138811ee762817c9a966d277bea77fc79c0029fcd1f4042"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-linux-arm64"
      sha256 "8e246e78d6032b8a524a5dd4d03967d8b3b916bfd74dd8312937d5ec1ab47930"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-linux-x64"
      sha256 "dfbda443dfe0da8b6bd779071d9ba2b01580b08dfab56796935763fe0cf766bc"
    end
  end

  def install
    binary_name = if OS.mac?
      Hardware::CPU.arm? ? "crisp-darwin-arm64" : "crisp-darwin-x64"
    else
      Hardware::CPU.arm? ? "crisp-linux-arm64" : "crisp-linux-x64"
    end
    bin.install binary_name => "crisp"
  end

  test do
    system "#{bin}/crisp", "--version"
  end
end
