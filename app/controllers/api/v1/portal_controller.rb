module Api
    module V1
        class PortalController < ApplicationController
            
            before_action :set_student, :valid_student, :set_college, :students_college, :set_exam, :colleges_exam, :students_exam
            # , :valid_exam? , :exam_time
            
        
            def set_student
                # finds or creates a student
                @student = Student.find_or_create_by(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], 
                username: params[:username], password_digest: params[:password_digest])
                
                if @student.invalid?
                    render json: {errors: @student.errors.full_messages}
                end
            end

            def valid_student
                # validates students uniqueness
               if @student.username != params[:username] 
                render json: {message: "Invalid Username "}
               elsif @student.password_digest != params[:password_digest] 
                render json: {message: "Invalid Password"}
                else
               end  
            end

            def set_college
                # finds a college
                @college = College.find_by_id(params[:college_id])
                unless @college
                    render json: {message: "No college found"}
                end
            end

            def students_college
                # checks if a student belongs the college
                if @college.students.exclude?(@student)
                    render json: {message: "Student not found"}
                end
            end
        
            def set_exam
                # finds exam
                @exam = Exam.find_by_id(params[:exam_id])
                
                if @exam.nil?
                    render json: {message: "No exam found"}
                end
            end

            def colleges_exam
                # checks if exam belongs_to college
                
                if @exam.college != @college
                    render json: {message: "Exam does not belong to this college"}
                end
            end

            def students_exam
                # checks if student is included in the exam
                if @exam.students.exclude?(@student)
                    render json: {message: "Student not found"}
                end
            end

            def start_exam
                # checks to see if exam has begun or not
                @exam_window = ExamWindow.find_by(start_time: params[:start_time])
                
                if @exam_window.nil? 
                    render json: {message: "Invalid Time"}
                elsif @exam_window.start_time >= Time.current
                    render json: {message: "Testing has not begun"}
                else 
                    render json: {message: "Testing has begun"}
                end
                # render json: @exam
            end

        end
    end
end
