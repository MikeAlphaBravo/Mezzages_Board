require 'rails_helper'

describe Mezzage do
  it { should belong_to :user }
  it { should belong_to :board }
end
