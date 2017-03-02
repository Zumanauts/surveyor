collection @responses, :root => "responses", :object_root => false
attribute :id
node(:answer_id){|r| r.answer.id }
node(:question_id){|r| r.question.id }
node(:value, :if => lambda{|r| r.answer.response_class != "answer"}){|r| r.json_value }
