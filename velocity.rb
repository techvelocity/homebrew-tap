# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Velocity < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.74.0-20240625165757-a187aa4d"

  on_macos do
    on_intel do
      url "https://releases.velocity.tech/velocity/v0.74.0-20240625165757-a187aa4d/velocity_Darwin_x86_64.tar.gz"
      sha256 "b3f39598f13e84f35222e17c7f9ff133b320fea70c6625cfcf1495e2e8c4d43e"

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
      url "https://releases.velocity.tech/velocity/v0.74.0-20240625165757-a187aa4d/velocity_Darwin_arm64.tar.gz"
      sha256 "2b6b30ab90ca1ba8b0656cce34a9cefe1a75785bbdd29b77a2ef2eccf1804216"

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
        url "https://releases.velocity.tech/velocity/v0.74.0-20240625165757-a187aa4d/velocity_Linux_x86_64.tar.gz"
        sha256 "1aa887857ed354221fc89e4a203e663780c765a983cc2510cb5a4b524960507f"

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
        url "https://releases.velocity.tech/velocity/v0.74.0-20240625165757-a187aa4d/velocity_Linux_arm64.tar.gz"
        sha256 "e5d671c578d8d6d3cd16685f274ad39c813dacea2622c20cd6bc7fd795327cff"

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
