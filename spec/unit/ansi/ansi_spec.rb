# frozen_string_literal: true

RSpec.describe Strings::ANSI, '.ansi?' do
  subject(:sanitizer) { described_class }

  it "checks if code is ansi" do
    expect(Strings::ANSI.ansi?("\e[0;33m")).to eq(true)
  end
end
