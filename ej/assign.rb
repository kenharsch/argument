@users = User.where(admin: false)
@posts = Post.where(assignment_id: 1)
@users.each do |u|
	post_array = Array.new
	for i in 1..4
		@post = @posts.sample
		gid = u.memberships.last.group_id
		if @post.user.memberships.last.group_id == gid
			@post = @posts.sample
		elsif post_array.include?(@post.id)
			@post = @posts.sample
		end
		post_array.push(@post.id)
		Evaluation.create(post_id: @post.id, user_id: u.id)
	end
end
