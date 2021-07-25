require "application_system_test_case"

class ResultatsTest < ApplicationSystemTestCase
  setup do
    @resultat = resultats(:one)
  end

  test "visiting the index" do
    visit resultats_url
    assert_selector "h1", text: "Resultats"
  end

  test "creating a Resultat" do
    visit resultats_url
    click_on "New Resultat"

    fill_in "Age", with: @resultat.age
    fill_in "Contact", with: @resultat.contact
    fill_in "Contact parent", with: @resultat.contact_parent
    fill_in "Ecole", with: @resultat.ecole
    fill_in "Genre", with: @resultat.genre
    fill_in "Serie", with: @resultat.serie
    fill_in "Slug", with: @resultat.slug
    fill_in "Status", with: @resultat.status
    fill_in "Username", with: @resultat.username
    fill_in "Ville", with: @resultat.ville
    click_on "Create Resultat"

    assert_text "Resultat was successfully created"
    click_on "Back"
  end

  test "updating a Resultat" do
    visit resultats_url
    click_on "Edit", match: :first

    fill_in "Age", with: @resultat.age
    fill_in "Contact", with: @resultat.contact
    fill_in "Contact parent", with: @resultat.contact_parent
    fill_in "Ecole", with: @resultat.ecole
    fill_in "Genre", with: @resultat.genre
    fill_in "Serie", with: @resultat.serie
    fill_in "Slug", with: @resultat.slug
    fill_in "Status", with: @resultat.status
    fill_in "Username", with: @resultat.username
    fill_in "Ville", with: @resultat.ville
    click_on "Update Resultat"

    assert_text "Resultat was successfully updated"
    click_on "Back"
  end

  test "destroying a Resultat" do
    visit resultats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resultat was successfully destroyed"
  end
end
