module.exports = (number, index) =>
  [
    ['agora mesmo', 'agora mesmo'],
    ['há menos de um minuto', 'em %s segundos'],
    ['há 1 minuto', 'em 1 minuto'],
    ['há %s minutos', 'em %s minutos'],
    ['1 hora atrás', 'em 1 hora'],
    ['%s horas atrás', 'em %s horas'],
    ['1 dia atrás', 'em 1 dia'],
    ['%s dias atrás', 'em %s dias'],
    ['1 semana atrás', 'em 1 semana'],
    ['%s semanas atrás', 'em %s semanas'],
    ['1 mês atrás', 'em 1 mês'],
    ['%s meses atrás', 'em %s meses'],
    ['1 ano atrás', 'em 1 ano'],
    ['%s anos atrás', 'em %s anos'],
  ][index];
