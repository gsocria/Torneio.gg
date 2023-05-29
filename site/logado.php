<?php

include_once('./config/conexao.php');
include_once('./config/func.php');

$email = $_SESSION['email'];

if (!isset($email)) {
    header("location:index.php");
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="style.css">
    <title>Torneios.gg</title>
</head>

<body>
    <!-- component -->
    <div class="bg-gray-100 font-sans w-full min-h-screen m-0">
        <div class="bg-white shadow">
            <div class="container mx-auto px-4">
                <div class="flex items-center justify-between py-4">
                    <div>
                        <a href="#"><img class="w-100 h-10" src="./img/fotor_2023-5-23_10_46_15.png" alt=""></a>
                    </div>

                    <div class="hidden sm:flex sm:items-center">
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mr-4">Products</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mr-4">Marketplace</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mr-4">Partners</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300">Pricing</a>
                    </div>

                    <div class="hidden sm:flex sm:items-center">
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-purple-600 mr-4">
                            <img src="./img/perfil-de-usuario.png" class="w-7 h-7" alt="">
                        </a>
                        <a href="./logout.php" class="text-gray-800 text-sm font-semibold px-4 py-2 rounded-lg hover:text-purple-600 hover:border-purple-600">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M11.992 8.994V6.996H7.995v-2h3.997V2.999l3.998 2.998-3.998 2.998zm-1.998 2.998H5.996V2.998L2 1h7.995v2.998h1V1c0-.55-.45-.999-1-.999H.999A1.001 1.001 0 0 0 0 1v11.372c0 .39.22.73.55.91L5.996 16v-3.008h3.998c.55 0 1-.45 1-1V7.996h-1v3.998z" />
                            </svg>
                        </a>

                    </div>

                    <!-- PARTE RESPONSIVA  -->


                </div>

                <div class="block sm:hidden bg-white border-t-2 py-2">
                    <div class="flex flex-col">
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mb-1">Home</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mb-1">Noticias</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mb-1">Campeonatos</a>
                        <a href="#" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mb-1">Sobre</a>
                        <div class="flex justify-between items-center border-t-2 pt-2">
                            <button id="card_open" class="text-gray-800 text-sm font-semibold hover:text-yellow-300 mr-4">Login</button>

                            <div id="card_panel" class="main-modal fixed w-full inset-0 z-50 overflow-hidden flex justify-center items-center hidden">
                                <div class="modal-container bg-white w-4/12 md:max-w-11/12 mx-auto rounded-xl z-50 overflow-y-auto">
                                    <div class="modal-content py-4 text-left px-6">
                                        <div class="flex justify-between items-center pb-3">
                                            <p class="text-2xl font-bold text-gray-500">Header</p>
                                            <div id="card_close" class="modal-close cursor-pointer z-50">
                                                <svg class="fill-current text-gray-500" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">
                                                    <path d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z">
                                                    </path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="my-5 mr-5 ml-5 flex justify-center">
                                            <form action="#" class="max-w-sm mx-auto">

                                                <div class="mb-4">
                                                    <label for="email-login" class="block text-gray-700 text-sm font-bold mb-2">Email:</label>
                                                    <input type="text" name="email-login" id="email-login" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
                                                </div>

                                                <div class="mb-4">
                                                    <label for="senha-login" class="block text-gray-700 text-sm font-bold mb-2">Senha:</label>
                                                    <input type="password" name="senha-login" id="senha-login" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
                                                </div>

                                                <div class="flex justify-center">
                                                    <button type="submit" class="bg-black text-white font-bold py-2 px-4 rounded">
                                                        Enviar
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="flex justify-end pt-2 space-x-14">
                                            <p>Footer</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <button id="cadastro_open" class="text-gray-800 text-sm font-semibold border px-4 py-2 rounded-lg hover:text-yellow-300 hover:border-yellow-300">Cadastre-se</button>

                            <div id="cadastro_panel" class="main-modal fixed w-full inset-0 z-50 overflow-hidden flex justify-center items-center hidden">
                                <div class="modal-container bg-white w-4/12 md:max-w-11/12 mx-auto rounded-xl z-50 overflow-y-auto">
                                    <div class="modal-content py-4 text-left px-6">
                                        <div class="flex justify-between items-center pb-3">
                                            <p class="text-2xl font-bold text-black-500">Cadastrar</p>
                                            <div id="cadastro_close" class="modal-close cursor-pointer z-50">
                                                <svg class="fill-current text-gray-500" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">
                                                    <path d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z">
                                                    </path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="my-5 mr-5 ml-5 flex justify-center">
                                            <form action="#" class="w-full max-w-sm">
                                                <div class="mb-4">
                                                    <label for="nome-cadastro" class="block text-gray-700 text-sm font-bold mb-2">Nome:</label>
                                                    <input type="text" name="nome-cadastro" id="nome-cadastro" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
                                                </div>

                                                <div class="mb-4">
                                                    <label for="email-cadastro" class="block text-gray-700 text-sm font-bold mb-2">Email:</label>
                                                    <input type="text" name="email-cadastro" id="email-cadastro" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
                                                </div>

                                                <div class="mb-4">
                                                    <label for="senha-cadastro" class="block text-gray-700 text-sm font-bold mb-2">Senha:</label>
                                                    <input type="password" name="senha-cadastro" id="senha-cadastro" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
                                                </div>

                                                <div class="flex justify-center">
                                                    <button type="submit" class="bg-black text-white font-bold py-2 px-4 rounded">
                                                        Enviar
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="flex justify-end pt-2 space-x-14">
                                            <p>Footer</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section>   
            <div class="w-4/8 ">
                <div class="text-center mt-5 ">
                    <h2 class="text-4xl">Jogos Disponiveis</h2>
                </div>
                <!-- component -->
                <div class="p-24 flex flex-wrap items-center justify-center ">

                    <div class="flex-shrink-0 m-6 relative overflow-hidden bg-orange-500 rounded-lg max-w-xs shadow-lg">
                        <svg class="absolute bottom-0 left-0 mb-8" viewBox="0 0 375 283" fill="none" style="transform: scale(1.5); opacity: 0.1;">
                            <rect x="159.52" y="175" width="152" height="152" rx="8" transform="rotate(-45 159.52 175)" fill="white" />
                            <rect y="107.48" width="152" height="152" rx="8" transform="rotate(-45 0 107.48)" fill="white" />
                        </svg>
                        <div class="relative pt-10 px-10 flex items-center justify-center">
                            <div class="block absolute w-48 h-48 bottom-0 left-0 -mb-24 ml-3" style="background: radial-gradient(black, transparent 60%); transform: rotate3d(0, 0, 1, 20deg) scale3d(1, 0.6, 1); opacity: 0.2;"></div>
                            <img class="relative w-50" src="./img/pngwing.com (2).png" alt="">
                        </div>
                        <div class="relative text-white px-6 pb-6 mt-6">
                            <span class="block opacity-75 -mb-1"></span>
                            <div class="flex justify-between">
                                <span class="block font-semibold text-xl">Mortal kombat</span>
                                <a href=""><span class="block bg-white rounded-full text-orange-500 text-xs font-bold px-3 py-2 leading-none flex items-center">Entrar</span></a>

                            </div>
                        </div>
                    </div>
                    <div class="flex-shrink-0 m-6 relative overflow-hidden bg-teal-500 rounded-lg max-w-xs shadow-lg">
                        <svg class="absolute bottom-0 left-0 mb-8" viewBox="0 0 375 283" fill="none" style="transform: scale(1.5); opacity: 0.1;">
                            <rect x="159.52" y="175" width="152" height="152" rx="8" transform="rotate(-45 159.52 175)" fill="white" />
                            <rect y="107.48" width="152" height="152" rx="8" transform="rotate(-45 0 107.48)" fill="white" />
                        </svg>
                        <div class="relative pt-10 px-10 flex items-center justify-center">
                            <div class="block absolute w-48 h-48 bottom-0 left-0 -mb-24 ml-3" style="background: radial-gradient(black, transparent 60%); transform: rotate3d(0, 0, 1, 20deg) scale3d(1, 0.6, 1); opacity: 0.2;"></div>
                            <img class="relative w-50" src="./img/pngwing.com.png" alt="">
                        </div>
                        <div class="relative text-white px-6 pb-6 mt-6">
                            <span class="block opacity-75 -mb-1"></span>
                            <div class="flex justify-between">
                                <span class="block font-semibold text-xl">League of legends</span>

                                <button id="login_open" href=""><span class="block bg-white rounded-full text-teal-500 text-xs font-bold px-3 py-2 leading-none flex items-center">Entrar</span></button>

                            </div>
                        </div>
                    </div>
                    <div class="flex-shrink-0 m-6 relative overflow-hidden bg-purple-500 rounded-lg max-w-xs shadow-lg">
                        <svg class="absolute bottom-0 left-0 mb-8" viewBox="0 0 375 283" fill="none" style="transform: scale(1.5); opacity: 0.1;">
                            <rect x="159.52" y="175" width="152" height="152" rx="8" transform="rotate(-45 159.52 175)" fill="white" />
                            <rect y="107.48" width="152" height="152" rx="8" transform="rotate(-45 0 107.48)" fill="white" />
                        </svg>
                        <div class="relative pt-10 px-10 flex items-center justify-center">
                            <div class="block absolute w-48 h-48 bottom-0 left-0 -mb-24 ml-3" style="background: radial-gradient(black, transparent 60%); transform: rotate3d(0, 0, 1, 20deg) scale3d(1, 0.6, 1); opacity: 0.2;"></div>
                            <img class="relative w-50" src="./img/pngwing.com (1).png" alt="">
                        </div>
                        <div class="relative text-white px-6 pb-6 mt-6">
                            <span class="block opacity-75 -mb-1"></span>
                            <div class="flex justify-between">
                                <span class="block font-semibold text-xl">Call of Duty</span>
                                <a href=""><span class="block bg-white rounded-full text-purple-500 text-xs font-bold px-3 py-2 leading-none flex items-center">Entrar</span></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </section>
        <script src="modal.js"></script>
</body>

</html>