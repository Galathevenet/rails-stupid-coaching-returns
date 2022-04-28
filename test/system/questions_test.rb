require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question will get an angry coach answer" do
    visit ask_url
    fill_in "question", with: "Who are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying i am going to work will get the coach happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "submitting empty ask will make the coach deaf" do
    visit ask_url
    click_on "Ask"

    assert_text "I can't hear you"
  end
end
