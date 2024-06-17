# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.73.0-20240617212811-c615217c"

  on_macos do
    on_intel do
      url "https://releases.velocity.tech/velocity/v0.73.0-20240617212811-c615217c/velocity_Darwin_x86_64.tar.gz"
      sha256 "e046a273810e5de3b42a692a3787db45279d7b03ca4751f1482d946ed9c3f285"

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
      url "https://releases.velocity.tech/velocity/v0.73.0-20240617212811-c615217c/velocity_Darwin_arm64.tar.gz"
      sha256 "94e53fac25faa09b5ab94f67439e9f6fec989702100beff5a9cdf473a7b4ef20"

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
        url "https://releases.velocity.tech/velocity/v0.73.0-20240617212811-c615217c/velocity_Linux_x86_64.tar.gz"
        sha256 "7cc698fd118d45e097fe06e7dab6843a76557397de9c5064149fd5e9eb523952"

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
        url "https://releases.velocity.tech/velocity/v0.73.0-20240617212811-c615217c/velocity_Linux_arm64.tar.gz"
        sha256 "a16295bb7de252f2229555c284fd8c5b8fa578a5b242ea581f936073a325bc77"

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
