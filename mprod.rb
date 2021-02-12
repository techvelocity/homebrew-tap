# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mprod < Formula
  desc ""
  homepage ""
  version "0.0.1-rc4"
  bottle :unneeded

  if OS.mac?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc4/mprod_0.0.1-rc4_Darwin_x86_64.tar.gz"
    sha256 "4bd275046000b2d66a2a2ec7747104ef84c827ddf4dd090d0c8b954596862732"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc4/mprod_0.0.1-rc4_Linux_x86_64.tar.gz"
    sha256 "f0a9ff45b7ce8a29398a2952469d6b90f2442a332fbd5df7be2d37a7029efb7e"
  end

  def install
    bin.install "mprod"
  end

  test do
    system "#{bin}/mprod version"
  end
end
