object false
child @responses => :responses do
    attribute :id
    node(:answer_id){|r| r.answer.id }
    node(:question_id){|r| r.question.id }
    node(:value, :if => lambda{|r| r.answer.response_class != "answer"}){|r| r.json_value }
end