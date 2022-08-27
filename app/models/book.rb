class Book < ApplicationRecord
  include ERP::DataSync::Consumer

  contract('Book_producer', 'Book::Contracts::V1') do
    fields_to_synchronize do |_payload|
      %w[title author]
    end
  end
end
