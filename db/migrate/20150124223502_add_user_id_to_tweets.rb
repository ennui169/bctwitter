class AddUserIdToTweets < ActiveRecord::Migrationprofi
  def change
    add_reference :tweets, :user, index: true
  end
end
