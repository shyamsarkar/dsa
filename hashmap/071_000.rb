# Tutor Performance Summary

=begin
Given an array of lesson hashes, return a hash keyed by tutor_id with:

:total_lessons — count of all lessons
:total_revenue — sum of fee for completed lessons only
:completion_rate — % completed, rounded to 2 decimals

lessons = [
  { id: 1, tutor_id: 201, status: 'completed',  fee: 1500 },
  { id: 2, tutor_id: 201, status: 'completed',  fee: 1500 },
  { id: 3, tutor_id: 201, status: 'cancelled',  fee: 0    },
  { id: 4, tutor_id: 202, status: 'completed',  fee: 2000 },
  { id: 5, tutor_id: 202, status: 'scheduled',  fee: 2000 },
]

# output:
{
  201 => { total_lessons: 3, total_revenue: 3000, completion_rate: 66.67 },
  202 => { total_lessons: 2, total_revenue: 4000, completion_rate: 50.0 }
}

=end

def tutor_stats(lessons)
  result = {}

  lessons.each do |lesson|
    tutor_id = lesson[:tutor_id]

    result[tutor_id] ||= {
      total_lessons: 0,
      total_revenue: 0,
      completed: 0
    }
    

    result[tutor_id][:total_lessons] += 1
    result[tutor_id][:total_revenue] += lesson[:fee]
    result[tutor_id][:completed] += 1 if lesson[:status] == 'completed'
  end

  result.each do |tutor_id, data| 
    data[:completion_rate] = (data[:completed].to_f / data[:total_lessons]) * 100
  end

  result
end
