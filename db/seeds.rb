User.destroy_all
Editor.destroy_all

users = User.create!([
  { name: "Samer Yousry", email: "samer@example.com" },
  { name: "Ahmed Ali", email: "ahmed@example.com" },
  { name: "Mona Hassan", email: "mona@example.com" }
])

editors = Editor.create!([
  { name: "Editor One", email: "editor1@example.com" },
  { name: "Editor Two", email: "editor2@example.com" },
  { name: "Editor Three", email: "editor3@example.com" }
])

post = Post.create!(
  title: "First Rails MVC Post",
  content: "This post was created from seed data.",
  creator: users.first
)

post.editors << editors.first(2)
