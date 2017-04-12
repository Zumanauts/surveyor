object @response

attribute :id, :answer_id, :question_id, :response_set_id, :response_group

node(:value, :if => lambda{|r| r.answer&.response_class != "answer"}){|r| r.json_value }
node(:is_valid){|r| r.correct? }