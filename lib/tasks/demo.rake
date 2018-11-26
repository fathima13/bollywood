task :demo => :environment do
	actors = Actor.all
	actors.each do |actor|
		actor.country = 'California'
		actor.save
	end
end