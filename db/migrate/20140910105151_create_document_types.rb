class CreateDocumentTypes < ActiveRecord::Migration
  def change
    create_table :document_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
