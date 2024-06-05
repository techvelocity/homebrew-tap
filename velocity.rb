# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.70.0-20240605192952-c0b0b927"

  on_macos do
    on_intel do
      url "https://releases.velocity.tech/velocity/v0.70.0-20240605192952-c0b0b927/velocity_Darwin_x86_64.tar.gz"
      sha256 "564e090d8c2a143c88733c67c462ad30714ceb4c46a65337a3a394d78739c8b8"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
    on_arm do
      url "https://releases.velocity.tech/velocity/v0.70.0-20240605192952-c0b0b927/velocity_Darwin_arm64.tar.gz"
      sha256 "a4ed2ddd6ec5a40c4431393230d3b9733b29f432ebfdf4dbfde116e3345ba427"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.velocity.tech/velocity/v0.70.0-20240605192952-c0b0b927/velocity_Linux_x86_64.tar.gz"
        sha256 "296f3536a939c6a304e768937b328ec6f1f43fa76e23688c2a31661e86aff1ac"

        def install
          bin.install "velocity"

          system bin/"velocity completion bash > bash_completion.bash"
          bash_completion.install "bash_completion.bash" => "velocity"

          system bin/"velocity completion zsh > zsh_completion.zsh"
          zsh_completion.install "zsh_completion.zsh" => "_velocity"

          system bin/"velocity completion fish > fish_completion.fish"
          fish_completion.install "fish_completion.fish" => "velocity.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.velocity.tech/velocity/v0.70.0-20240605192952-c0b0b927/velocity_Linux_arm64.tar.gz"
        sha256 "cd8bb1aac922faba82d9873f957d50ef613cb590c2757fcbdda75b1c473f0cef"

        def install
          bin.install "velocity"

          system bin/"velocity completion bash > bash_completion.bash"
          bash_completion.install "bash_completion.bash" => "velocity"

          system bin/"velocity completion zsh > zsh_completion.zsh"
          zsh_completion.install "zsh_completion.zsh" => "_velocity"

          system bin/"velocity completion fish > fish_completion.fish"
          fish_completion.install "fish_completion.fish" => "velocity.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/velocity version"
  end
end
