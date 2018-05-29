<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Banco de Dados

O arquivo com a modelagem de Banco de Dados está contido na pasta SQL, na raiz do projeto.
Ela dese ser descartada ao utilizar o projeto em localhost.

## Principais arquivos de código

Os principais arquivos e a localização são as seguintes:
* .env - na pasta principal do projeto;
* application.blade.php - resources\application.blade.php
* mail.php - config\mail.php
* ApplicationController.php - app\Http\Controllers\ApplicationController.php
* Lista.php - app\Lista.php
* web.php - routes\web.php

## Configuração do arquivo de conexão com o Banco de dados e envio de e-mail (.env)

Para configurar a conexão com o arquivo de banco de dados (pasta SQL), as seguintes configurações devem ser feitas:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=devmaker
DB_USERNAME=root
DB_PASSWORD=

O reset de senha pode ser simulado através de uma conta simples em https://mailtrap.io, que simula o SMTP para envio de e-mails. Basta criar uma conta e replicar os dados necessários para configurar o bloco abaixo, de acordo com o passo a passo no referido site.

MAIL_DRIVER=
MAIL_HOST=
MAIL_PORT=
MAIL_USERNAME=
MAIL_PASSWORD=
MAIL_ENCRYPTION=

## Learning Laravel


