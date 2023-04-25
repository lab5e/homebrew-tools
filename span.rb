class Span <  Formula
	desc "Span command line client"
	homepage "https://github.com/lab5e/spancli"
	version "0.2.0"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.1.16/span.amd64-macos.zip"
			sha256 "84dc30a0ec9f28cef38b6b7bc0ab87c14a33c8435cd5435364af3f707b10b730"
		end

		if Hardware::CPU.arm?
			url "https://github.com/lab5e/spancli/releases/download/v0.1.16/span.arm64-macos.zip"
			sha256 "6e0c3f6c8e631253a4c7a13bad72e93278a42db62717822121be656013101f1d"
		end
	end

	on_linux do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.1.16/span.amd64-linux.zip"
			sha256 "d11c8e3b7413958d4600df77182e4c7c01380d7c3cbd7d7027dda5628a242bd6"
		end

		if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
			url "https://github.com/lab5e/spancli/releases/download/v0.1.16/span.arm5-rpi-linux.zip"
			sha256 "c9d7c371533a2ab972996e6184ba513bb8447fbac985fbe1d2d629b94edc26c2"
		end
	end

	def install
		bin.install "span"
	end
end
