# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Veloctl < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/veloctl/v0.6.4/veloctl_0.6.4_Darwin_arm64.tar.gz"
      sha256 "b03b7e591b33919731e7b9afcef74a14d55d7098625ec5e483ba3e231d130500"

      def install
        bin.install "veloctl"

        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"

        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"

        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/veloctl/v0.6.4/veloctl_0.6.4_Darwin_x86_64.tar.gz"
      sha256 "a5adbd18aeb556d4e419a4fb5bb5303fa3a58038f3ecca7b58dddf3651b01afc"

      def install
        bin.install "veloctl"

        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"

        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"

        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/veloctl/v0.6.4/veloctl_0.6.4_Linux_x86_64.tar.gz"
      sha256 "e56151c79e2e0ea3bf7ecd5f2f41151df3df902a325f12b621734fc077822adb"

      def install
        bin.install "veloctl"

        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"

        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"

        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/veloctl/v0.6.4/veloctl_0.6.4_Linux_arm64.tar.gz"
      sha256 "28ae43a11ec0cfd0cb5b83173dccc06f6c57d4255d625f36806555ff87061092"

      def install
        bin.install "veloctl"

        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"

        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"

        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
  end

  test do
    system "#{bin}/veloctl version"
  end
end
