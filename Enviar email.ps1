# INÍCIO

# DEFINIÇÃO DE VARIÁVEL

$responsavel = "digite seu nome" 
$data = Get-Date -format "dd/MM/yyyy HH:mm:ss"
#$arquivo = "ad-lista.csv" 
# CONFIGURAÇÃO DE E-MAIL

$de = "conta-de-e-mail@dominio.br" 
$senha = "senha da conta de e-mail"
$smtp = "smtp.dominio.com.br"
$porta = "587"
$para = "conta-de-e-mail@dominio.br"

#$EmailBcc = "admin2@dominio.com.br" #Ative essa opção, caso queira enviar esse e-mail para mais um destinatário.

$assunto = "AUDITORIA: ACTIVE DIRECTORY - $data"
$Body = "RELATÓRIO DE AUDITORIA DE USUÁRIOS - ACTIVE DIRECTORY:`n
`n GERADOR: $responsavel `n ASSUNTO: Active Directory `n SERVIDOR: NOME DO SEU SERVIDOR`n DATA: $data `n`n`n DESCRIÇÃO: Digite um texto a ser exibido no corpo do e-mail "

# CONFIGURAÇÃO DE MÚLTIPLOS ANEXOS

$anexo1 = "U:\ad-lista.csv" #Você pode especificar manualmente o caminho onde o arquivo que será enviado por e-mail, encontra-se, vale dizer, onde ele está armazenado no seu computador.

$anexo2 = ad-lista.csv #você pode digitar o nome do arquivo, juntamente com a sua extensão.

#$anexo3 = $arquivo #você pode usar uma variável nesse campo.

# ENVIAR E-MAIL

$Message = New-Object System.Net.Mail.MailMessage
$Message.Subject = $assunto
$Message.Body = $Body
$Message.IsBodyHtml = $false
$Message.To.Add( $de.ToLower().Split("\")[1] + "@" + $de.Split("{[@|=]}")[1] )
$Message.CC.Add($EmailCC)
$Message.BCC.Add($EmailBcc)
$Message.From = $de.Replace("=", "@") # For providers that use = instead @ to identify username
$attachment1 = new-object Net.Mail.Attachment($anexo1)
$attachment2 = new-object Net.Mail.Attachment($anexo2)
$message.attachments.add($attachment1)
$message.attachments.add($attachment2)
$SMTP = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$SMTP.EnableSSL = $false # Caso você utilize 'Gmail', troque esse variável "$false" por "$true".
$SMTP.Credentials = New-Object System.Net.NetworkCredential($de, $senha);
$SMTP.Send($Message)

# FIM