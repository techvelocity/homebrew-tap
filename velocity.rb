# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.38.0-20231205130536-b33396c"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.38.0-20231205130536-b33396c/velocity_Darwin_arm64.tar.gz"
      sha256 "4519c03235a2e9e78357f0ac013e25973c936c016a1f3fa39ec430efdc1203dd"

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
      url "https://releases.velocity.tech/velocity/v0.38.0-20231205130536-b33396c/velocity_Darwin_x86_64.tar.gz"
      sha256 "d8742fbe2e1b534e829e5ccdb81387f3c8ee6a88f91c3c9407006dbab209314f"

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
      url "https://releases.velocity.tech/velocity/v0.38.0-20231205130536-b33396c/velocity_Linux_arm64.tar.gz"
      sha256 "378df4a669fc9561445c75650694a779f03400b0a234bf426e81c8d920c85e71"

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
      url "https://releases.velocity.tech/velocity/v0.38.0-20231205130536-b33396c/velocity_Linux_x86_64.tar.gz"
      sha256 "364754a4bb3230cffe263ef28ddadf08400510f04a0b8659f55dcbf683be656e"

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
