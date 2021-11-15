class AddTopicReferenceToBloggs < ActiveRecord::Migration[6.1]
  def change
    add_reference :bloggs, :topic, null: true, foreign_key: true
    #add_reference :bloggs, :topic, foreign_key: true in ror5 only this line gets create null on not creted in ror5
  end
end
