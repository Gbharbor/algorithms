function copiarCodigo(id) {
    const codigo = document.getElementById(id).innerText;
    navigator.clipboard.writeText(codigo).then(() => {
        alert("Código copiado com sucesso!");
    }).catch(err => {
        console.error("Erro ao copiar código: ", err);
    });
}

function executarMultiplicarMatriz() {
    let matriz = [];
    for (let l = 0; l < 5; l++) {
        matriz[l] = [];
        for (let c = 0; c < 5; c++) {
            matriz[l][c] = Math.floor(Math.random() * 10) + 1; // Gerando valores aleatórios para simular entrada
        }
    }
    const multiplicador = 2; // Multiplicador fixo para simplificação
    let resultado = "Matriz Original:\n";
    matriz.forEach(row => resultado += row.join(" ") + "\n");

    resultado += "\nMatriz Multiplicada por " + multiplicador + ":\n";
    matriz.forEach(row => {
        resultado += row.map(value => value * multiplicador).join(" ") + "\n";
    });

    document.getElementById("outputMultiplicarMatriz").innerText = resultado;
}

function executarSomaDiagonal() {
    let matriz = [];
    let somaDiagonal = 0;

    for (let l = 0; l < 5; l++) {
        matriz[l] = [];
        for (let c = 0; c < 5; c++) {
            matriz[l][c] = Math.floor(Math.random() * 10) + 1; // Gerando valores aleatórios para simular entrada
        }
    }

    let resultado = "Matriz Digitada:\n";
    matriz.forEach(row => resultado += row.join(" ") + "\n");

    for (let i = 0; i < 5; i++) {
        somaDiagonal += matriz[i][i];
    }

    resultado += "\nSoma da Diagonal Principal: " + somaDiagonal;
    document.getElementById("outputSomaDiagonal").innerText = resultado;
}