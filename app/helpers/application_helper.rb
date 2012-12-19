module ApplicationHelper


  def incumbent_officials(office_id)  
    return Official.where("id in (select official_id from official_tenures where office_id = ? and from_date <= ? and to_date >= ?)", office_id, DateTime.now, DateTime.now)
 
  end

  def offices_for_user(user_id)
    return Office.where("id in (select group_id from user_groups where group_type = 'Office' and user_id = ?)", user_id)
  end
    

end
