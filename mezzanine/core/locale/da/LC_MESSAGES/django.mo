��    }        �   �      �
  �  �
  I   T  e   �  �       �    �  4   �  f     6   y     �     �     �     �  +   �          	            5     @   U  	   �     �  D   �  �   �  g   �  R        g     m  
   r     }  
   �  
   �  
   �     �     �     �     �  6   �            W   "  W   z  �   �  a   �  ~   �  3   f  �   �  
     Y   )     �  :   �  P   �  J     R   c  9   �     �     �  &   �  z   &  6   �     �     �     �  	      m     
   �!  G   �!     �!  D   �!     :"     S"     `"  9   o"  3   �"  b   �"     @#     F#     K#  	   Z#     d#  
   v#  	   �#     �#     �#     �#     �#     �#     �#     �#  �  �#  �   �%  5   j&     �&     �&  
   �&     �&     �&     �&  C   �&     +'     E'     L'     \'  &   d'     �'  5   �'     �'  t   �'     E(  �   I(  '   �(     �(     )     )     ))  	   6)  B   @)  5   �)  5   �)  <   �)     ,*     0*     D*  	   G*  �  Q*  �  �+  P   �/  i   0  �  x0  )  
4  c  45  4   �7  h   �7  8   68     o8     w8     �8     �8  +   �8  	   �8     �8     �8     �8  A   �8  C   59     y9     �9  I   �9  �   �9  n   �:  \   ;     b;     i;     q;     };     �;     �;     �;     �;     �;     �;     �;  6   �;     <     <  S   "<  Y   v<  �   �<  o   �=  �   >  ;   �>  w   �>  
   b?  k   m?  	   �?  @   �?  M   $@  Q   r@  U   �@  2   A     MA     UA  )   \A  ~   �A  6   B     <B     VB     eB     �B  �  �B     D  I   D     eD  I   D     �D     �D     �D  B   E  -   JE  i   xE     �E     �E     �E     F     F  	   !F     +F     3F     ?F     QF     iF     mF     rF     �F  �  �F  �   2H  :   I     ZI     hI  
   mI     xI     �I     �I  F   �I     �I     J     J     +J     3J     JJ  4   RJ     �J  i   �J     �J  �   �J  /   �K     �K     �K     �K     �K     �K  ;   L  F   BL  @   �L  H   �L     M     M     *M  	   -M     L   o          v             ]   s       X   u   {   B   l          ;      V      q              0   9       S   8   .           ^              	   b   >       :   
   P   U               W          E   +   ,       A   g           /   )       "   (   f   Q         K      d   a   H   N      D   %       =           7   J   #                    r      [       `       4       G   T   Z   n   w                        e   z       i   2   O         -   Y       h      5           R   x       \   F   M   <   I   $       }          t   y   p      1   *   '   6       &      j   c       ?       3   k              m      _   C   !   @   |    
<h2>Congratulations!</h2>
<p>
    Welcome to your new Mezzanine powered website.
    Here are some quick links to get you started:
</p>
<ul>
    <li><a href="/admin/">Log in to the admin interface</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Creating custom page types</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Modifying HTML templates</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Changing this homepage</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Other frequently asked questions</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Full list of settings</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/deployment.html">Deploying to a production server</a></li>
</ul>
 
No results were found in %(search_type)s matching your query: %(query)s
 
Showing %(start)s to %(end)s of %(total)s results in %(search_type)s matching your query: %(query)s
 *Do not change this setting unless you know what you're doing.*

When content is saved in a Rich Text (WYSIWYG) field, unsafe HTML tags and attributes are stripped from the content to protect against staff members intentionally adding code that could be used to cause problems, such as changing their account to a super-user with full access to the system.

This setting allows you to change the level of filtering that occurs. Setting it to low will allow certain extra tags to be permitted, such as those required for embedding video. While these tags are not the main candidates for users adding malicious code, they are still considered dangerous and could potentially be mis-used by a particularly technical user, and so are filtered out when the filtering level is set to high.

Setting the filtering level to no filtering, will disable all filtering, and allow any code to be entered by staff members, including script tags. A URL prefix for mounting all of Mezzanine's urlpatterns under. When using this, you'll also need to manually apply it to your project's root ``urls.py`` module. The root ``urls.py`` module provided by Mezzanine's ``mezzanine-project`` command contains an example of this towards its end. A sequence of fields that will be injected into Mezzanine's (or any library's) models. Each item in the sequence is a four item sequence. The first two items are the dotted path to the model and its field name to be added, and the dotted path to the field class to use for the field. The third and fourth items are a sequence of positional args and a dictionary of keyword args, to use when creating the field instance. When specifying the field class, the path ``django.models.db.`` can be omitted for regular Django model fields. A tag line that will appear at the top of all pages. A three item sequence, each containing a sequence of template tags used to render the admin dashboard. Access token for http://bit.ly URL shortening service. Add Add another Admin Akismet API Key An open source content management platform. Author Cancel Change Content Controls the ordering and grouping of the admin menu. Could not import the value of settings.RICHTEXT_WIDGET_CLASS: %s Dashboard Description Device specific template sub-directory to use as the default device. Dict mapping file field names in the format ``app_label.model_name.field_name`` to the Python dotted path to function names that will be used for the file field's ``upload_to`` argument. Directory name to store thumbnails in, that will be created relative to the original image's directory. Dotted package path and class name of the widget to use for the ``RichTextField``. Draft Edit Enable SSL Error Everything Expires on Force Host Forgot password? Generate description Go Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) High Home Host name that the site should always be accessed via that matches the SSL certificate. If ``True``, each site will use its own directory within the filebrowser media library. If ``True``, only URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting will be accessible over SSL, and all other URLs will be redirected back to HTTP if accessed over HTTPS. If ``True``, the south application will be automatically added to the ``INSTALLED_APPS`` setting. If ``True``, users will be automatically redirected to HTTPS for the URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting. If ``True``, website forms will use HTML5 features. If checked, the description will be automatically generated from content. Uncheck if you want to manually set a custom description. Interface: Key for http://akismet.com spam filtering service. Used for filtering comments and forms. Keywords Leave blank to have the URL auto-generated from the title. List of HTML attributes that won't be stripped from ``RichTextField`` instances. List of HTML tags that won't be stripped from ``RichTextField`` instances. List of inline CSS styles that won't be stripped from ``RichTextField`` instances. List of words which will be stripped from search queries. Log in Log out Low (allows video, iframe, Flash, etc) Mapping of device specific template sub-directory names to the sequence of strings that may be found in their user agents. Max number of paging links to display when paginating. Max paging links Media Library Media library per site Meta data Models that subclass ``Ownable`` and use the ``OwnableAdmin`` have their admin change-list records filtered down to records owned by the current user. This setting contains a sequence of models in the format ``app_label.object_name``, that when subclassing ``Ownable``, will still show all records in the admin change-list interface, regardless of the current user. My Actions Name of the jQuery UI file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery UI file. Name of the jQuery file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery file. No filtering None available Number of different sizes for tags when shown as a cloud. Number of results shown in the search results page. Optional title to be used in the HTML title tag. If left blank, the main title field will be used. Order Page Page not found Password: Permission denied Powered by Published Published from Recent Actions Rich Text filter level Save Search Search Results Search results per page Sequence of dotted Python paths to callable functions used for checking posted content (such as forms or comments) is spam. Each function should accept three arguments: the request object, the form object, and the URL that was posted from. Defaults to ``mezzanine.utils.views.is_spam_akismet`` which will use the http://akismet.com spam filtering service when the ``AKISMET_API_KEY`` setting is configured. Sequence of models that will be provided by default as choices in the search form. Each model should be in the format ``app_label.model_name``. Only models that subclass ``mezzanine.core.models.Displayable`` should be used. Sequence of setting names available within templates. Show in sitemap Site Site Title Site permission Site permissions Sites Size of thumbnail previews for image fields in the admin interface. Sorry, an error occurred. Status Tag Cloud Sizes Tagline The page you requested does not exist. Theme by This field is required if status is set to published. Title Title that will display at the top of the site, and be appended to the content of the HTML title tags on every page. URL URL for the JavaScript file (relative to ``STATIC_URL``) that handles configuring TinyMCE when the default ``RICHTEXT_WIDGET_CLASS`` is used. Unregister these models from the admin. Username or email: Users View Mobile Site View on site View site With Draft chosen, will only be shown for admin users on the site. With Published chosen, won't be shown after this time With Published chosen, won't be shown until this time You don't have permission to access the admin for this site. and bit.ly access token of read more Project-Id-Version: Mezzanine
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-05-15 12:45+0000
PO-Revision-Date: 2013-11-20 13:19+0000
Last-Translator: tiktuk <tiktuk@gmail.com>
Language-Team: Danish (http://www.transifex.com/projects/p/mezzanine/language/da/)
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
<h2>Tillykke!</h2>
<p>
    Velkommen til din nye Mezzanine-drevede webside.
    Her er et par hurtige links til at få dig i gang:
</p>
<ul>
    <li><a href="/admin/">Log ind i administrationsinterfacet</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Lav dine egne sidetyper</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Modificer HTML skabeloner</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Ændr denne startside</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Andre ofte stillede spørgsmål</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Hele listen med indstillinger</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/deployment.html">Deployment til produktionsserver</a></li>
</ul>
 
Ingen resultater fundet i %(search_type)s der matchede din søgning: %(query)s
 
Viser %(start)s til %(end)s af %(total)s resultater i %(search_type)s matchende din søgning: %(query)s
 *Ændr ikke denne indstilling med mindre du ved hvad du gør.*

Når indhold er gemt i et Rich Text (WYSIWYG) felt, vil usikre HTML tags og attributter blive strippet fra indholdet for at beskytte mod at stabmedlemmer med vilje kan tilføje kode, der kunne give problemer, såsom at give deres brugerkonto superbrugerstatus med fuld adgang til systemet.

Denne indstilling tillader dig at ændre filtreringsniveauet. At indstille det til lav vil tillade bestemte ekstra tags, såsom dem der er nødvendige for at embedde video. Selvom disse tags ikke er hovedmål for de brugere, der måtte tilføje skadelig kode, er de stadig betragtet som farlige og kunne potentielt blive misbrugt af meget tekniske brugere og er derfor bortfiltreret, når filtreringsniveauet er sat til høj.

At indstille det til ingen filtrering vil fjerne al filtrering og tillade stabmedlemmer at bruge enhver kode, inklusiv script tags. Et URL prefiks til at montere alle Mezzanines url patterns under. Når dette bruges er du også nødt til manuelt at sætte det i dit projekts rods ``urls.py`` modul. Rod ``urls.py`` modulet lavet af Mezzanines ``mezzanine-project`` kommando indeholder et eksempel på dette i slutningen af filen. En sekvens af felter der vil blive injiceret ind i Mezzanines (eller et hvilket som helst andet biblioteks) modeller. Hver del af sekvensen er selv en fire-elements sekvens. De første to elementer er den punktumadskilte sti til modellen og det feltnavn, der skal tilføjes, og den punktumadskilte sti til den feltklasse, der skal bruges til feltet. Det tredje og fjerde element er en sekvens af positionelle argumenter og et dictionary af nøgleordsargumenter til brug ved skabelsen af feltinstansen. Ved specificeringen af feltklassen kan stien ``django.models.db.`` udelades for regulære Django modelfelter. En tagline der vil blive vist i toppen af hver side. En tre dels sekvens, hver indeholdene en sekvens af template tags brugt til at rendere admin oversigten. Adgangstoken til http://bit.ly URL forkortningsservicen. Tilføj Tilføj en til Administrator Akismet API nøgle En open source content management platform. Forfatter Fortryd Ændr Indhold Bestemmer rækkefølgen og grupperingen af administrationsmenuen. Kunne ikke importere værdien af settings.RICHTEXT_WIDGET_CLASS: %s Oversigt Beskrivelse Enhedsspecifik skabelon underbibliotek der skal bruges som standardenhed. Dict som mapper filfelt navne i formatet ``app_label.model_name.field_name`` til den Python punktumadskilte sti til funktionsnavne der vil blive brugt til filfeltets ``upload_to`` argument. Biblioteksnavn til at gemme thumbnails i, der vil blive skabt relativt til det oprindelige billedes bibliotek. Punktumadskilt pakkesti og klassenavn på den widget, der skal bruges til ``RichTextField``. Kladde Rediger Aktiver SSL Fejl Alt Udløber den Gennemtving host Glemt password? Generer beskrivelse Send Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) Høj Hjem Host navn som websiden altid burde blive tilgået via som matcher SSL certifikatet. Hvis sat til ``True``, vil hver side bruge sin egen folder i filbrowser mediebiblioteket. Hvis sat til ``True``, vil kun URL'er specificeret af ``SSL_FORCE_URL_PREFIXES`` indstillingen blive gjort tilgængelige  over SSL, og alle andre URL'er vil blive omdirrigerede tilbage til HTTP hvis tilgået over HTTPS. Hvis sat til ``True``, vil south applikationen automatisk blive tilføjet til ``INSTALLED_APPS`` indstillingen. Hvis sat til ``True``, vil brugere automatisk blive omdirrigeret til HTTPS for URL'erne specificeret af ``SSL_FORCE_URL_PREFIXES`` indstillingen. Hvis ``True``, vil website formularer bruge HTML5 features. Hvis markeret vil beskrivelsen automatisk blive genereret fra indholdet. Afmarker hvis du selv vil skrive beskrivelsen. Interface: Nøgle til http://akismet.com spam filter servicen. Brugt til at filtrere spam fra kommentare og formulare. Nøgleord Efterlad feltet tomt for at få URL'en autogenereret fra titlen. Liste af HTML attributter, der ikke vil blive strippet fra ``RichTextField``. Liste af HTML tags, der ikke skal blive strippet fra ``RichTextField`` instanser. List af inline CSS styles der ikke vil blive fjernet fra ``RichTextField`` instanser. List af ord, der vil blive fjernet fra søgninger. Log ind Log ud Lav (tillader video, iframe, Flash, etc.) Mapping af enhedsspecifikke skabelonunderbiblioteksnavne til sekvenser af strenge, der kan blive fundet i deres brugeragenter. Maksimum antal sidelinks til visning under paginering. Maksimum antal sidelinks. Mediebibliotek Mediebibliotek per webside Metadata Modeller der nedarver fra ``Ownable`` og bruger ``OwnableAdmin`` har deres admin change-list records filtreret ned til records eget af den nuværende bruger. Denne indstilling indeholder en sekvens af modeller i formatet ``app_label.object_name``, der, når nedarvet fra ``Ownable``, stadig vil vise alle records i admin change-list interfacet, ligemeget hvem den nuværende bruger er. Mine handlinger Navn på jQuery UI filen der findes i mezzanine/core/static/mezzanine/js/ Navn på jQuery UI filen. Navnet på jQuery filen, der findes i mezzanine/core/static/mezzanine/js/ Navnet på jQuery filen. Ingen filtrering Ingen tilgængelige Antal af forskellige størrelser for tags når vist som tag cloud. Antal resultater vist på søgeresultatsiden. Valgfri titel til brug i HTML title tagget. Hvis du lader den være tom vil hovedtitelfeltet blive brugt. Rækkefølge Side Side ikke fundet Kodeord: Tilladelse nægtet Drevet af Udgivet Udgivet fra Nylige handlinger Rich Text filter niveau Gem Søg Søgeresultater Søgeresultater per side Sekvens af punktumadskilte Python stier til funktioner brugt til at tjekke om indhold (såsom formularer eller kommentarer) er spam. Hver funktion skal tage tre argumenter: request objektet, formular objektet, og URL'en som der er skrevet fra. Standard er ``mezzanine.utils.views.is_spam_akismet`` hvilket vil bruge http://akismet.com spam filtreringsservicen når ``AKISMET_API_KEY`` indstillingen er sat. Sekvens af modeller der vil være tilgængelige som standard somvalgmuligheder i søgeformularen. Hver model skal være i formatet ``app_label.model_name``. Kun modeller som nedarver fra ``mezzanine.core.models.Displayable`` kan bruges. Sekvens af indstillingsnavne tilgængelige fra skabeloner. Vis i sitemap Side Side titel Webside tilladelse Webside tilladelser Websider Størrelsen af thumbnail previews for billedfelter i admin interfacet. Beklager, der er sket en fejl. Status Tag Cloud størrelser Tagline Siden eksisterer ikke. Tema af Feltet er påkrævet hvis status er sat til udgivet. Titel Titel der vil blive vist i toppen af siden og blive tilføjet til indholdet af hver sides HTML title tag. URL URL til JavaScript filen (relativ til ``STATIC_URL``) der håndterer konfigurering af TinyMCE når standard ``RICHTEXT_WIDGET_CLASS``'en er brugt. Afregistrer disse modeller fra administratoren. Brugernavn eller email: Brugere Vis mobil side Se på siden Vis webside Vil kun blive vist til admin brugere, hvis Kladde er valgt. Vil ikke blive vist før efter dette tidspunkt, hvis Udgivet er valgt. Vil ikke blive vist før dette tidspunkt, hvis Udgivet er valgt. Du har ikke tilladelse til adgang til administrationen af denne webside. og bit.ly adgangstoken af læs mere 