var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {

    instrucaoSql = ''

   
     if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select qtd_acertos as quantidadeAcertos , count(qtd_acertos) as quantidadeJogadas from resultado_quiz group by qtd_acertos;`;
    } else {

        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



module.exports = {
    buscarUltimasMedidas
   
}
