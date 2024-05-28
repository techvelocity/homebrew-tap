# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.68.0-20240528170214-622a6a28"

  on_macos do
    on_intel do
      url "https://releases.velocity.tech/velocity/v0.68.0-20240528170214-622a6a28/velocity_Darwin_x86_64.tar.gz"
      sha256 "14c5ea1955d610c901c3a1b96d4d90693234964e8e22dedfec6993a118784a9f"

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
      url "https://releases.velocity.tech/velocity/v0.68.0-20240528170214-622a6a28/velocity_Darwin_arm64.tar.gz"
      sha256 "cc37ee654cc983db1bc723bd9921d6762298d7a96303231e42c8dcf4af2d8ead"

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
        url "https://releases.velocity.tech/velocity/v0.68.0-20240528170214-622a6a28/velocity_Linux_x86_64.tar.gz"
        sha256 "7826db357c72890a330b9395efa2017c5f26846a4a23061c0e16dd91480c0d07"

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
        url "https://releases.velocity.tech/velocity/v0.68.0-20240528170214-622a6a28/velocity_Linux_arm64.tar.gz"
        sha256 "3ce2ede23f9db8db4488180b40196c22e2396f690db4aba9e0735762cf418693"

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
