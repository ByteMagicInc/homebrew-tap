class AgentP < Formula
  desc "A fast podcast downloader with customizable ID3 tagging"
  homepage "https://github.com/ByteMagicInc/AgentP"
  version "0.3.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.3.0/agent-p-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9967c84da303f14199f728c3a3ba5dd0fbd930f76da3c816483aca5e0f0adb24"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.3.0/agent-p-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "96816bb4b59722d835cba95421fe44ab1b4ba0f492540be419d35292338a0132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.3.0/agent-p-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8b70be8abb397cbe6f9829393d31bda0f7df2c6adcb8f3e5dfcf0d5b3e15591"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.3.0/agent-p-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a369dd165d62341a2bdde3bef9c07f448d5d7e3a891fda271bac38dd79a57d4"
    end
  end

  def install
    bin.install "agentp"
  end

  test do
    system "#{bin}/agentp", "--help"
  end
end
