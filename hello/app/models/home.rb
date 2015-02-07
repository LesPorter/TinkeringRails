class Home
  
  def name
    name = "Les"
  end
  
  def birthdate
    birthdate = Date.new(1977,3,1)
  end
  
  def age
    now = Date.today
    age = now.year - birthdate.year
    
    # If birthday has not passed in current year then correct age by -1
    birthdate_this_year = now.year.to_s + "-" + birthdate.month.to_s + "-" + birthdate.day.to_s
    if now < Date.parse(birthdate_this_year) then
      age = age - 1
    end
  end
    
    
    # Start work here  
    
    
    def days_until_bday
#    birthmonth = birthdate.month
#    birthday = birthdate.day
#    current_year = Date.today.year
#    birthdate_this_year = Date.new(current_year,birthmonth,birthday)
    #days_until_bday = (birthdate_this_year.to_date - Date.today).to_i
    days_until_bday = 5
  end
   
end
