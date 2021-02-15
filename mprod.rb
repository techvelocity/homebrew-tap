# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mprod < Formula
  desc ""
  homepage ""
  version "0.0.1-rc10"
  bottle :unneeded

  if OS.mac?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc10/mprod_0.0.1-rc10_Darwin_x86_64.tar.gz"
    sha256 "8b5adc25b80bc1018dadeaed780fb676bfc3e5c22665674357720d37118c762a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.velocity.tech/mprod/v0.0.1-rc10/mprod_0.0.1-rc10_Linux_x86_64.tar.gz"
    sha256 "318af1d21ba773975c1aac0f0ac31bd2e5246713845fdc9345a13b3c975e5b18"
  end

  def install
    bin.install "mprod"
  end

  test do
    system "#{bin}/mprod version"
  end
end
