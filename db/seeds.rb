Tag.destroy_all
Tag.create([
  { tag_name:"vacation" },
  { tag_name:"animal" },
  { tag_name:"politics" },
  { tag_name:"cute" }
  ])

  Comment.destroy_all
  Comment.create([
    { user_id:3, post_id:1, body:"Make America great again!" },
    { user_id:4, post_id:1, body:"I love America. It's my home and the best country every!" },
    { user_id:2, post_id:1, body:"OMG! I love everything about this picture!" },
    { user_id:1, post_id:3, body:"Tommy is having a great time with that dog. I wish I had a dog growing up!" },
    { user_id:3, post_id:3, body:"I hate dogs. You are all fired! LOL JK." },
    { user_id:4, post_id:5, body:"Our country is so lovely. I want everyone have proper health care." }
    ])
