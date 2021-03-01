# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mprod < Formula
  desc ""
  homepage ""
  version "0.0.1-rc16"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc16/mprod_0.0.1-rc16_Darwin_x86_64.tar.gz"
    sha256 "e43a5baf9d4d36a5286aefa70a026511536ce6dc4997342e6794c4cc3192d0ba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc16/mprod_0.0.1-rc16_Linux_x86_64.tar.gz"
    sha256 "1ca7be074f97db6b73ca5378294414125743369381f94f619793bfde04eff0a8"
  end

  def install
    bin.install "mprod"
  end

  test do
    system "#{bin}/mprod version"
  end
end
