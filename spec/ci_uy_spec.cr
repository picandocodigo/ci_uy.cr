require "./spec_helper"

describe CiUY do
  it "should return a valid checker digit" do
    ci = "1111111"
    CiUY.validation_digit(ci).should eq '1'

    ci2 = "2222222"
    CiUY.validation_digit(ci2).should eq '2'
  end

  it "should validate numbers" do
    ci = "11111111"
    CiUY.validate(ci).should be_true
  end

  it "should validate numbers even when using dots and dashes" do
    ci = "1.111.111-1"
    CiUY.validate(ci).should be_true

    ci = "1-111/111/1"
    CiUY.validate(ci).should be_true
  end

  it "should not validate wrong numbers" do
    ci = "1.111.222.1"
    CiUY.validate(ci).should be_false
  end

  it "should get a valid random ci number" do
    ci = CiUY.random
    CiUY.validate(ci).should be_true
  end

  it "should validate ci\"s with 6 digits" do
    ci = "1111113"
    CiUY.validate(ci).should be_true
  end

  it "should accept integers as input" do
    ci = 51_691_703
    CiUY.validate(ci).should be_true
  end

  it "should use more idiomatic aliases for methods" do
    ci = CiUY.random
    CiUY.validate(ci).should be_true
    CiUY.validation_digit(ci).should eq ci[-1]
  end

  it "should not validate numbers smaller than 100_000" do
    ci = "12345"
    CiUY.validate(ci).should be_false
    ci2 = "17"
    CiUY.validate(ci2).should be_false
    ci3 = "34.993"
    CiUY.validate(ci3).should be_false
  end
end
