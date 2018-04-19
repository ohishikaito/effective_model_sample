class Task < ApplicationRecord
  enum kind: { individual: 0, work: 1, others: 2 }
end
