require 'rails_helper'

describe User do
  it { should have_one :profile}
end
