task :demo => :environment do
	actors = Actor.all
	actors.each do |actor|
		actor.country = 'India'
		actor.save
	end
end