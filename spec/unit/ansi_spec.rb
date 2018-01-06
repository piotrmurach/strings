# frozen_string_literal: true

RSpec.describe Strings, '#ansi?' do
  it "removes ansi codes" do
    expect(Strings.ansi?("\e[33mfoo\e[0m")).to eq(true)
  end
end
