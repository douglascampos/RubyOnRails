json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :ra, :nome, :curso
  json.url aluno_url(aluno, format: :json)
end
