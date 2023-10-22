# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.32.1-20231022195200-3242989"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.32.1-20231022195200-3242989/velocity_Darwin_arm64.tar.gz"
      sha256 "f0cecd1d83abbe1ed79a18a32ac25e71840d361c4ed86e63cf4f91962b44cdec"

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
      url "https://releases.velocity.tech/velocity/v0.32.1-20231022195200-3242989/velocity_Darwin_x86_64.tar.gz"
      sha256 "3c472d5b28b1704f6cb8eb057c26fc3e878997f33bab7347477c3c49469b4664"

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
      url "https://releases.velocity.tech/velocity/v0.32.1-20231022195200-3242989/velocity_Linux_arm64.tar.gz"
      sha256 "7e06c5838a4e1001743289ab802a9e2118bbf228b9339d8066e29a9dbda81ff2"

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
      url "https://releases.velocity.tech/velocity/v0.32.1-20231022195200-3242989/velocity_Linux_x86_64.tar.gz"
      sha256 "228015f562ba658f269f945dd83e9fecade3806fa4e63ee08c6ada78274c7bfc"

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
