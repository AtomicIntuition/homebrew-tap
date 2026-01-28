class ErrorKing < Formula
  desc "CLI for 3RROR_K1NG - Website Roast Machine with AI-powered audits"
  homepage "https://3rrork1ng.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-darwin-arm64"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-darwin-x64"
      sha256 "PLACEHOLDER_X64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-linux-x64"
      sha256 "PLACEHOLDER_LINUX_X64_SHA256"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "3rror-darwin-arm64" => "3rror"
      else
        bin.install "3rror-darwin-x64" => "3rror"
      end
    else
      if Hardware::CPU.arm?
        bin.install "3rror-linux-arm64" => "3rror"
      else
        bin.install "3rror-linux-x64" => "3rror"
      end
    end
  end

  test do
    system "#{bin}/3rror", "--help"
  end
end
