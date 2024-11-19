function copiarCodigo(id) {
    const codigo = document.getElementById(id).innerText;
    navigator.clipboard.writeText(codigo).then(() => {
        alert("Código copiado com sucesso!");
    }).catch(err => {
        console.error("Erro ao copiar código: ", err);
    });
}

function executarContador() {
    let resultado = "";
    for (let n = 0; n <= 99; n++) {
        resultado += n + "\n";
    }
    document.getElementById("outputContador").innerText = resultado;
}

function executarNumerosPares() {
    let resultado = "";
    for (let n = 0; n <= 100; n += 2) {
        resultado += n + "\n";
    }
    document.getElementById("outputNumerosPares").innerText = resultado;
}

function executarTabuada() {
    const valor = parseInt(document.getElementById("inputTabuada").value);
    if (isNaN(valor)) {
        alert("Por favor, insira um valor válido.");
        return;
    }
    let resultado = "";
    for (let contador = 1; contador <= 10; contador++) {
        resultado += `${valor} x ${contador} = ${valor * contador}\n`;
    }
    document.getElementById("outputTabuada").innerText = resultado;
}

function executarPotencia() {
    let resultado = "";
    const x = 3;
    for (let z = 0; z <= 10; z++) {
        const y = z === 0 ? 1 : Math.pow(x, z);
        resultado += `${x}^${z} = ${y}\n`;
    }
    document.getElementById("outputPotencia").innerText = resultado;
}

function executarTermosFracionarios() {
    let soma = 0;
    let resultado = "";
    for (let i = 1; i <= 10; i++) {
        soma += 1 / i;
        resultado += `1/${i} = ${(1 / i).toFixed(5)}\n`;
    }
    resultado += `\nSoma dos 10 primeiros termos: ${soma.toFixed(5)}`;
    document.getElementById("outputTermosFracionarios").innerText = resultado;
}