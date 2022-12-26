# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Veloctl < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/veloctl/v0.6.1/veloctl_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "9a4efd73337db537af2cd4672f5c24cf97c2625ccec0722ab85443fc667f0317"

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
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/veloctl/v0.6.1/veloctl_0.6.1_Darwin_arm64.tar.gz"
      sha256 "d64361ba4e42c964ad652e931c1a8816c5a900718007c69030bf2ed76d801a52"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/veloctl/v0.6.1/veloctl_0.6.1_Linux_arm64.tar.gz"
      sha256 "52000efe2c349f3fc7f3e1f4560f0e195fc744d2f16e64dce7ef95c1539f9b18"

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
      url "https://releases.velocity.tech/veloctl/v0.6.1/veloctl_0.6.1_Linux_x86_64.tar.gz"
      sha256 "2eb53996661129f8e6d08770447aa0c9912d10b75d3f5a00fcc5f03247b66447"

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
