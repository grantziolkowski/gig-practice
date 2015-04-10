def difficulty_helper
  case params['difficulty']
    when 'easy' then return 0
    when 'medium' then return 1
    when 'hard' then return 2
  end
end
