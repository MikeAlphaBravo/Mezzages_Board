require 'rails_helper'

describe User do
  it { should have_many :boards }
  it { should have_many :mezzages }
end
