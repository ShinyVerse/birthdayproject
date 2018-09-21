require 'today'

describe Today do
  tomorrow = Time.now + 24*60*60
  working = Today.new(tomorrow.strftime('%d'), Time.now.strftime('%m'))
  context '#countdown_days' do
    it 'gives the number of days until your birthday' do
      expect(working.countdown_days).to eq 1
    end
  end
end
