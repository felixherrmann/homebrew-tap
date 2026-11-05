class SwiftPackageList < Formula
  desc "A command-line tool to list Swift package dependencies and generate acknowledgments."
  homepage "https://github.com/felixherrmann/swift-package-list"
  url "https://github.com/felixherrmann/swift-package-list/releases/download/5.0.0/swift-package-list.tar.gz"
  sha256 "813fd6b546ad7a59b8be0a3f77892aab0eb4fcb0537bf15390f578a81caff9b5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "swift-package-list"
    man1.install "swift-package-list.1"
    generate_completions_from_executable(bin/"swift-package-list", "--generate-completion-script")
  end

  test do
    system "#{bin}/swift-package-list"
  end
end
