module StudentsHelper
    def student_photo
         gravatar_image_tag @student.email,:class=>"gravatar"
    end
end
