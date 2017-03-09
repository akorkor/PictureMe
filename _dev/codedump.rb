Post.destroy_all
Post.create([
  { user_id:1, content_type:"image/jpeg", title:"First President", content:"I'm the first president of United States of America!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:1, content_type:"image/jpeg", title:"First Country", content:"I love America!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:1, content_type:"image/jpeg", title:"Great Country", content:"My teeth are wooden!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:2, content_type:"image/jpeg", title:"Beethoven!!", content:"I look like a crazy musician!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:2, content_type:"image/jpeg", title:"Vacation Pic", content:"I wish I could ride a shark!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:3, content_type:"image/jpeg", title:"You are fired", content:"I am a boss man, I like to fire people!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:3, content_type:"image/jpeg", title:"They are rapest", content:"Look what I can do with my hands. I have pink cheeks!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil },
  { user_id:3, content_type:"image/jpeg", title:"Me and the wifey", content:"M and I are dancing!!", likes:2, image_file_name:nil, image_content_type:nil, image_file_size:nil, image_updated_at:nil }
  ])

  # User.destroy_all
  # User.create([
  #   { fname:"George", lname:"Washington", email:"gw@gmail.com", username:"gw123", password:"gw123" },
  #   { fname:"Thomas", lname:"Jefferson", email:"tj@gmail.com", username:"tj123", password:"tj123" },
  #   { fname:"Donald", lname:"Trump", email:"dt@gmail.com", username:"dt123", password:"dt123" },
  #   { fname:"Barack", lname:"Obama", email:"bo@gmail.com", username:"bo123", password:"bo123" }
  #   ])
  #


  <li><%= link_to 'Photos', photos_path %></li>

  <div class="section">
  <nav class="navbar navbar-inverse">
    <div class="container">
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li><%= link_to 'Upload Your Photo', new_photo_path %></li>
        </ul>
        <!-- == alert container == -->
      </div>
    </div>
  </nav>
  </div>
