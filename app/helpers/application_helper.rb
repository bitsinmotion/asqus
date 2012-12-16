module ApplicationHelper


  def incumbent_officials(office_id)  
    return Official.where("id in (select official_id from official_tenures where office_id = ? and from_date <= ? and to_date >= ?)", office_id, DateTime.now, DateTime.now)
 
  end
    

end
