require 'spec_helper'

describe String do
  describe '#<<' do
    it 'appends a charactor' do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end
    it ' Do not add nill' do
      pending('調査中')
      s = "ABC"
      # s << nill
      # expect(s.size).to eq(4)
      expect{ s << nill }.to raise_error(TypeError)
    end
  end
end