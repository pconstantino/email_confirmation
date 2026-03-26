<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Our Nest – Privacy Policy</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
      background: #FDF6F0;
      min-height: 100vh;
      padding: 32px 24px;
      color: #1a1a2e;
    }
    .container {
      max-width: 720px;
      margin: 0 auto;
      background: #fff;
      border-radius: 24px;
      padding: 40px 36px;
      box-shadow: 0 8px 32px rgba(0,0,0,0.08);
    }
    .logo { font-size: 40px; text-align: center; margin-bottom: 8px; }
    h1 { font-size: 24px; font-weight: 700; text-align: center; margin-bottom: 6px; }
    .subtitle { font-size: 13px; color: #6b7280; text-align: center; margin-bottom: 36px; }
    h2 { font-size: 16px; font-weight: 700; color: #E8735A; margin: 28px 0 10px; }
    p, li { font-size: 14px; color: #374151; line-height: 1.7; }
    ul { padding-left: 20px; margin-top: 6px; }
    li { margin-bottom: 4px; }
    a { color: #E8735A; }
    hr { border: none; border-top: 1px solid #f3f4f6; margin: 28px 0; }
    .footer { font-size: 12px; color: #9ca3af; text-align: center; margin-top: 36px; }
    .lang-switcher { text-align: center; margin-bottom: 24px; }
    .lang-switcher button {
      background: none;
      border: 1px solid #E8735A;
      color: #E8735A;
      border-radius: 8px;
      padding: 4px 10px;
      margin: 3px;
      cursor: pointer;
      font-size: 13px;
    }
    .lang-switcher button.active {
      background: #E8735A;
      color: #fff;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="logo">🏡</div>
  <h1 id="title"></h1>
  <p class="subtitle" id="subtitle"></p>

  <div class="lang-switcher">
    <button onclick="setLang('en')">EN</button>
    <button onclick="setLang('pt')">PT</button>
    <button onclick="setLang('es')">ES</button>
    <button onclick="setLang('fr')">FR</button>
    <button onclick="setLang('de')">DE</button>
    <button onclick="setLang('it')">IT</button>
  </div>

  <div id="content"></div>

  <p class="footer" id="footer"></p>
</div>

<script>
const T = {
  en: {
    title: 'Privacy Policy',
    subtitle: 'Our Nest · Last updated: March 2026',
    footer: '© 2026 Our Nest. All rights reserved.',
    sections: [
      { h: '1. Data We Collect', body: `
        <p>We collect the following data when you use the app:</p>
        <ul>
          <li><strong>Account:</strong> email address and name provided at registration.</li>
          <li><strong>Couple profile:</strong> partner names, couple code, relationship duration, and whether it is long-distance.</li>
          <li><strong>Mood entries:</strong> daily mood level and an optional reason.</li>
          <li><strong>Question answers:</strong> text of your responses to communication questions.</li>
          <li><strong>Challenges:</strong> ratings and notes on completed weekly challenges.</li>
          <li><strong>Subscription:</strong> premium status and expiry date, managed via RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">We do not collect location, contacts, photos, microphone, or camera data.</p>` },
      { h: '2. How We Use Your Data', body: `
        <ul>
          <li>Provide and sync app features between both partners.</li>
          <li>Send scheduled local notifications (mood reminders, daily questions).</li>
          <li>Process and validate premium subscriptions.</li>
          <li>Enable password recovery by email.</li>
        </ul>
        <p style="margin-top:10px;">We do not use your data for advertising or sell it to third parties.</p>` },
      { h: '3. Data Sharing', body: `
        <p>Your data is shared only with the following service providers, strictly necessary for the app to function:</p>
        <ul>
          <li><strong>Supabase</strong> – database and authentication (secure cloud storage).</li>
          <li><strong>RevenueCat</strong> – subscription and in-app purchase management.</li>
        </ul>
        <p style="margin-top:10px;">These providers act only as sub-processors and may not use your data for their own purposes.</p>` },
      { h: '4. Data Retention', body: `
        <p>Your data is kept for as long as your account is active. You can delete your account at any time from the Profile section in the app. When you delete your account, all associated personal data is permanently removed.</p>` },
      { h: '5. Security', body: `
        <p>All data is transmitted via HTTPS and stored securely in Supabase's infrastructure, with Row-Level Security policies ensuring each user can only access their own data.</p>` },
      { h: '6. Children', body: `
        <p>Our Nest is intended for adults in relationships. We do not knowingly collect data from children under 13. If we become aware that we have collected data from a child, we will delete it immediately.</p>` },
      { h: '7. Your Rights', body: `
        <ul>
          <li>Access and correct the personal data we hold about you.</li>
          <li>Request deletion of your data (by deleting your account in the app).</li>
          <li>Withdraw consent for notifications at any time in your device settings.</li>
        </ul>` },
      { h: '8. Changes to This Policy', body: `
        <p>We may update this policy periodically. The date of the last update is at the top of this page. Continued use of the app after changes constitutes acceptance of the new policy.</p>` },
      { h: '9. Contact', body: `
        <p>For privacy questions, contact us via the email listed on the app's Google Play page.</p>` },
    ]
  },
  pt: {
    title: 'Política de Privacidade',
    subtitle: 'Our Nest · Última atualização: março de 2026',
    footer: '© 2026 Our Nest. Todos os direitos reservados.',
    sections: [
      { h: '1. Dados que recolhemos', body: `
        <p>Recolhemos os seguintes dados quando utilizas a app:</p>
        <ul>
          <li><strong>Conta:</strong> endereço de e-mail e nome fornecidos no registo.</li>
          <li><strong>Perfil do casal:</strong> nomes dos parceiros, código do casal, duração da relação e se é à distância.</li>
          <li><strong>Registos de humor:</strong> nível de humor diário e motivo opcional.</li>
          <li><strong>Respostas a perguntas:</strong> texto das respostas às perguntas de comunicação.</li>
          <li><strong>Desafios:</strong> avaliações e notas sobre os desafios semanais concluídos.</li>
          <li><strong>Subscrição:</strong> estado premium e data de expiração, geridos via RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">Não recolhemos dados de localização, contactos, fotos, microfone ou câmara.</p>` },
      { h: '2. Como utilizamos os teus dados', body: `
        <ul>
          <li>Fornecer e sincronizar as funcionalidades da app entre os dois parceiros.</li>
          <li>Enviar notificações locais agendadas (lembretes de humor, perguntas diárias).</li>
          <li>Processar e validar subscrições premium.</li>
          <li>Permitir a recuperação de palavra-passe por e-mail.</li>
        </ul>
        <p style="margin-top:10px;">Não utilizamos os teus dados para publicidade nem os vendemos a terceiros.</p>` },
      { h: '3. Partilha de dados', body: `
        <p>Os teus dados são partilhados apenas com os seguintes fornecedores, estritamente necessários para o funcionamento da app:</p>
        <ul>
          <li><strong>Supabase</strong> – base de dados e autenticação (armazenamento seguro na nuvem).</li>
          <li><strong>RevenueCat</strong> – gestão de subscrições e compras in-app.</li>
        </ul>
        <p style="margin-top:10px;">Estes fornecedores atuam apenas como subprocessadores e não podem utilizar os teus dados para fins próprios.</p>` },
      { h: '4. Retenção de dados', body: `
        <p>Os teus dados são mantidos enquanto a tua conta estiver ativa. Podes eliminar a tua conta a qualquer momento através da secção de Perfil na app. Ao eliminar a conta, todos os dados pessoais associados são removidos permanentemente.</p>` },
      { h: '5. Segurança', body: `
        <p>Todos os dados são transmitidos via HTTPS e armazenados de forma segura na infraestrutura da Supabase, com políticas de segurança ao nível da linha (Row-Level Security) que garantem que cada utilizador acede apenas aos seus próprios dados.</p>` },
      { h: '6. Crianças', body: `
        <p>A Our Nest é destinada a adultos em relacionamentos. Não recolhemos intencionalmente dados de crianças com menos de 13 anos. Se tomarmos conhecimento de que recolhemos dados de uma criança, eliminaremos essa informação imediatamente.</p>` },
      { h: '7. Os teus direitos', body: `
        <ul>
          <li>Aceder e corrigir os dados pessoais que guardamos sobre ti.</li>
          <li>Solicitar a eliminação dos teus dados (apagando a conta na app).</li>
          <li>Retirar o consentimento para notificações a qualquer momento nas definições do dispositivo.</li>
        </ul>` },
      { h: '8. Alterações a esta política', body: `
        <p>Podemos atualizar esta política periodicamente. A data da última atualização encontra-se no topo desta página. O uso continuado da app após alterações constitui a aceitação da nova política.</p>` },
      { h: '9. Contacto', body: `
        <p>Para questões sobre privacidade, contacta-nos através do e-mail indicado na página da app no Google Play.</p>` },
    ]
  },
  es: {
    title: 'Política de Privacidad',
    subtitle: 'Our Nest · Última actualización: marzo de 2026',
    footer: '© 2026 Our Nest. Todos los derechos reservados.',
    sections: [
      { h: '1. Datos que recopilamos', body: `
        <p>Recopilamos los siguientes datos cuando usas la app:</p>
        <ul>
          <li><strong>Cuenta:</strong> correo electrónico y nombre proporcionados al registrarte.</li>
          <li><strong>Perfil de pareja:</strong> nombres de los miembros, código de pareja, duración de la relación y si es a distancia.</li>
          <li><strong>Registros de estado de ánimo:</strong> nivel diario y motivo opcional.</li>
          <li><strong>Respuestas a preguntas:</strong> texto de tus respuestas a las preguntas de comunicación.</li>
          <li><strong>Desafíos:</strong> valoraciones y notas sobre los desafíos semanales completados.</li>
          <li><strong>Suscripción:</strong> estado premium y fecha de vencimiento, gestionados a través de RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">No recopilamos datos de ubicación, contactos, fotos, micrófono ni cámara.</p>` },
      { h: '2. Cómo usamos tus datos', body: `
        <ul>
          <li>Proporcionar y sincronizar las funciones de la app entre los dos miembros de la pareja.</li>
          <li>Enviar notificaciones locales programadas (recordatorios de estado de ánimo, preguntas diarias).</li>
          <li>Procesar y validar suscripciones premium.</li>
          <li>Permitir la recuperación de contraseña por correo electrónico.</li>
        </ul>
        <p style="margin-top:10px;">No usamos tus datos para publicidad ni los vendemos a terceros.</p>` },
      { h: '3. Compartición de datos', body: `
        <p>Tus datos se comparten únicamente con los siguientes proveedores de servicios, estrictamente necesarios para el funcionamiento de la app:</p>
        <ul>
          <li><strong>Supabase</strong> – base de datos y autenticación (almacenamiento seguro en la nube).</li>
          <li><strong>RevenueCat</strong> – gestión de suscripciones y compras in-app.</li>
        </ul>
        <p style="margin-top:10px;">Estos proveedores actúan solo como subprocesadores y no pueden usar tus datos para sus propios fines.</p>` },
      { h: '4. Retención de datos', body: `
        <p>Tus datos se conservan mientras tu cuenta esté activa. Puedes eliminar tu cuenta en cualquier momento desde la sección de Perfil en la app. Al eliminar la cuenta, todos los datos personales asociados se eliminan permanentemente.</p>` },
      { h: '5. Seguridad', body: `
        <p>Todos los datos se transmiten mediante HTTPS y se almacenan de forma segura en la infraestructura de Supabase, con políticas de seguridad a nivel de fila (Row-Level Security) que garantizan que cada usuario solo acceda a sus propios datos.</p>` },
      { h: '6. Menores', body: `
        <p>Our Nest está destinada a adultos en relaciones de pareja. No recopilamos intencionalmente datos de menores de 13 años. Si descubrimos que hemos recopilado datos de un menor, los eliminaremos de inmediato.</p>` },
      { h: '7. Tus derechos', body: `
        <ul>
          <li>Acceder y corregir los datos personales que conservamos sobre ti.</li>
          <li>Solicitar la eliminación de tus datos (eliminando tu cuenta en la app).</li>
          <li>Retirar el consentimiento para notificaciones en cualquier momento desde la configuración del dispositivo.</li>
        </ul>` },
      { h: '8. Cambios en esta política', body: `
        <p>Podemos actualizar esta política periódicamente. La fecha de la última actualización aparece en la parte superior de esta página. El uso continuado de la app tras los cambios implica la aceptación de la nueva política.</p>` },
      { h: '9. Contacto', body: `
        <p>Para consultas sobre privacidad, contáctanos a través del correo electrónico indicado en la página de la app en Google Play.</p>` },
    ]
  },
  fr: {
    title: 'Politique de Confidentialité',
    subtitle: 'Our Nest · Dernière mise à jour : mars 2026',
    footer: '© 2026 Our Nest. Tous droits réservés.',
    sections: [
      { h: '1. Données collectées', body: `
        <p>Nous collectons les données suivantes lorsque vous utilisez l'application :</p>
        <ul>
          <li><strong>Compte :</strong> adresse e-mail et nom fournis lors de l'inscription.</li>
          <li><strong>Profil du couple :</strong> prénoms des partenaires, code du couple, durée de la relation et si elle est à distance.</li>
          <li><strong>Entrées d'humeur :</strong> niveau d'humeur quotidien et raison facultative.</li>
          <li><strong>Réponses aux questions :</strong> texte de vos réponses aux questions de communication.</li>
          <li><strong>Défis :</strong> évaluations et notes sur les défis hebdomadaires complétés.</li>
          <li><strong>Abonnement :</strong> statut premium et date d'expiration, gérés via RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">Nous ne collectons pas de données de localisation, de contacts, de photos, de microphone ou de caméra.</p>` },
      { h: '2. Utilisation des données', body: `
        <ul>
          <li>Fournir et synchroniser les fonctionnalités de l'app entre les deux partenaires.</li>
          <li>Envoyer des notifications locales programmées (rappels d'humeur, questions quotidiennes).</li>
          <li>Traiter et valider les abonnements premium.</li>
          <li>Permettre la récupération de mot de passe par e-mail.</li>
        </ul>
        <p style="margin-top:10px;">Nous n'utilisons pas vos données à des fins publicitaires et ne les vendons pas à des tiers.</p>` },
      { h: '3. Partage des données', body: `
        <p>Vos données sont partagées uniquement avec les prestataires suivants, strictement nécessaires au fonctionnement de l'app :</p>
        <ul>
          <li><strong>Supabase</strong> – base de données et authentification (stockage sécurisé dans le cloud).</li>
          <li><strong>RevenueCat</strong> – gestion des abonnements et achats in-app.</li>
        </ul>
        <p style="margin-top:10px;">Ces prestataires agissent uniquement en tant que sous-traitants et ne peuvent pas utiliser vos données à leurs propres fins.</p>` },
      { h: '4. Conservation des données', body: `
        <p>Vos données sont conservées tant que votre compte est actif. Vous pouvez supprimer votre compte à tout moment depuis la section Profil de l'app. La suppression du compte entraîne la suppression définitive de toutes les données personnelles associées.</p>` },
      { h: '5. Sécurité', body: `
        <p>Toutes les données sont transmises via HTTPS et stockées de manière sécurisée dans l'infrastructure de Supabase, avec des politiques de sécurité au niveau des lignes (Row-Level Security) garantissant que chaque utilisateur n'accède qu'à ses propres données.</p>` },
      { h: '6. Enfants', body: `
        <p>Our Nest est destinée aux adultes en couple. Nous ne collectons pas sciemment de données d'enfants de moins de 13 ans. Si nous apprenons que nous avons collecté des données d'un enfant, nous les supprimerons immédiatement.</p>` },
      { h: '7. Vos droits', body: `
        <ul>
          <li>Accéder et corriger les données personnelles que nous conservons vous concernant.</li>
          <li>Demander la suppression de vos données (en supprimant votre compte dans l'app).</li>
          <li>Retirer votre consentement aux notifications à tout moment dans les paramètres de votre appareil.</li>
        </ul>` },
      { h: '8. Modifications de cette politique', body: `
        <p>Nous pouvons mettre à jour cette politique périodiquement. La date de la dernière mise à jour figure en haut de cette page. L'utilisation continue de l'app après les modifications vaut acceptation de la nouvelle politique.</p>` },
      { h: '9. Contact', body: `
        <p>Pour toute question relative à la confidentialité, contactez-nous via l'adresse e-mail indiquée sur la page de l'app dans Google Play.</p>` },
    ]
  },
  de: {
    title: 'Datenschutzerklärung',
    subtitle: 'Our Nest · Zuletzt aktualisiert: März 2026',
    footer: '© 2026 Our Nest. Alle Rechte vorbehalten.',
    sections: [
      { h: '1. Erhobene Daten', body: `
        <p>Wir erheben folgende Daten bei der Nutzung der App:</p>
        <ul>
          <li><strong>Konto:</strong> E-Mail-Adresse und Name, die bei der Registrierung angegeben werden.</li>
          <li><strong>Paarprofil:</strong> Namen der Partner, Paarcode, Beziehungsdauer und ob es eine Fernbeziehung ist.</li>
          <li><strong>Stimmungseinträge:</strong> tägliches Stimmungsniveau und optionaler Grund.</li>
          <li><strong>Fragebeantwortungen:</strong> Text der Antworten auf Kommunikationsfragen.</li>
          <li><strong>Herausforderungen:</strong> Bewertungen und Notizen zu abgeschlossenen Wochenherausforderungen.</li>
          <li><strong>Abonnement:</strong> Premium-Status und Ablaufdatum, verwaltet über RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">Wir erheben keine Standort-, Kontakt-, Foto-, Mikrofon- oder Kameradaten.</p>` },
      { h: '2. Verwendung Ihrer Daten', body: `
        <ul>
          <li>Bereitstellung und Synchronisierung der App-Funktionen zwischen beiden Partnern.</li>
          <li>Versand geplanter lokaler Benachrichtigungen (Stimmungserinnerungen, tägliche Fragen).</li>
          <li>Verarbeitung und Validierung von Premium-Abonnements.</li>
          <li>Ermöglichung der Passwortwiederherstellung per E-Mail.</li>
        </ul>
        <p style="margin-top:10px;">Wir verwenden Ihre Daten nicht für Werbezwecke und verkaufen sie nicht an Dritte.</p>` },
      { h: '3. Datenweitergabe', body: `
        <p>Ihre Daten werden nur mit folgenden Dienstleistern geteilt, die für den Betrieb der App unbedingt erforderlich sind:</p>
        <ul>
          <li><strong>Supabase</strong> – Datenbank und Authentifizierung (sichere Cloud-Speicherung).</li>
          <li><strong>RevenueCat</strong> – Verwaltung von Abonnements und In-App-Käufen.</li>
        </ul>
        <p style="margin-top:10px;">Diese Anbieter handeln nur als Auftragsverarbeiter und dürfen Ihre Daten nicht für eigene Zwecke nutzen.</p>` },
      { h: '4. Datenspeicherung', body: `
        <p>Ihre Daten werden gespeichert, solange Ihr Konto aktiv ist. Sie können Ihr Konto jederzeit im Profilbereich der App löschen. Bei der Kontolöschung werden alle zugehörigen personenbezogenen Daten dauerhaft entfernt.</p>` },
      { h: '5. Sicherheit', body: `
        <p>Alle Daten werden per HTTPS übertragen und sicher in der Supabase-Infrastruktur gespeichert. Row-Level-Security-Richtlinien stellen sicher, dass jeder Nutzer nur auf seine eigenen Daten zugreifen kann.</p>` },
      { h: '6. Kinder', body: `
        <p>Our Nest richtet sich an Erwachsene in Beziehungen. Wir erheben wissentlich keine Daten von Kindern unter 13 Jahren. Sollten wir erfahren, dass wir Daten eines Kindes erhoben haben, werden wir diese umgehend löschen.</p>` },
      { h: '7. Ihre Rechte', body: `
        <ul>
          <li>Zugang zu und Berichtigung der personenbezogenen Daten, die wir über Sie speichern.</li>
          <li>Anforderung der Löschung Ihrer Daten (durch Löschen Ihres Kontos in der App).</li>
          <li>Widerruf der Einwilligung für Benachrichtigungen jederzeit in den Geräteeinstellungen.</li>
        </ul>` },
      { h: '8. Änderungen dieser Erklärung', body: `
        <p>Wir können diese Erklärung regelmäßig aktualisieren. Das Datum der letzten Aktualisierung befindet sich oben auf dieser Seite. Die weitere Nutzung der App nach Änderungen gilt als Akzeptanz der neuen Erklärung.</p>` },
      { h: '9. Kontakt', body: `
        <p>Bei Datenschutzfragen kontaktieren Sie uns bitte über die auf der Google-Play-Seite der App angegebene E-Mail-Adresse.</p>` },
    ]
  },
  it: {
    title: 'Informativa sulla Privacy',
    subtitle: 'Our Nest · Ultimo aggiornamento: marzo 2026',
    footer: '© 2026 Our Nest. Tutti i diritti riservati.',
    sections: [
      { h: '1. Dati raccolti', body: `
        <p>Raccogliamo i seguenti dati quando utilizzi l'app:</p>
        <ul>
          <li><strong>Account:</strong> indirizzo e-mail e nome forniti durante la registrazione.</li>
          <li><strong>Profilo di coppia:</strong> nomi dei partner, codice coppia, durata della relazione e se è a distanza.</li>
          <li><strong>Registrazioni dell'umore:</strong> livello giornaliero e motivo facoltativo.</li>
          <li><strong>Risposte alle domande:</strong> testo delle risposte alle domande di comunicazione.</li>
          <li><strong>Sfide:</strong> valutazioni e note sulle sfide settimanali completate.</li>
          <li><strong>Abbonamento:</strong> stato premium e data di scadenza, gestiti tramite RevenueCat.</li>
        </ul>
        <p style="margin-top:10px;">Non raccogliamo dati di posizione, contatti, foto, microfono o fotocamera.</p>` },
      { h: '2. Come utilizziamo i tuoi dati', body: `
        <ul>
          <li>Fornire e sincronizzare le funzionalità dell'app tra i due partner.</li>
          <li>Inviare notifiche locali programmate (promemoria umore, domande quotidiane).</li>
          <li>Elaborare e convalidare gli abbonamenti premium.</li>
          <li>Consentire il recupero della password tramite e-mail.</li>
        </ul>
        <p style="margin-top:10px;">Non utilizziamo i tuoi dati per pubblicità né li vendiamo a terzi.</p>` },
      { h: '3. Condivisione dei dati', body: `
        <p>I tuoi dati vengono condivisi solo con i seguenti fornitori di servizi, strettamente necessari per il funzionamento dell'app:</p>
        <ul>
          <li><strong>Supabase</strong> – database e autenticazione (archiviazione sicura nel cloud).</li>
          <li><strong>RevenueCat</strong> – gestione di abbonamenti e acquisti in-app.</li>
        </ul>
        <p style="margin-top:10px;">Questi fornitori agiscono solo come sub-responsabili del trattamento e non possono utilizzare i tuoi dati per scopi propri.</p>` },
      { h: '4. Conservazione dei dati', body: `
        <p>I tuoi dati vengono conservati finché il tuo account è attivo. Puoi eliminare il tuo account in qualsiasi momento dalla sezione Profilo nell'app. L'eliminazione dell'account comporta la rimozione definitiva di tutti i dati personali associati.</p>` },
      { h: '5. Sicurezza', body: `
        <p>Tutti i dati vengono trasmessi tramite HTTPS e archiviati in modo sicuro nell'infrastruttura di Supabase, con policy di sicurezza a livello di riga (Row-Level Security) che garantiscono che ogni utente acceda solo ai propri dati.</p>` },
      { h: '6. Minori', body: `
        <p>Our Nest è destinata agli adulti nelle relazioni. Non raccogliamo consapevolmente dati di bambini sotto i 13 anni. Se venissimo a sapere di aver raccolto dati di un minore, li elimineremo immediatamente.</p>` },
      { h: '7. I tuoi diritti', body: `
        <ul>
          <li>Accedere e correggere i dati personali che conserviamo su di te.</li>
          <li>Richiedere la cancellazione dei tuoi dati (eliminando il tuo account nell'app).</li>
          <li>Revocare il consenso alle notifiche in qualsiasi momento dalle impostazioni del dispositivo.</li>
        </ul>` },
      { h: '8. Modifiche a questa informativa', body: `
        <p>Potremmo aggiornare questa informativa periodicamente. La data dell'ultimo aggiornamento si trova in cima a questa pagina. Il continuo utilizzo dell'app dopo le modifiche costituisce accettazione della nuova informativa.</p>` },
      { h: '9. Contatto', body: `
        <p>Per domande sulla privacy, contattaci tramite l'indirizzo e-mail indicato nella pagina dell'app su Google Play.</p>` },
    ]
  }
};

function setLang(lang) {
  const d = T[lang] || T['en'];
  document.getElementById('title').textContent = d.title;
  document.getElementById('subtitle').textContent = d.subtitle;
  document.getElementById('footer').textContent = d.footer;
  document.querySelector('html').lang = lang;

  const content = document.getElementById('content');
  content.innerHTML = d.sections.map((s, i) =>
    (i > 0 ? '<hr>' : '') +
    '<h2>' + s.h + '</h2>' + s.body
  ).join('');

  document.querySelectorAll('.lang-switcher button').forEach(b => {
    b.classList.toggle('active', b.textContent.toLowerCase() === lang);
  });

  localStorage.setItem('privacy_lang', lang);
}

(function () {
  const saved = localStorage.getItem('privacy_lang');
  const browser = (navigator.language || 'en').slice(0, 2).toLowerCase();
  const supported = ['en', 'pt', 'es', 'fr', 'de', 'it'];
  const lang = saved || (supported.includes(browser) ? browser : 'en');
  setLang(lang);
})();
</script>
</body>
</html>
