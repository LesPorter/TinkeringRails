class Home
  
  def name
    name = "Les"
  end
  
  def birthdate
    birthdate = Date.new(1977,3,1)
  end
  
  def birthdate_this_year
    birthdate_this_year = now.year.to_s + "-" + birthdate.month.to_s + "-" + birthdate.day.to_s 
  end
  
  def now
    now = Date.today
  end
  
  def age
    age = now.year - birthdate.year
    # If birthday has not passed in current year then correct age by -1
    if now < Date.parse(birthdate_this_year) then
      age = age - 1
    end
  end
    
  def days_until_bday
    # If this year's birthday has passed, count days to next year's birthday
    if now < Date.parse(birthdate_this_year) then
      year_for_next_birthdate = now.year
    else
      year_for_next_birthdate = now.year + 1
    end
    next_birthdate = year_for_next_birthdate.to_s + "-" + birthdate.month.to_s + "-" + birthdate.day.to_s     
    days_until_bday = (next_birthdate.to_date - now).to_i
  end
  
end