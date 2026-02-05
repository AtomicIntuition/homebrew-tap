class Crisp < Formula
  desc "Website audit tool — security, performance, SEO & accessibility from your terminal"
  homepage "https://crisp.sh"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-darwin-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-darwin-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-linux-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.0/crisp-linux-x64"
      sha256 "PLACEHOLDER"
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
