module ApplicationHelper
  def vote_button_class(votable, vote)
    if current_user && current_user.voted_with?(votable, vote)
      "text-red-600"
    else
      ""
    end
  end

  def flash_class(level)
    base_class = "rounded-md border-1 border-gray-800 p-2 max-w-fit mx-auto z-10 absolute left-0 right-0 -top-8"
    case level
    when :notice then "bg-blue-100 text-blue-800 #{base_class}"
    when :success then "bg-green-100 text-green-800 #{base_class}"
    when :error then "bg-orange-100 text-orange-800 #{base_class}"
    when :alert then "bg-red-100 text-red-800 #{base_class}"
    end
  end
end
