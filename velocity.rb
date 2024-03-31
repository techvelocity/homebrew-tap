# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.57.0-20240331102229-ce7c5ab7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.57.0-20240331102229-ce7c5ab7/velocity_Darwin_arm64.tar.gz"
      sha256 "e26e12f14da3d2a8cbbfcaba8c60d3903e76e13dd52dd4e93a130ddd17db65aa"

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
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.57.0-20240331102229-ce7c5ab7/velocity_Darwin_x86_64.tar.gz"
      sha256 "d3614dcd8311187a6d1b06b59c7b019bc7e5062ba66c7e30b6076b4309d6d261"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/velocity/v0.57.0-20240331102229-ce7c5ab7/velocity_Linux_arm64.tar.gz"
      sha256 "c90eaafd5fd6742c76edf76032b9b92f8656ca1e8586442f4db1b677af28c91d"

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
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.57.0-20240331102229-ce7c5ab7/velocity_Linux_x86_64.tar.gz"
      sha256 "4848501c84023a25182cf293b43c702674516d2fb4fe0d7ef64e610113230334"

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

  test do
    system "#{bin}/velocity version"
  end
end
