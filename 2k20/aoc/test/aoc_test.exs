defmodule AOCTest do
  use ExUnit.Case
  doctest AOC

  test "Day 1" do
    assert AOC.D1.run1() == 996_996
    assert AOC.D1.run2() == 9_210_402
  end

  test "Day 2" do
    assert AOC.D2.run1() == 393
    assert AOC.D2.run2() == 690
  end

  test "Day 3" do
    assert AOC.D3.run1() == 195
    assert AOC.D3.run2() == 3_772_314_000
  end

  fields = [
    {"byr", "2002", true},
    {"byr", "2003", false},
    {"hgt", "60in", true},
    {"hgt", "190cm", true},
    {"hgt", "190in", false},
    {"hgt", "190", false},
    {"hcl", "#123abc", true},
    {"hcl", "#123abz", false},
    {"hcl", "123abc", false},
    {"ecl", "brn", true},
    {"ecl", "wat", false},
    {"pid", "000000001", true},
    {"pid", "0123456789", false}
  ]

  for {key, val, expect} <- fields do
    @key key
    @val val
    @expect expect
    test "Day 4: values validation : #{@key} #{@val} #{@expect}" do
      assert AOC.D4.valid_value?(@key, @val) == @expect
    end
  end

  test "Day 4" do
    assert AOC.D4.run1() == 228
    assert AOC.D4.run2() == 175
  end

  test "Day 5" do
    assert AOC.D5.run1() == 926
    assert AOC.D5.run2() == 657
  end
end
