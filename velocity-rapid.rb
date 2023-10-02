# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.30.1-20231002113907-96d33fb"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.30.1-20231002113907-96d33fb/velocity_Darwin_x86_64.tar.gz"
      sha256 "be63117baa138c75b388909cd537a1634f009972ed58ded2760244d12b732061"

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
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.30.1-20231002113907-96d33fb/velocity_Darwin_arm64.tar.gz"
      sha256 "29dae0393f86bc60f78c93aae3e378133e1a743667ab9c606e135e9377d1ffa9"

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
      url "https://releases.velocity.tech/velocity/v0.30.1-20231002113907-96d33fb/velocity_Linux_arm64.tar.gz"
      sha256 "10bf806a8a5ac52bbad12d9fca6cbc69560b0e70a8bc2eae1943c869162c893d"

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
      url "https://releases.velocity.tech/velocity/v0.30.1-20231002113907-96d33fb/velocity_Linux_x86_64.tar.gz"
      sha256 "4c5cd12cd4459d20685785b58e381b18ffb5b600409777a19503cc6e729aad3d"

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
