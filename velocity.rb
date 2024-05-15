# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.66.0"

  on_macos do
    on_intel do
      url "https://releases.velocity.tech/velocity/v0.66.0/velocity_Darwin_x86_64.tar.gz"
      sha256 "d1b94242e8b5e49273af274e207a3e9e8c1466985a7f14cc41d01f870b13a9e6"

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
      url "https://releases.velocity.tech/velocity/v0.66.0/velocity_Darwin_arm64.tar.gz"
      sha256 "7ffeec6855f56b09191105d8bff58ca44597b4c02e4a49fe149bc1e5ba4578d2"

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
        url "https://releases.velocity.tech/velocity/v0.66.0/velocity_Linux_x86_64.tar.gz"
        sha256 "ac864c53c99ebebb8a54edc6844e6686ec91c1866ae114e31abdf9569a9f47d4"

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
        url "https://releases.velocity.tech/velocity/v0.66.0/velocity_Linux_arm64.tar.gz"
        sha256 "a906af69e622e020025c0a0c363f39b6783b41f93c95c1670abc86dd15a62614"

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
