# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.34.1-20231110094439-db67425"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.34.1-20231110094439-db67425/velocity_Darwin_arm64.tar.gz"
      sha256 "66913b2b0961fdd38c47f6b3bfed587c9cfd3454f7872f6ed2ea65c9c97fc860"

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
      url "https://releases.velocity.tech/velocity/v0.34.1-20231110094439-db67425/velocity_Darwin_x86_64.tar.gz"
      sha256 "46a07c034c6bd7e1a0562145b71c3f8927c42712d5df69791d597766933c76d7"

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
      url "https://releases.velocity.tech/velocity/v0.34.1-20231110094439-db67425/velocity_Linux_arm64.tar.gz"
      sha256 "40ff7f26ab3cb08b249e884a575be2f1b03079462f5bb0f3990a5e7bda913961"

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
      url "https://releases.velocity.tech/velocity/v0.34.1-20231110094439-db67425/velocity_Linux_x86_64.tar.gz"
      sha256 "7c0db742cace8b25d90df21c32c09c61fefd7c6083ab244f7465998959c6a552"

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
