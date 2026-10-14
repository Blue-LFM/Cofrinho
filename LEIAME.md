# Cofrinho+ com login real (Supabase)

## 1. Criar o backend (gratuito)
1. Crie uma conta em supabase.com e um **New project** (anote a senha do banco).
2. Em **SQL Editor**, cole o conteúdo de `setup.sql` e clique em **Run**. Isso cria a tabela `estado` e regras (RLS) para cada usuário ver só os próprios dados.
3. Em **Project Settings > API**, copie a **Project URL** e a chave **anon public**.
4. Abra `index.html` e troque `SB_URL` e `SB_KEY` no início do script. A chave anon pode ficar no front-end; a segurança vem das regras RLS. **Nunca** use a chave `service_role` aqui.
5. Para a demonstração, em **Authentication > Providers > Email**, desative "Confirm email" (ou mantenha ligado e confirme pelo e-mail).

## 2. Publicar o site (qualquer um serve)
- **Netlify Drop:** arraste a pasta em app.netlify.com/drop.
- **GitHub Pages:** suba `index.html` num repositório e ative Pages.
- **Vercel:** importe o repositório.
Depois, em **Authentication > URL Configuration**, coloque o endereço do site em **Site URL**.

## 3. Testar
Crie uma conta no computador, registre um gasto e entre pelo celular com o mesmo e-mail e senha: os dados devem aparecer.
