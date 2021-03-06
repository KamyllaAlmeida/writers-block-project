json.story do 
  json.call(
    @story,
    :id,
    :title,
    :description,
    :image
  )
end

json.segments do
  json.array! @segments, :id, :story_id, :text, :position
end

json.author do 
  json.call(
    @author,
    :id,
    :first_name,
    :last_name
  )
end


json.number_of_likes do
 json.call(
  json.number @number_of_likes
 )
end

json.user_liked_story do
 json.call(
  json.boolean @user_liked_story
 )
end

json.segments_feedbacks do
  json.array! @feedbacks do |items|

    json.array! items do |item|
    
        json.id item.id
        json.segment_id item.segment_id
        json.text item.text
        json.created_at item.created_at
        json.first_name item.user.first_name
        json.last_name item.user.last_name
        json.number_of_likes item.feedback_likes.count
   
    end
  end
end
