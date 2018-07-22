require 'capybara/dsl'

class Asos_join
  include Capybara::DSL

  def reg_page
    visit('https://my.asos.com/identity/register?lang=en-GB&store=COM&country=GB&keyStoreDataversion=5e950e2a-9&returnUrl=http%3A%2F%2Fwww.asos.com%2F')
  end

  def fill_email(email)
    fill_in('Email', with: "#{email}")
  end

  def email_error
    find('.field-validation-error').text
  end

  def fill_contact_details(firstname,lastname,password,day,month,year)
    fill_in('First name', with: "#{firstname}")
    sleep 1
    fill_in('Last name', with: "#{lastname}")
    sleep 1
    fill_in('Password', with: "#{password}")
    sleep 1
    select("#{day}", :from => 'BirthDay')
    sleep 1
    select("#{month}", :from => 'BirthMonth')
    sleep 1
    select("#{year}", :from => 'BirthYear')
    sleep 1
  end

  def click_submit
    find('#register').click
  end

end
