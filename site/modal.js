// Código para o modal de login
const login_open = document.getElementById('login_open');
const login_close = document.getElementById('login_close');
const login_panel = document.getElementById('login_panel');

function loginModalState() {
    if (login_panel.classList.contains('hidden')) {
        // Show modal
        login_panel.classList.remove('hidden');
        login_panel.classList.add('flex');

        // Start animation open
        login_panel.classList.add('card_open');
    } else {
        // Delete modal
        login_panel.classList.add('hidden');
        login_panel.classList.remove('flex');

        // Remove animation open
        login_panel.classList.remove('card_open');
    }
}

login_open.addEventListener('click', loginModalState);
login_close.addEventListener('click', loginModalState);

// Código para o modal de cadastro
const cadastro_open = document.getElementById('cadastro_open');
const cadastro_close = document.getElementById('cadastro_close');
const cadastro_panel = document.getElementById('cadastro_panel');

function cadastroModalState() {
    if (cadastro_panel.classList.contains('hidden')) {
        // Show modal
        cadastro_panel.classList.remove('hidden');
        cadastro_panel.classList.add('flex');

        // Start animation open
        cadastro_panel.classList.add('card_open');
    } else {
        // Delete modal
        cadastro_panel.classList.add('hidden');
        cadastro_panel.classList.remove('flex');

        // Remove animation open
        cadastro_panel.classList.remove('card_open');
    }
}

cadastro_open.addEventListener('click', cadastroModalState);
cadastro_close.addEventListener('click', cadastroModalState);
