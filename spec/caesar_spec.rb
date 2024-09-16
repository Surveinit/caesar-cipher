require_relative '../lib/caesar-cipher'

describe 'Caesar Cipher' do

  describe 'caesar_cipher' do
    context 'Encrypting messages' do
      it 'with small shift number' do
        message = 'Hello bitch!'
        shift = 2
        expect(caesar_cipher(message, shift)).to eq('fcjjm zgraf!')
      end

      it 'with large shift number' do
        message = 'Hello bitch!'
        shift = 21
        expect(caesar_cipher(message, shift)).to eq('mjqqt gnyhm!')
      end
    end
    
    context 'Decrypt messages' do
      it 'with small shift number' do
        message = 'fcjjm zgraf!'
        shift = -2
        expect(caesar_cipher(message, shift)).to eq('hello bitch!')
      end

      it 'with large shift number' do
        message = 'mjqqt gnyhm!'
        shift = -21
        expect(caesar_cipher(message, shift)).to eq('hello bitch!')
      end
    end
  end

  
end