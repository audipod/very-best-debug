Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "all_users" })
  get("/users", { :controller => "users", :action => "all_users" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/insert_user_record", { :controller => "users", :action => "create" })
  post("/update_users/:user_id", { :controller => "users", :action => "update" })

  get("/venues", { :controller => "venues", :action => "index" })
  post("/insert_venue_record", { :controller => "venues", :action => "create" })
  get("/venues/:an_id", { :controller => "venues", :action => "show" })
  post("/update_venue/:the_id", { :controller => "application", :action => "update" })
  get("/delete_venue/:id_to_delete", { :controller => "venue", :action => "destroy" })
  
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end
