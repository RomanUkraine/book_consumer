class Book < ApplicationRecord
  include ERP::DataSync::Consumer

  contract('Book_producer', 'Book::Contracts::V1') do
    fields_to_synchronize do |_payload|
      %w[first_name last_name email state]
    end
  end
end
