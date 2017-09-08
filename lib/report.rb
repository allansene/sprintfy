class Report
  def chart_data_sprint
    sprints_test = {}
    Sprint.find_each do |sprint|
      sprints_test[sprint.squad.id] = sprint.squad.name
    end
    sprints_test
  end

  def admin_chart_data
    [
      name: 'Média de SPs por dia por sprint',
      data: chart_data_sprint
    ]
  end
end
