CREATE SCHEMA IF NOT EXISTS live;
-- CREATE SEQUENCE live.t_ili2db_seq;;
-- Localisation_V1.LocalisedText
CREATE TABLE live.localisation_v1_localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_mltlngltext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_loclsdtext_t_basket_idx ON live.localisation_v1_localisedtext ( t_basket );
CREATE INDEX localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_idx ON live.localisation_v1_localisedtext ( loclstn_v1_mltlngltext_localisedtext );
-- Localisation_V1.LocalisedMText
CREATE TABLE live.localisation_v1_localisedmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_ltlnglmtext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_lclsdmtext_t_basket_idx ON live.localisation_v1_localisedmtext ( t_basket );
CREATE INDEX localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_idx ON live.localisation_v1_localisedmtext ( loclstn_v1_ltlnglmtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE live.localisation_v1_multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatin_v1_mltlngltext_t_basket_idx ON live.localisation_v1_multilingualtext ( t_basket );
-- Localisation_V1.MultilingualMText
CREATE TABLE live.localisation_v1_multilingualmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatn_v1_mltlnglmtext_t_basket_idx ON live.localisation_v1_multilingualmtext ( t_basket );
-- GeometryCHLV95_V1.SurfaceStructure
CREATE TABLE live.geometrychlv95_v1_surfacestructure (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,surface geometry(POLYGON,2056) NULL
  ,geomtrychlv1_mltsrface_surfaces bigint NULL
)
;
CREATE INDEX geomtrychlv95_srfcstrcture_t_basket_idx ON live.geometrychlv95_v1_surfacestructure ( t_basket );
CREATE INDEX geomtrychlv95_srfcstrcture_surface_idx ON live.geometrychlv95_v1_surfacestructure USING GIST ( surface );
CREATE INDEX geomtrychlv95_srfcstrcture_geomtrychlv1_ltsrfc_srfces_idx ON live.geometrychlv95_v1_surfacestructure ( geomtrychlv1_mltsrface_surfaces );
-- GeometryCHLV95_V1.MultiSurface
CREATE TABLE live.geometrychlv95_v1_multisurface (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX geomtrychlv95_v1_mltsrface_t_basket_idx ON live.geometrychlv95_v1_multisurface ( t_basket );
-- OeREBKRM_V2_0.ArtikelNummer_
CREATE TABLE live.oerebkrm_v2_0_artikelnummer_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(20) NOT NULL
  ,oerbkrmvs_vhm_thmgsetz_artikelnr bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_artiklnmmer__t_basket_idx ON live.oerebkrm_v2_0_artikelnummer_ ( t_basket );
CREATE INDEX oerebkrm_v2_0_artiklnmmer__oerbkrmvs_vhmhmgstz_rtklnr_idx ON live.oerebkrm_v2_0_artikelnummer_ ( oerbkrmvs_vhm_thmgsetz_artikelnr );
COMMENT ON COLUMN live.oerebkrm_v2_0_artikelnummer_.oerbkrmvs_vhm_thmgsetz_artikelnr IS 'Hinweis auf spezifische Artikel.';
-- OeREBKRM_V2_0.Datum_
CREATE TABLE live.oerebkrm_v2_0_datum_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue date NOT NULL
)
;
CREATE INDEX oerebkrm_v2_0_datum__t_basket_idx ON live.oerebkrm_v2_0_datum_ ( t_basket );
-- OeREBKRM_V2_0.Thema_
CREATE TABLE live.oerebkrm_v2_0_thema_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(120) NOT NULL
)
;
CREATE INDEX oerebkrm_v2_0_thema__t_basket_idx ON live.oerebkrm_v2_0_thema_ ( t_basket );
-- OeREBKRM_V2_0.WebReferenz_
CREATE TABLE live.oerebkrm_v2_0_webreferenz_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(1023) NOT NULL
)
;
CREATE INDEX oerebkrm_v2_0_webreferenz__t_basket_idx ON live.oerebkrm_v2_0_webreferenz_ ( t_basket );
-- OeREBKRM_V2_0.LocalisedBlob
CREATE TABLE live.oerebkrm_v2_0_localisedblob (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,ablob bytea NOT NULL
  ,oerbkrm_v2_mltlnglblob_localisedblob bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_localisdblob_t_basket_idx ON live.oerebkrm_v2_0_localisedblob ( t_basket );
CREATE INDEX oerebkrm_v2_0_localisdblob_oerbkrm_v2_mlblb_lclsdblob_idx ON live.oerebkrm_v2_0_localisedblob ( oerbkrm_v2_mltlnglblob_localisedblob );
-- OeREBKRM_V2_0.LocalisedUri
CREATE TABLE live.oerebkrm_v2_0_localiseduri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext varchar(1023) NOT NULL
  ,oerbkrm_v2__mltlngluri_localisedtext bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_localiseduri_t_basket_idx ON live.oerebkrm_v2_0_localiseduri ( t_basket );
CREATE INDEX oerebkrm_v2_0_localiseduri_oerbkrm_v2__mglr_lclsdtext_idx ON live.oerebkrm_v2_0_localiseduri ( oerbkrm_v2__mltlngluri_localisedtext );
-- OeREBKRM_V2_0.MultilingualBlob
CREATE TABLE live.oerebkrm_v2_0_multilingualblob (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,oerbkrmvs_vrftn_dkment_dokument bigint NULL
  ,oerbkrmvs_vnfgrtn_logo_bild bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_multlnglblob_t_basket_idx ON live.oerebkrm_v2_0_multilingualblob ( t_basket );
CREATE INDEX oerebkrm_v2_0_multlnglblob_oerbkrmvs_vrf_dkmnt_dkment_idx ON live.oerebkrm_v2_0_multilingualblob ( oerbkrmvs_vrftn_dkment_dokument );
CREATE INDEX oerebkrm_v2_0_multlnglblob_oerbkrmvs_vnfgrtn_log_bild_idx ON live.oerebkrm_v2_0_multilingualblob ( oerbkrmvs_vnfgrtn_logo_bild );
COMMENT ON COLUMN live.oerebkrm_v2_0_multilingualblob.oerbkrmvs_vrftn_dkment_dokument IS 'Das Dokument als PDF-Datei';
-- OeREBKRM_V2_0.MultilingualUri
CREATE TABLE live.oerebkrm_v2_0_multilingualuri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,oerebkrm_v2_0amt_amt_amtimweb bigint NULL
  ,oerbkrmvs_vrftn_dkment_textimweb bigint NULL
  ,oerbkrmfr_vstllngsdnst_verweiswms bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_multilngluri_t_basket_idx ON live.oerebkrm_v2_0_multilingualuri ( t_basket );
CREATE INDEX oerebkrm_v2_0_multilngluri_oerebkrm_v2_0amt_mt_mtmweb_idx ON live.oerebkrm_v2_0_multilingualuri ( oerebkrm_v2_0amt_amt_amtimweb );
CREATE INDEX oerebkrm_v2_0_multilngluri_oerbkrmvs_vrfdkmnt_txtmweb_idx ON live.oerebkrm_v2_0_multilingualuri ( oerbkrmvs_vrftn_dkment_textimweb );
CREATE INDEX oerebkrm_v2_0_multilngluri_oerbkrmfr_vstsdnst_vrwswms_idx ON live.oerebkrm_v2_0_multilingualuri ( oerbkrmfr_vstllngsdnst_verweiswms );
COMMENT ON COLUMN live.oerebkrm_v2_0_multilingualuri.oerebkrm_v2_0amt_amt_amtimweb IS 'Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".';
COMMENT ON COLUMN live.oerebkrm_v2_0_multilingualuri.oerbkrmvs_vrftn_dkment_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
COMMENT ON COLUMN live.oerebkrm_v2_0_multilingualuri.oerbkrmfr_vstllngsdnst_verweiswms IS 'WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
-- OeREBKRM_V2_0.ThemaRef
CREATE TABLE live.oerebkrm_v2_0_themaref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,thema varchar(120) NOT NULL
  ,subthema varchar(120) NULL
  ,oerbkrmfr_vhnwsdfntion_thema bigint NULL
  ,oerbkrmvs_v_gmndmtrebk_themen bigint NULL
)
;
CREATE INDEX oerebkrm_v2_0_themaref_t_basket_idx ON live.oerebkrm_v2_0_themaref ( t_basket );
CREATE INDEX oerebkrm_v2_0_themaref_oerbkrmfr_vhnwsdfntn_thema_idx ON live.oerebkrm_v2_0_themaref ( oerbkrmfr_vhnwsdfntion_thema );
CREATE INDEX oerebkrm_v2_0_themaref_oerbkrmvs_v_gndmtrbk_thmen_idx ON live.oerebkrm_v2_0_themaref ( oerbkrmvs_v_gmndmtrebk_themen );
COMMENT ON TABLE live.oerebkrm_v2_0_themaref IS 'Qualifzierter Verweis auf ein Thema oder Subthema.';
COMMENT ON COLUMN live.oerebkrm_v2_0_themaref.oerbkrmfr_vhnwsdfntion_thema IS 'Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.';
COMMENT ON COLUMN live.oerebkrm_v2_0_themaref.oerbkrmvs_v_gmndmtrebk_themen IS 'In der Gemeinde freigeschaltete OeREB-Themen';
-- OeREBKRM_V2_0.Amt.Amt
CREATE TABLE live.oerebkrm_v2_0amt_amt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname text NULL
  ,aname_de text NULL
  ,aname_fr text NULL
  ,aname_rm text NULL
  ,aname_it text NULL
  ,aname_en text NULL
  ,auid varchar(12) NULL
  ,zeile1 varchar(80) NULL
  ,zeile2 varchar(80) NULL
  ,strasse varchar(100) NULL
  ,hausnr varchar(7) NULL
  ,plz varchar(4) NULL
  ,ort varchar(60) NULL
)
;
CREATE INDEX oerebkrm_v2_0amt_amt_t_basket_idx ON live.oerebkrm_v2_0amt_amt ( t_basket );
COMMENT ON TABLE live.oerebkrm_v2_0amt_amt IS 'Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.';
COMMENT ON COLUMN live.oerebkrm_v2_0amt_amt.auid IS 'UID der organisatorischen Einheit';
-- SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis
CREATE TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,aname varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,grundbuchkreisnummer integer NULL
  ,grundbuchkreis_bfsnr integer NOT NULL
  ,bfsnr integer NOT NULL
  ,perimeter geometry(MULTIPOLYGON,2056) NOT NULL
  ,amtschreiberei varchar(255) NOT NULL
  ,amt varchar(255) NULL
  ,strasse varchar(255) NOT NULL
  ,hausnummer varchar(255) NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(255) NOT NULL
  ,telefon varchar(255) NOT NULL
  ,email varchar(255) NOT NULL
  ,web varchar(1023) NOT NULL
  ,auid varchar(15) NULL
)
;
CREATE INDEX so_g_v_018082_grndbchkreis_t_basket_idx ON live.so_g_v_0180822grundbuchkreise_grundbuchkreis ( t_basket );
CREATE INDEX so_g_v_018082_grndbchkreis_perimeter_idx ON live.so_g_v_0180822grundbuchkreise_grundbuchkreis USING GIST ( perimeter );
COMMENT ON TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis IS 'Grundbuchkreisaufteilung inkl. Anschrift etc. der einzelnen Kreise';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.aname IS 'Name des Grundbuches';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.art IS 'Art des Grundbuches';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.nbident IS 'Nummerierungsbereich-Identifikator aus der amtlichen Vermessung';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.grundbuchkreisnummer IS 'Kantonale Nummer des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.grundbuchkreis_bfsnr IS 'Ehemalige Gemeindenummer des Grundbuches (z.B. vor Gemeindefusion).';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.bfsnr IS 'Perimeter des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.perimeter IS 'Perimeter des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.amtschreiberei IS 'Amtschreiberei';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.amt IS 'Amt der Amtschreiberei';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.strasse IS 'Strassenname';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.plz IS 'Postleitzahl';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.ortschaft IS 'Ortschaft';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.telefon IS 'Telefonnummer';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.email IS 'E-Mail-Adresse';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.web IS 'Internetadresse';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.auid IS 'Unternehmens-Identifikationsnummer';
-- SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde
CREATE TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(255) NOT NULL
  ,bfsnr integer NOT NULL
  ,perimeter geometry(MULTIPOLYGON,2056) NOT NULL
  ,nfg_name varchar(255) NOT NULL
  ,nfg_vorname varchar(255) NOT NULL
  ,nfg_titel varchar(255) NULL
  ,firma varchar(255) NOT NULL
  ,firma_zusatz varchar(255) NULL
  ,strasse varchar(255) NOT NULL
  ,hausnummer varchar(255) NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(255) NOT NULL
  ,telefon varchar(255) NOT NULL
  ,web varchar(1023) NOT NULL
  ,email varchar(255) NOT NULL
  ,auid varchar(15) NULL
)
;
CREATE INDEX so_g_v_018082rngskrs_gmnde_t_basket_idx ON live.so_g_v_0180822nachfuehrngskrise_gemeinde ( t_basket );
CREATE INDEX so_g_v_018082rngskrs_gmnde_perimeter_idx ON live.so_g_v_0180822nachfuehrngskrise_gemeinde USING GIST ( perimeter );
COMMENT ON TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde IS 'Gemeinde mit zuständigem Nachführungsgeometer und Anschrift der Firma etc.';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.gemeindename IS 'Name der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.bfsnr IS 'BFS-Nr. der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.perimeter IS 'Geometrie der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_name IS 'Nachname des Nachführungsgeometers';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_vorname IS 'Vorname des Nachführungsgeometers';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_titel IS 'Titel des Nachführungsgeometers (z.B. Dr.)';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.firma IS 'Name der Firma';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.firma_zusatz IS 'Zusatzname der Firma';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.strasse IS 'Strassenname';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.plz IS 'Postleitzahl';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.ortschaft IS 'Ortschaft';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.telefon IS 'Telefonnummer';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.web IS 'Internetadresse';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.email IS 'E-Mail-Adresse';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.auid IS 'Unternehmer-Identifikationsnummer';
-- OeREBKRMvs_V2_0.Vorschriften.Dokument
CREATE TABLE live.oerbkrmvs_v2_0vorschriften_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,typ varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,abkuerzung text NULL
  ,abkuerzung_de text NULL
  ,abkuerzung_fr text NULL
  ,abkuerzung_rm text NULL
  ,abkuerzung_it text NULL
  ,abkuerzung_en text NULL
  ,offiziellenr text NULL
  ,offiziellenr_de text NULL
  ,offiziellenr_fr text NULL
  ,offiziellenr_rm text NULL
  ,offiziellenr_it text NULL
  ,offiziellenr_en text NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,nuringemeinde integer NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
  ,publiziertbis date NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_chrftn_dkment_t_basket_idx ON live.oerbkrmvs_v2_0vorschriften_dokument ( t_basket );
CREATE INDEX oerbkrmvs_v2_chrftn_dkment_zustaendigestelle_idx ON live.oerbkrmvs_v2_0vorschriften_dokument ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmvs_v2_0vorschriften_dokument IS 'Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.kanton IS 'Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.gemeinde IS 'Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.nuringemeinde IS 'Falls das Dokument nur eine bestimmte Gemeinde betrifft (z.B. Sicherheitszonenplan)';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.publiziertab IS 'Datum, ab dem dieses Dokument in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmvs_v2_0vorschriften_dokument.publiziertbis IS 'Datum, an/ab dem dieses Dokument nicht mehr in Auszügen erscheint';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
)
;
CREATE INDEX oerbkrmfr_v2_drstllngsdnst_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst ( t_basket );
COMMENT ON TABLE live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst IS 'Angaben zum Darstellungsdienst.';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,thema varchar(120) NOT NULL
  ,subthema varchar(120) NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
  ,publiziertbis date NULL
  ,darstellungsdienst bigint NULL
  ,legende bigint NOT NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_tmsbschrnkung_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ( t_basket );
CREATE INDEX oerbkrmfr_v2_tmsbschrnkung_darstellungsdienst_idx ON live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ( darstellungsdienst );
CREATE INDEX oerbkrmfr_v2_tmsbschrnkung_legende_idx ON live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ( legende );
CREATE INDEX oerbkrmfr_v2_tmsbschrnkung_zustaendigestelle_idx ON live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung IS 'Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.thema IS 'Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.rechtsstatus IS 'Status, ob diese Eigentumsbeschränkung in Kraft ist';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.publiziertab IS 'Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.publiziertbis IS 'Datum, an/ab dem diese Eigentumsbeschränkung nicht mehr in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.darstellungsdienst IS 'Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung.zustaendigestelle IS 'Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_geometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,punkt_lv95 geometry(POINT,2056) NULL
  ,linie_lv95 geometry(LINESTRING,2056) NULL
  ,flaeche_lv95 geometry(POLYGON,2056) NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
  ,publiziertbis date NULL
  ,metadatengeobasisdaten varchar(1023) NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie ( t_basket );
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_punkt_lv95_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie USING GIST ( punkt_lv95 );
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_linie_lv95_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie USING GIST ( linie_lv95 );
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_flaeche_lv95_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie USING GIST ( flaeche_lv95 );
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_eigentumsbeschraenkung_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie ( eigentumsbeschraenkung );
CREATE INDEX oerbkrmfr_v2_strktr_gmtrie_zustaendigestelle_idx ON live.oerbkrmfr_v2_0transferstruktur_geometrie ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v2_0transferstruktur_geometrie IS 'Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.punkt_lv95 IS 'Punktgeometrie';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.linie_lv95 IS 'Linienförmige Geometrie';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.flaeche_lv95 IS 'Flächenförmige Geometrie';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.rechtsstatus IS 'Status, ob diese Geometrie in Kraft ist';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.publiziertab IS 'Datum, ab dem diese Geometrie in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.publiziertbis IS 'Datum, an/ab dem diese Geometrie nicht mehr in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_geometrie.metadatengeobasisdaten IS 'Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_r_hnwsdfntion_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition ( t_basket );
CREATE INDEX oerbkrmfr_v2_r_hnwsdfntion_zustaendigestelle_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition IS 'Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition.kanton IS 'Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition.gemeinde IS 'BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_legendeeintrag (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,symbolpunkt bytea NULL
  ,symbollinie bytea NULL
  ,symbolflaeche bytea NULL
  ,legendetext text NULL
  ,legendetext_de text NULL
  ,legendetext_fr text NULL
  ,legendetext_rm text NULL
  ,legendetext_it text NULL
  ,legendetext_en text NULL
  ,artcode varchar(40) NOT NULL
  ,artcodeliste varchar(1023) NOT NULL
  ,thema varchar(120) NOT NULL
  ,subthema varchar(120) NULL
  ,darstellungsdienst bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_ktr_lgndntrag_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_legendeeintrag ( t_basket );
CREATE INDEX oerbkrmfr_v2_ktr_lgndntrag_darstellungsdienst_idx ON live.oerbkrmfr_v2_0transferstruktur_legendeeintrag ( darstellungsdienst );
COMMENT ON TABLE live.oerbkrmfr_v2_0transferstruktur_legendeeintrag IS 'Ein Eintrag in der Planlegende.';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_legendeeintrag.symbolpunkt IS 'Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_legendeeintrag.artcode IS 'Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_legendeeintrag.artcodeliste IS 'Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_legendeeintrag.thema IS 'Zu welchem ÖREB-Thema der Legendeneintrag gehört';
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_legendeeintrag.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,grundlage bigint NOT NULL
  ,verfeinerung bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_rndlgvrfnrung_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ( t_basket );
CREATE INDEX oerbkrmfr_v2_rndlgvrfnrung_grundlage_idx ON live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ( grundlage );
CREATE INDEX oerbkrmfr_v2_rndlgvrfnrung_verfeinerung_idx ON live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ( verfeinerung );
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,hinweisdefinition bigint NOT NULL
  ,dokument bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_wsdfntndkment_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ( t_basket );
CREATE INDEX oerbkrmfr_v2_wsdfntndkment_hinweisdefinition_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ( hinweisdefinition );
CREATE INDEX oerbkrmfr_v2_wsdfntndkment_dokument_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ( dokument );
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift
CREATE TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,vorschrift bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v2_hnwsvrschrift_t_basket_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ( t_basket );
CREATE INDEX oerbkrmfr_v2_hnwsvrschrift_eigentumsbeschraenkung_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ( eigentumsbeschraenkung );
CREATE INDEX oerbkrmfr_v2_hnwsvrschrift_vorschrift_idx ON live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ( vorschrift );
COMMENT ON COLUMN live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift.vorschrift IS 'Rechtsvorschrift/Hinweis zur Eigentumsbeschränkung';
-- OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_dokumenttyptxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
)
;
CREATE INDEX oerbkrmvs_v2_n_dkmnttyptxt_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_dokumenttyptxt ( t_basket );
COMMENT ON TABLE live.oerbkrmvs_v2_0konfiguration_dokumenttyptxt IS 'Anzeigetexte für die Aufzählung DokumentTyp';
-- OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,gemeinde integer NOT NULL
  ,grundlagedatenstand timestamp NULL
  ,grundlagedatenmetadaten varchar(1023) NULL
  ,bezeichnunguntereinheitgrundbuch varchar(80) NULL
)
;
CREATE INDEX oerbkrmvs_v2_tn_gmndmtrebk_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk ( t_basket );
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk.gemeinde IS 'BFS-Nr. der Gemeinde';
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk.grundlagedatenstand IS 'Stand der Grundlagedaten (AV)';
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk.bezeichnunguntereinheitgrundbuch IS 'z.B. "Untereinheit" oder "GB-Kreis"';
-- OeREBKRMkvs_V2_0.Konfiguration.Glossar
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_glossar (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,inhalt text NULL
  ,inhalt_de text NULL
  ,inhalt_fr text NULL
  ,inhalt_rm text NULL
  ,inhalt_it text NULL
  ,inhalt_en text NULL
)
;
CREATE INDEX oerbkrmvs_v2_nfgrtn_glssar_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_glossar ( t_basket );
-- OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_grundbuchkreis (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,kanton varchar(255) NOT NULL
  ,gemeinde integer NOT NULL
  ,nbident varchar(12) NOT NULL
  ,aname varchar(60) NOT NULL
  ,subkreis varchar(15) NULL
  ,los varchar(15) NULL
)
;
CREATE INDEX oerbkrmvs_v2__grndbchkreis_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_grundbuchkreis ( t_basket );
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_grundbuchkreis.nbident IS 'NBIdent gem. AV-Daten';
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_grundbuchkreis.aname IS 'Name des GB-Kreises';
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_grundbuchkreis.subkreis IS 'SubKreis gem. GB-Daten (eGRISDM/GBDBS)';
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_grundbuchkreis.los IS 'Los gem. GB-Daten (eGRISDM/GBDBS)';
-- OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_grundstueckarttxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
)
;
CREATE INDEX oerbkrmvs_v2_grndstckrttxt_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_grundstueckarttxt ( t_basket );
COMMENT ON TABLE live.oerbkrmvs_v2_0konfiguration_grundstueckarttxt IS 'Anzeigetexte für die Aufzählung GrundstueckArt';
-- OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_haftungsausschuss (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,inhalt text NULL
  ,inhalt_de text NULL
  ,inhalt_fr text NULL
  ,inhalt_rm text NULL
  ,inhalt_it text NULL
  ,inhalt_en text NULL
)
;
CREATE INDEX oerbkrmvs_v2_hftngssschuss_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_haftungsausschuss ( t_basket );
-- OeREBKRMkvs_V2_0.Konfiguration.Information
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_information (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,inhalt text NULL
  ,inhalt_de text NULL
  ,inhalt_fr text NULL
  ,inhalt_rm text NULL
  ,inhalt_it text NULL
  ,inhalt_en text NULL
  ,auszugindex integer NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_grtn_nfrmtion_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_information ( t_basket );
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_information.auszugindex IS 'Ordnungszahl für die Sortierung im Auszug.';
-- OeREBKRMkvs_V2_0.Konfiguration.Logo
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_logo (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(60) NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_0knfgrtn_logo_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_logo ( t_basket );
COMMENT ON COLUMN live.oerbkrmvs_v2_0konfiguration_logo.acode IS 'ch.plr, ch, ch.{kanton} oder ch.{bfsnr}';
-- OeREBKRMkvs_V2_0.Konfiguration.MapLayering
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_maplayering (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,verweiswms varchar(1023) NOT NULL
  ,layerindex integer NOT NULL
  ,layerdeckkraft decimal(4,3) NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_grtn_mplyring_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_maplayering ( t_basket );
-- OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt
CREATE TABLE live.oerbkrmvs_v2_0konfiguration_rechtsstatustxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
)
;
CREATE INDEX oerbkrmvs_v2__rchtssttstxt_t_basket_idx ON live.oerbkrmvs_v2_0konfiguration_rechtsstatustxt ( t_basket );
COMMENT ON TABLE live.oerbkrmvs_v2_0konfiguration_rechtsstatustxt IS 'Anzeigetexte für die Aufzählung RechtsStatus';
-- OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme
CREATE TABLE live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,datum date NOT NULL
  ,datensatzidentifikation text NOT NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_nkvs_dtnfnhme_t_basket_idx ON live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme ( t_basket );
CREATE INDEX oerbkrmvs_v2_nkvs_dtnfnhme_zustaendigestelle_idx ON live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme IS 'Angaben zur Datenlieferung an die Katasterorganisation des Kantons.';
COMMENT ON COLUMN live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme.datum IS 'Zeitpunkt der Aufnahme oder der letzten Änderung der Daten';
COMMENT ON COLUMN live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme.datensatzidentifikation IS 'BasketId oder Dateiname oder vollständiger WFS-Request.';
-- OeREBKRMkvs_V2_0.Thema.Thema
CREATE TABLE live.oerbkrmvs_v2_0thema_thema (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(120) NOT NULL
  ,subcode varchar(120) NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,auszugindex integer NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_0thema_thema_t_basket_idx ON live.oerbkrmvs_v2_0thema_thema ( t_basket );
COMMENT ON TABLE live.oerbkrmvs_v2_0thema_thema IS 'Anzeigetexte für die Aufzählung Thema';
COMMENT ON COLUMN live.oerbkrmvs_v2_0thema_thema.auszugindex IS 'Ordnungszahl für die Sortierung im Auszug. Bei Subthemen definiert die Ordnungszahl die Reihenfolge innerhalb des Themas.';
-- OeREBKRMkvs_V2_0.Thema.ThemaGesetz
CREATE TABLE live.oerbkrmvs_v2_0thema_themagesetz (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,thema bigint NOT NULL
  ,gesetz bigint NOT NULL
)
;
CREATE INDEX oerbkrmvs_v2_0thm_thmgsetz_t_basket_idx ON live.oerbkrmvs_v2_0thema_themagesetz ( t_basket );
CREATE INDEX oerbkrmvs_v2_0thm_thmgsetz_thema_idx ON live.oerbkrmvs_v2_0thema_themagesetz ( thema );
CREATE INDEX oerbkrmvs_v2_0thm_thmgsetz_gesetz_idx ON live.oerbkrmvs_v2_0thema_themagesetz ( gesetz );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_BASKET_dataset_idx ON live.t_ili2db_basket ( dataset );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_dataset_idx ON live.t_ili2db_import ( dataset );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_BASKET_importrun_idx ON live.t_ili2db_import_basket ( importrun );
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_BASKET_basket_idx ON live.t_ili2db_import_basket ( basket );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE live.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_mltlngltext_localisedtext ) REFERENCES live.localisation_v1_multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_ltlnglmtext_localisedtext ) REFERENCES live.localisation_v1_multilingualmtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_multilingualtext ADD CONSTRAINT localisatin_v1_mltlngltext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_multilingualmtext ADD CONSTRAINT localisatn_v1_mltlnglmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_surfacestructure ADD CONSTRAINT geomtrychlv95_srfcstrcture_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_surfacestructure ADD CONSTRAINT geomtrychlv95_srfcstrcture_geomtrychlv1_ltsrfc_srfces_fkey FOREIGN KEY ( geomtrychlv1_mltsrface_surfaces ) REFERENCES live.geometrychlv95_v1_multisurface DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_multisurface ADD CONSTRAINT geomtrychlv95_v1_mltsrface_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_artikelnummer_ ADD CONSTRAINT oerebkrm_v2_0_artiklnmmer__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_artikelnummer_ ADD CONSTRAINT oerebkrm_v2_0_artiklnmmer__oerbkrmvs_vhmhmgstz_rtklnr_fkey FOREIGN KEY ( oerbkrmvs_vhm_thmgsetz_artikelnr ) REFERENCES live.oerbkrmvs_v2_0thema_themagesetz DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_datum_ ADD CONSTRAINT oerebkrm_v2_0_datum__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_thema_ ADD CONSTRAINT oerebkrm_v2_0_thema__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_webreferenz_ ADD CONSTRAINT oerebkrm_v2_0_webreferenz__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_localisedblob ADD CONSTRAINT oerebkrm_v2_0_localisdblob_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_localisedblob ADD CONSTRAINT oerebkrm_v2_0_localisdblob_oerbkrm_v2_mlblb_lclsdblob_fkey FOREIGN KEY ( oerbkrm_v2_mltlnglblob_localisedblob ) REFERENCES live.oerebkrm_v2_0_multilingualblob DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_localiseduri ADD CONSTRAINT oerebkrm_v2_0_localiseduri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_localiseduri ADD CONSTRAINT oerebkrm_v2_0_localiseduri_oerbkrm_v2__mglr_lclsdtext_fkey FOREIGN KEY ( oerbkrm_v2__mltlngluri_localisedtext ) REFERENCES live.oerebkrm_v2_0_multilingualuri DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualblob ADD CONSTRAINT oerebkrm_v2_0_multlnglblob_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualblob ADD CONSTRAINT oerebkrm_v2_0_multlnglblob_oerbkrmvs_vrf_dkmnt_dkment_fkey FOREIGN KEY ( oerbkrmvs_vrftn_dkment_dokument ) REFERENCES live.oerbkrmvs_v2_0vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualblob ADD CONSTRAINT oerebkrm_v2_0_multlnglblob_oerbkrmvs_vnfgrtn_log_bild_fkey FOREIGN KEY ( oerbkrmvs_vnfgrtn_logo_bild ) REFERENCES live.oerbkrmvs_v2_0konfiguration_logo DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualuri ADD CONSTRAINT oerebkrm_v2_0_multilngluri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualuri ADD CONSTRAINT oerebkrm_v2_0_multilngluri_oerebkrm_v2_0amt_mt_mtmweb_fkey FOREIGN KEY ( oerebkrm_v2_0amt_amt_amtimweb ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualuri ADD CONSTRAINT oerebkrm_v2_0_multilngluri_oerbkrmvs_vrfdkmnt_txtmweb_fkey FOREIGN KEY ( oerbkrmvs_vrftn_dkment_textimweb ) REFERENCES live.oerbkrmvs_v2_0vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_multilingualuri ADD CONSTRAINT oerebkrm_v2_0_multilngluri_oerbkrmfr_vstsdnst_vrwswms_fkey FOREIGN KEY ( oerbkrmfr_vstllngsdnst_verweiswms ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_themaref ADD CONSTRAINT oerebkrm_v2_0_themaref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_themaref ADD CONSTRAINT oerebkrm_v2_0_themaref_oerbkrmfr_vhnwsdfntn_thema_fkey FOREIGN KEY ( oerbkrmfr_vhnwsdfntion_thema ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0_themaref ADD CONSTRAINT oerebkrm_v2_0_themaref_oerbkrmvs_v_gndmtrbk_thmen_fkey FOREIGN KEY ( oerbkrmvs_v_gmndmtrebk_themen ) REFERENCES live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v2_0amt_amt ADD CONSTRAINT oerebkrm_v2_0amt_amt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_018082_grndbchkreis_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_grundbuchkreisnummer_check CHECK( grundbuchkreisnummer BETWEEN 1 AND 99);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_grundbuchkreis_bfsnr_check CHECK( grundbuchkreis_bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_018082rngskrs_gmnde_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_01808rngskrs_gmnde_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_01808rngskrs_gmnde_plz_check CHECK( plz BETWEEN 1000 AND 9990);
ALTER TABLE live.oerbkrmvs_v2_0vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v2_chrftn_dkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v2chrftn_dkment_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmvs_v2_0vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v2chrftn_dkment_nuringemeinde_check CHECK( nuringemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmvs_v2_0vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v2_chrftn_dkment_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst ADD CONSTRAINT oerbkrmfr_v2_drstllngsdnst_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v2_tmsbschrnkung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v2_tmsbschrnkung_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v2_tmsbschrnkung_legende_fkey FOREIGN KEY ( legende ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_legendeeintrag DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v2_tmsbschrnkung_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v2_strktr_gmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v2_strktr_gmtrie_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v2_strktr_gmtrie_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v2_r_hnwsdfntion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v2r_hnwsdfntion_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v2_r_hnwsdfntion_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_legendeeintrag ADD CONSTRAINT oerbkrmfr_v2_ktr_lgndntrag_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_legendeeintrag ADD CONSTRAINT oerbkrmfr_v2_ktr_lgndntrag_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v2_rndlgvrfnrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v2_rndlgvrfnrung_grundlage_fkey FOREIGN KEY ( grundlage ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v2_rndlgvrfnrung_verfeinerung_fkey FOREIGN KEY ( verfeinerung ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v2_wsdfntndkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v2_wsdfntndkment_hinweisdefinition_fkey FOREIGN KEY ( hinweisdefinition ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v2_wsdfntndkment_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES live.oerbkrmvs_v2_0vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v2_hnwsvrschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v2_hnwsvrschrift_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES live.oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v2_0transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v2_hnwsvrschrift_vorschrift_fkey FOREIGN KEY ( vorschrift ) REFERENCES live.oerbkrmvs_v2_0vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_dokumenttyptxt ADD CONSTRAINT oerbkrmvs_v2_n_dkmnttyptxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk ADD CONSTRAINT oerbkrmvs_v2_tn_gmndmtrebk_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_gemeindemitoerebk ADD CONSTRAINT oerbkrmvs_v2tn_gmndmtrebk_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_glossar ADD CONSTRAINT oerbkrmvs_v2_nfgrtn_glssar_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_grundbuchkreis ADD CONSTRAINT oerbkrmvs_v2__grndbchkreis_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_grundbuchkreis ADD CONSTRAINT oerbkrmvs_v2_grndbchkreis_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_grundstueckarttxt ADD CONSTRAINT oerbkrmvs_v2_grndstckrttxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_haftungsausschuss ADD CONSTRAINT oerbkrmvs_v2_hftngssschuss_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_information ADD CONSTRAINT oerbkrmvs_v2_grtn_nfrmtion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_information ADD CONSTRAINT oerbkrmvs_v2grtn_nfrmtion_auszugindex_check CHECK( auszugindex BETWEEN -1000 AND 1000);
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_logo ADD CONSTRAINT oerbkrmvs_v2_0knfgrtn_logo_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_maplayering ADD CONSTRAINT oerbkrmvs_v2_grtn_mplyring_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_maplayering ADD CONSTRAINT oerbkrmvs_v2grtn_mplyring_layerindex_check CHECK( layerindex BETWEEN -1000 AND 1000);
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_maplayering ADD CONSTRAINT oerbkrmvs_v2grtn_mplyring_layerdeckkraft_check CHECK( layerdeckkraft BETWEEN 0.0 AND 1.0);
ALTER TABLE live.oerbkrmvs_v2_0konfiguration_rechtsstatustxt ADD CONSTRAINT oerbkrmvs_v2__rchtssttstxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme ADD CONSTRAINT oerbkrmvs_v2_nkvs_dtnfnhme_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0metadatenkvs_datenaufnahme ADD CONSTRAINT oerbkrmvs_v2_nkvs_dtnfnhme_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerebkrm_v2_0amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0thema_thema ADD CONSTRAINT oerbkrmvs_v2_0thema_thema_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0thema_thema ADD CONSTRAINT oerbkrmvs_v2_0thema_thema_auszugindex_check CHECK( auszugindex BETWEEN -1000 AND 1000);
ALTER TABLE live.oerbkrmvs_v2_0thema_themagesetz ADD CONSTRAINT oerbkrmvs_v2_0thm_thmgsetz_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0thema_themagesetz ADD CONSTRAINT oerbkrmvs_v2_0thm_thmgsetz_thema_fkey FOREIGN KEY ( thema ) REFERENCES live.oerbkrmvs_v2_0thema_thema DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v2_0thema_themagesetz ADD CONSTRAINT oerbkrmvs_v2_0thm_thmgsetz_gesetz_fkey FOREIGN KEY ( gesetz ) REFERENCES live.oerbkrmvs_v2_0vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
-- ALTER TABLE live.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES live.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_DATASET_datasetName_key ON live.T_ILI2DB_DATASET (datasetName)
;
-- ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES live.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
-- ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_MODEL_iliversion_modelName_key ON live.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON live.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.ThemaRef','oerebkrm_v2_0_themaref');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument','oerbkrmvs_v2_0vorschriften_zustaendigestelledokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.MultiSurface','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift','oerbkrmfr_v2_0transferstruktur_hinweisvorschrift');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition','oerbkrmfr_v2_0transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde','so_g_v_0180822nachfuehrngskrise_gemeinde');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme','oerbkrmvs_v2_0metadatenkvs_datenaufnahme');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.Thema_','oerebkrm_v2_0_thema_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.MultilingualBlob','oerebkrm_v2_0_multilingualblob');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.ZustaendigeStelleDatenAufnahme','oerbkrmvs_v2_0metadatenkvs_zustaendigestelledatenaufnahme');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.LocalisedBlob','oerebkrm_v2_0_localisedblob');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.ArtikelNummer_','oerebkrm_v2_0_artikelnummer_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis','oerbkrmvs_v2_0konfiguration_grundbuchkreis');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt','oerbkrmvs_v2_0konfiguration_grundstueckarttxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Logo','oerbkrmvs_v2_0konfiguration_logo');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_darstllngsdnstgntmsbschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.Amt.Amt','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag','oerbkrmfr_v2_0transferstruktur_legendeeintrag');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle','oerbkrmfr_v2_0transferstruktur_hinweisdefinitionzustndgstlle');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkunglegende');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualMText','localisationch_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema','oerbkrmvs_v2_0thema_thema');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisation_v1_localisedtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis','so_g_v_0180822grundbuchkreise_grundbuchkreis');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument','oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst','oerbkrmfr_v2_0transferstruktur_legendedarstellungsdienst');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_zustaendigstllgntmsbschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_geometrieeigentumsbeschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedMText','localisation_v1_localisedmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss','oerbkrmvs_v2_0konfiguration_haftungsausschuss');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.LocalisedUri','oerebkrm_v2_0_localiseduri');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung','oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt','oerbkrmvs_v2_0konfiguration_rechtsstatustxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar','oerbkrmvs_v2_0konfiguration_glossar');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz','oerbkrmvs_v2_0thema_themagesetz');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information','oerbkrmvs_v2_0konfiguration_information');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie','oerbkrmfr_v2_0transferstruktur_geometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedMText','localisationch_v1_localisedmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt','oerbkrmvs_v2_0konfiguration_dokumenttyptxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.Datum_','oerebkrm_v2_0_datum_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.MultilingualUri','oerebkrm_v2_0_multilingualuri');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.WebReferenz_','oerebkrm_v2_0_webreferenz_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualMText','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering','oerbkrmvs_v2_0konfiguration_maplayering');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie','oerbkrmfr_v2_0transferstruktur_zustaendigestellegeometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.SurfaceStructure','geometrychlv95_v1_surfacestructure');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Gemeinde','gemeinde','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt.Code','acode','oerbkrmvs_v2_0konfiguration_rechtsstatustxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Telefon','telefon','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SubThema','subthema','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Art','art','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst.VerweisWMS','oerbkrmfr_vstllngsdnst_verweiswms','oerebkrm_v2_0_multilingualuri','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.publiziertBis','publiziertbis','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','loclstn_v1_mltlngltext_localisedtext','localisation_v1_localisedtext','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Perimeter','perimeter','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Typ','typ','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Linie_LV95','linie_lv95','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolPunkt','symbolpunkt','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.PLZ','plz','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Ortschaft','ortschaft','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar.Inhalt','inhalt','oerbkrmvs_v2_0konfiguration_glossar',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt.Titel','titel','oerbkrmvs_v2_0konfiguration_rechtsstatustxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument.HinweisDefinition','hinweisdefinition','oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument','oerbkrmfr_v2_0transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Thema_.value','avalue','oerebkrm_v2_0_thema_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.WebReferenz_.value','avalue','oerebkrm_v2_0_webreferenz_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Ort','ort','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.Thema','thema','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Amt','amt','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Strasse','strasse','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme.Datum','datum','oerbkrmvs_v2_0metadatenkvs_datenaufnahme',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.LegendeText','legendetext','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Titel','nfg_titel','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.Los','los','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK.BezeichnungUntereinheitGrundbuch','bezeichnunguntereinheitgrundbuch','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Email','email','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.SurfaceStructure.Surface','surface','geometrychlv95_v1_surfacestructure',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung.DarstellungsDienst','darstellungsdienst','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisation_v1_localisedtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedBlob.Blob','ablob','oerebkrm_v2_0_localisedblob',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift.Eigentumsbeschraenkung','eigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_hinweisvorschrift','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Hausnummer','hausnummer','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.UID','auid','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Thema','oerbkrmfr_vhnwsdfntion_thema','oerebkrm_v2_0_themaref','oerbkrmfr_v2_0transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift','oerbkrmfr_v2_0transferstruktur_hinweisvorschrift','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema.SubCode','subcode','oerbkrmvs_v2_0thema_thema',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.Kanton','kanton','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Hausnummer','hausnummer','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.AmtImWeb','oerebkrm_v2_0amt_amt_amtimweb','oerebkrm_v2_0_multilingualuri','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Firma_Zusatz','firma_zusatz','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung.Eigentumsbeschraenkung','eigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_geometrie','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.PLZ','plz','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v2_0transferstruktur_hinweisdefinition','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt.Code','acode','oerbkrmvs_v2_0konfiguration_grundstueckarttxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering.VerweisWMS','verweiswms','oerbkrmvs_v2_0konfiguration_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung.Verfeinerung','verfeinerung','oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.ArtikelNummer_.value','avalue','oerebkrm_v2_0_artikelnummer_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.PLZ','plz','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Vorname','nfg_vorname','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument.ZustaendigeStelle','zustaendigestelle','oerbkrmvs_v2_0vorschriften_dokument','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme.DatensatzIdentifikation','datensatzidentifikation','oerbkrmvs_v2_0metadatenkvs_datenaufnahme',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Titel','titel','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information.Titel','titel','oerbkrmvs_v2_0konfiguration_information',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.MultiSurface.Surfaces','geomtrychlv1_mltsrface_surfaces','geometrychlv95_v1_surfacestructure','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.publiziertAb','publiziertab','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK.Themen','oerbkrmvs_v_gmndmtrebk_themen','oerebkrm_v2_0_themaref','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.NurInGemeinde','nuringemeinde','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK.Gemeinde','gemeinde','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Perimeter','perimeter','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz.Gesetz','gesetz','oerbkrmvs_v2_0thema_themagesetz','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedUri.Language','alanguage','oerebkrm_v2_0_localiseduri',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Email','email','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisation_v1_localisedtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema.Code','acode','oerbkrmvs_v2_0thema_thema',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Hausnr','hausnr','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedBlob.Language','alanguage','oerebkrm_v2_0_localisedblob',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss.Inhalt','inhalt','oerbkrmvs_v2_0konfiguration_haftungsausschuss',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Kanton','kanton','oerbkrmfr_v2_0transferstruktur_hinweisdefinition',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.publiziertBis','publiziertbis','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.NBIdent','nbident','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolFlaeche','symbolflaeche','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolLinie','symbollinie','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v2_0transferstruktur_geometrie','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.Gemeinde','gemeinde','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Web','web','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering.LayerDeckkraft','layerdeckkraft','oerbkrmvs_v2_0konfiguration_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.SubThema','subthema','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.NBIdent','nbident','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Strasse','strasse','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Flaeche_LV95','flaeche_lv95','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument.Dokument','dokument','oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Name','aname','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.BFSNr','bfsnr','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedUri.Text','atext','oerebkrm_v2_0_localiseduri',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Zeile1','zeile1','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Dokument','oerbkrmvs_vrftn_dkment_dokument','oerebkrm_v2_0_multilingualblob','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Logo.Code','acode','oerbkrmvs_v2_0konfiguration_logo',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema.AuszugIndex','auszugindex','oerbkrmvs_v2_0thema_thema',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK.GrundlagedatenStand','grundlagedatenstand','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information.Inhalt','inhalt','oerbkrmvs_v2_0konfiguration_information',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.UID','auid','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.publiziertBis','publiziertbis','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst.DarstellungsDienst','darstellungsdienst','oerbkrmfr_v2_0transferstruktur_legendeeintrag','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.MultilingualUri.LocalisedText','oerbkrm_v2__mltlngluri_localisedtext','oerebkrm_v2_0_localiseduri','oerebkrm_v2_0_multilingualuri');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Rechtsstatus','rechtsstatus','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Firma','firma','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Ortschaft','ortschaft','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Strasse','strasse','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Punkt_LV95','punkt_lv95','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.TextImWeb','oerbkrmvs_vrftn_dkment_textimweb','oerebkrm_v2_0_multilingualuri','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung.Grundlage','grundlage','oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering.LayerIndex','layerindex','oerbkrmvs_v2_0konfiguration_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.ArtCodeliste','artcodeliste','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.UID','auid','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Rechtsstatus','rechtsstatus','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.publiziertAb','publiziertab','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Name','aname','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.SubKreis','subkreis','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.MetadatenGeobasisdaten','metadatengeobasisdaten','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz.ArtikelNr','oerbkrmvs_vhm_thmgsetz_artikelnr','oerebkrm_v2_0_artikelnummer_','oerbkrmvs_v2_0thema_themagesetz');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Datum_.value','avalue','oerebkrm_v2_0_datum_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Gemeindename','gemeindename','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.publiziertAb','publiziertab','oerbkrmfr_v2_0transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt.Code','acode','oerbkrmvs_v2_0konfiguration_dokumenttyptxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Abkuerzung','abkuerzung','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Logo.Bild','oerbkrmvs_vnfgrtn_logo_bild','oerebkrm_v2_0_multilingualblob','oerbkrmvs_v2_0konfiguration_logo');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt.Titel','titel','oerbkrmvs_v2_0konfiguration_grundstueckarttxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Telefon','telefon','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Amtschreiberei','amtschreiberei','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.ThemaRef.SubThema','subthema','oerebkrm_v2_0_themaref',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Gemeinde','gemeinde','oerbkrmfr_v2_0transferstruktur_hinweisdefinition',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Zeile2','zeile2','oerebkrm_v2_0amt_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis.Name','aname','oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Name','nfg_name','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss.Titel','titel','oerbkrmvs_v2_0konfiguration_haftungsausschuss',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Grundbuchkreis_BFSNr','grundbuchkreis_bfsnr','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.OffizielleNr','offiziellenr','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Web','web','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar.Titel','titel','oerbkrmvs_v2_0konfiguration_glossar',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Text','atext','localisation_v1_localisedmtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.MultilingualBlob.LocalisedBlob','oerbkrm_v2_mltlnglblob_localisedblob','oerebkrm_v2_0_localisedblob','oerebkrm_v2_0_multilingualblob');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information.AuszugIndex','auszugindex','oerbkrmvs_v2_0konfiguration_information',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende.Legende','legende','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung','oerbkrmfr_v2_0transferstruktur_legendeeintrag');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema.Titel','titel','oerbkrmvs_v2_0thema_thema',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.BFSNr','bfsnr','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Grundbuchkreisnummer','grundbuchkreisnummer','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK.GrundlagedatenMetadaten','grundlagedatenmetadaten','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz.Thema','thema','oerbkrmvs_v2_0thema_themagesetz','oerbkrmvs_v2_0thema_thema');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.ArtCode','artcode','oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.ZustaendigeStelleDatenAufnahme.ZustaendigeStelle','zustaendigestelle','oerbkrmvs_v2_0metadatenkvs_datenaufnahme','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Kanton','kanton','oerbkrmvs_v2_0vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.ThemaRef.Thema','thema','oerebkrm_v2_0_themaref',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt.Titel','titel','oerbkrmvs_v2_0konfiguration_dokumenttyptxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualMText.LocalisedText','loclstn_v1_ltlnglmtext_localisedtext','localisation_v1_localisedmtext','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.Thema','thema','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Language','alanguage','localisation_v1_localisedmtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.Rechtsstatus','rechtsstatus','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.ThemaRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information.Inhalt','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.MultiSurface','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Thema_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.MultilingualBlob','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Amt.Amt.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Abkuerzung','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.ZustaendigeStelleDatenAufnahme','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.LocalisedBlob','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.ArtikelNummer_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.LegendeText','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss.Inhalt','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Logo','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Perimeter','ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Amt.Amt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.OffizielleNr','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar.Inhalt','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.LocalisedUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Datum_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Perimeter','ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.MultilingualUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.WebReferenz_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.SurfaceStructure','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.Datum_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.SurfaceStructure',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundbuchKreis',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.WebReferenz_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.MultilingualBlob',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualMText','Localisation_V1.MultilingualMText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GrundstueckArtTxt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Thema.Thema',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.ZustaendigeStelleDatenAufnahme',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Glossar',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.MapLayering',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Haftungsausschuss',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Information',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.RechtsStatusTxt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.ThemaRef',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.GemeindeMitOeREBK',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.DokumentTypTxt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Konfiguration.Logo',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.MetadatenKVS.DatenAufnahme',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedMText','Localisation_V1.LocalisedMText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMkvs_V2_0.Thema.ThemaGesetz',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.Amt.Amt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedMText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.LocalisedUri',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.MultiSurface',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualMText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.Thema_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.MultilingualUri',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.ArtikelNummer_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.LocalisedBlob',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualblob',NULL,'oerbkrmvs_vrftn_dkment_dokument','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_legendeeintrag"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung',NULL,'verfeinerung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument',NULL,'hinweisdefinition','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_rechtsstatustxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_rechtsstatustxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_thema_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_thema_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisvorschrift',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_artikelnummer_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_artikelnummer_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0amt_amt',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0amt_amt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument',NULL,'dokument','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'T_Type','ch.ehi.ili2db.types','["geometrychlv95_v1_surfacestructure"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_glossar',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_glossar"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualblob',NULL,'oerbkrmvs_vnfgrtn_logo_bild','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0konfiguration_logo');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_localisedblob',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_localisedblob"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_logo',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_logo"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0metadatenkvs_datenaufnahme',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0thema_thema',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0thema_thema"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0thema_themagesetz',NULL,'thema','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0thema_thema');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinition',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_hinweisdefinition"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_localiseduri',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_localiseduri"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_grundbuchkreis',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_grundbuchkreis"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_haftungsausschuss',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_haftungsausschuss"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_legendeeintrag',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_gemeindemitoerebk',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_gemeindemitoerebk"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_maplayering',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_maplayering"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_themaref',NULL,'oerbkrmvs_v_gmndmtrebk_themen','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0konfiguration_gemeindemitoerebk');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'loclstn_v1_mltlngltext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_darstellungsdienst',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_darstellungsdienst"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisvorschrift',NULL,'vorschrift','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_webreferenz_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_webreferenz_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung',NULL,'grundlage','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0vorschriften_dokument',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0vorschriften_dokument"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_grundstueckarttxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_grundstueckarttxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedmtext","localisationch_v1_localisedmtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'atext','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_information',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_information"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualuri',NULL,'oerebkrm_v2_0amt_amt_amtimweb','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0vorschriften_dokument',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualmtext","localisationch_v1_multilingualmtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_datum_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_datum_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualuri',NULL,'oerbkrmfr_vstllngsdnst_verweiswms','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_geometrie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'loclstn_v1_ltlnglmtext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisvorschrift',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_hinweisvorschrift"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedtext","localisationch_v1_localisedtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL,'legende','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_legendeeintrag');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualblob',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_multilingualblob"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_localisedblob',NULL,'oerbkrm_v2_mltlnglblob_localisedblob','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0_multilingualblob');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinition',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0amt_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0thema_themagesetz',NULL,'gesetz','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'T_Type','ch.ehi.ili2db.types','["so_g_v_0180822nachfuehrngskrise_gemeinde"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.geomType','MULTIPOLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0metadatenkvs_datenaufnahme',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0metadatenkvs_datenaufnahme"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualuri',NULL,'oerbkrmvs_vrftn_dkment_textimweb','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_themaref',NULL,'oerbkrmfr_vhnwsdfntion_thema','ch.ehi.ili2db.foreignKey','oerbkrmfr_v2_0transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0thema_themagesetz',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0thema_themagesetz"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_themaref',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_themaref"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'geomtrychlv1_mltsrface_surfaces','ch.ehi.ili2db.foreignKey','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_localiseduri',NULL,'oerbkrm_v2__mltlngluri_localisedtext','ch.ehi.ili2db.foreignKey','oerebkrm_v2_0_multilingualuri');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.geomType','MULTIPOLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'T_Type','ch.ehi.ili2db.types','["so_g_v_0180822grundbuchkreise_grundbuchkreis"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualtext","localisationch_v1_multilingualtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_multilingualuri',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v2_0_multilingualuri"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_multisurface',NULL,'T_Type','ch.ehi.ili2db.types','["geometrychlv95_v1_multisurface"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_dokumenttyptxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v2_0konfiguration_dokumenttyptxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v2_0_artikelnummer_',NULL,'oerbkrmvs_vhm_thmgsetz_artikelnr','ch.ehi.ili2db.foreignKey','oerbkrmvs_v2_0thema_themagesetz');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0amt_amt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_information','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_rechtsstatustxt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_webreferenz_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0vorschriften_dokument','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_grundstueckarttxt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_multilingualuri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0thema_themagesetz','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('geometrychlv95_v1_multisurface','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_thema_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_eigentumsbeschraenkung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_darstellungsdienst','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_themaref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_localisedblob','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_datum_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_maplayering','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_gemeindemitoerebk','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_glossar','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_grundbuchkreis','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_multilingualblob','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_geometrie','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_logo','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_dokumenttyptxt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0konfiguration_haftungsausschuss','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinition','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisvorschrift','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_localiseduri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0thema_thema','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_grundlageverfeinerung','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_hinweisdefinitiondokument','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v2_0metadatenkvs_datenaufnahme','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v2_0transferstruktur_legendeeintrag','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v2_0_artikelnummer_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | Enumeration CHCantonCode adapted (FL and CH added)
!! 2020-04-24 | KOGIS | Constraint in Association Hierarchy in Model AdministrativeUnitsCH_V1 corrected (#CHE)

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2020-04-24" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == #CHE;
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRM_V2_0.ili','2.3','OeREBKRM_V2_0{ InternationalCodes_V1 LocalisationCH_V1}','INTERLIS 2.3;

/** Basisdefinitionen für das OEREB-Katasterrahmenmodell
 */
!!@ furtherInformation=https://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:vermessung@swisstopo.ch
MODEL OeREBKRM_V2_0 (de)
AT "https://models.geo.admin.ch/V_D/OeREB/"
VERSION "2020-07-02"  =
  IMPORTS LocalisationCH_V1,InternationalCodes_V1;

  DOMAIN

    /** Themenspezifische, maschinen-lesbare Art der Eigentumsbeschränkung
     */
    ArtEigentumsbeschraenkung = TEXT*40;

    /** Nummer eines Artikels in einer Rechtsvorschrift oder gesetzlichen Grundlage.
     */
    ArtikelNummer = TEXT*20;

    Datum = FORMAT INTERLIS.XMLDate "1848-1-1" .. "2100-12-31";

    DokumentTyp = (
      Rechtsvorschrift,
      GesetzlicheGrundlage,
      Hinweis
    );

    /** gem. DM01 der AV
     */
    GrundstueckArt = (
      Liegenschaft,
      SelbstRecht(
        Baurecht,
        Quellenrecht,
        Konzessionsrecht,
        weitere
      ),
      Bergwerk
    );

    /** Wertebereich für Objektidentifikatoren. Der Wert soll mit einem gültigen Internet Domain-Name anfangen, z.B. "ch.admin.sr.720"
     */
    OEREBOID = OID TEXT;

    /** Werteliste zur Unterscheidung ob eine Eigentumsbeschränkung in Kraft ist oder nicht.
     */
    RechtsStatus = (
      /** Die Eigentumsbeschränkung ist in Kraft.
       */
      inKraft,
      AenderungMitVorwirkung,
      AenderungOhneVorwirkung
    );

    /** Code für ein Thema oder Sub-Thema.
     * Der Code wird nach folgendem Muster gebildet:
     * ch.{topic}
     * ch.{canton}.{topic}
     * fl.{topic}
     * ch.{bfsnr}.{topic}
     * Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {topic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.
     */
    Thema = TEXT*120;

    /** Unternehmensindentifikation (gemäss. Bundesgesetz über die Unternehmens-Identifikationsnummer SR 431.03) ohne Formatierung z.B. CHE116068369
     */
    UID = TEXT*12;

    /** Verweis auf ein Dokument im Web (z.B. eine HTML Seite oder ein PDF-Dokument)
     */
    WebReferenz = URI;
  STRUCTURE ArtikelNummer_ = value : MANDATORY ArtikelNummer; END ArtikelNummer_;
  STRUCTURE Datum_ = value : MANDATORY Datum; END Datum_;
  STRUCTURE Thema_ = value : MANDATORY Thema; END Thema_;
  STRUCTURE WebReferenz_ = value : MANDATORY WebReferenz; END WebReferenz_;

  STRUCTURE LocalisedBlob =
    Language : InternationalCodes_V1.LanguageCode_ISO639_1;
    Blob : MANDATORY BLACKBOX BINARY;
  END LocalisedBlob;

  STRUCTURE LocalisedUri =
    Language : InternationalCodes_V1.LanguageCode_ISO639_1;
    Text : MANDATORY URI;
  END LocalisedUri;

  STRUCTURE MultilingualBlob =
    LocalisedBlob : BAG {1..*} OF OeREBKRM_V2_0.LocalisedBlob;
    UNIQUE (LOCAL) LocalisedBlob:Language;
  END MultilingualBlob;

  STRUCTURE MultilingualUri =
    LocalisedText : BAG {1..*} OF OeREBKRM_V2_0.LocalisedUri;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualUri;

  /** Qualifzierter Verweis auf ein Thema oder Subthema.
   */
  STRUCTURE ThemaRef =
    Thema : MANDATORY Thema;
    SubThema : Thema;
  END ThemaRef;

  TOPIC Amt =
    OID AS OEREBOID;

    /** Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.
     */
    CLASS Amt =
      /** Name des Amtes z.B. "Amt für Gemeinden und Raumordnung des Kantons Bern".
       */
      Name : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".
       */
      AmtImWeb : OeREBKRM_V2_0.MultilingualUri;
      /** UID der organisatorischen Einheit
       */
      UID : OeREBKRM_V2_0.UID;
      Zeile1 : TEXT*80;
      Zeile2 : TEXT*80;
      Strasse : TEXT*100;
      Hausnr : TEXT*7;
      PLZ : TEXT*4;
      Ort : TEXT*60;
      UNIQUE UID;
    END Amt;

  END Amt;

END OeREBKRM_V2_0.
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMvs_V2_0.ili','2.3','OeREBKRMvs_V2_0{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V2_0}','INTERLIS 2.3;

/** Basisdefinition für Erlasse (Rechtsvorschriften, Hinweise auf Gesetzliche Grundlagen)
 */
!!@ furtherInformation=https://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:vermessung@swisstopo.ch
MODEL OeREBKRMvs_V2_0 (de)
AT "https://models.geo.admin.ch/V_D/OeREB/"
VERSION "2020-07-02"  =
  IMPORTS OeREBKRM_V2_0,CHAdminCodes_V1,LocalisationCH_V1;

  /** Dieses Teilmodell definiert die Struktur für die Erlasse im Allgemeinen.
   * OID als URIs damit der Verweis auf Grundlagenerlasse (z.B. Kantonale Gesetze auf Bundesgesetze) in einem anderen Behälter (da durch eine andere Stelle erfasst/nachgeführt) verweisen können.
   */
  TOPIC Vorschriften
  EXTENDS OeREBKRM_V2_0.Amt =
    OID AS OeREBKRM_V2_0.OEREBOID;

    /** Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)
     */
    CLASS Dokument =
      Typ : MANDATORY OeREBKRM_V2_0.DokumentTyp;
      /** Titel des Dokuments der im Auszug dargestellt werden soll
       */
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Abkürzung des Gesetzes; z.B. "RPG"
       */
      Abkuerzung : LocalisationCH_V1.MultilingualText;
      /** Offizielle Nummer des Gesetzes; z.B. "SR 700"
       */
      OffizielleNr : LocalisationCH_V1.MultilingualText;
      /** Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"
       */
      Kanton : CHAdminCodes_V1.CHCantonCode;
      /** Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"
       */
      Gemeinde : CHAdminCodes_V1.CHMunicipalityCode;
      /** Das Dokument als PDF-Datei
       */
      Dokument : OeREBKRM_V2_0.MultilingualBlob;
      /** Falls das Dokument nur eine bestimmte Gemeinde betrifft (z.B. Sicherheitszonenplan)
       */
      NurInGemeinde : CHAdminCodes_V1.CHMunicipalityCode;
      /** Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"
       */
      TextImWeb : OeREBKRM_V2_0.MultilingualUri;
      /** Status, ob dieses Element in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V2_0.RechtsStatus;
      /** Datum, ab dem dieses Dokument in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V2_0.Datum;
      /** Datum, an/ab dem dieses Dokument nicht mehr in Auszügen erscheint
       */
      publiziertBis : OeREBKRM_V2_0.Datum;
    END Dokument;

    ASSOCIATION ZustaendigeStelleDokument =
      ZustaendigeStelle (EXTERNAL) -- {1} OeREBKRM_V2_0.Amt.Amt;
      Dokument -<> {0..*} Dokument;
    END ZustaendigeStelleDokument;

  END Vorschriften;

END OeREBKRMvs_V2_0.
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMkvs_V2_0.ili','2.3','OeREBKRMkvs_V2_0{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V2_0 OeREBKRMvs_V2_0}','INTERLIS 2.3;

/** Zusatzstrukturen zur Verwendung innerhalb der Katasterorganisation des Kantons
 */
!!@ furtherInformation=https://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:vermessung@swisstopo.ch
MODEL OeREBKRMkvs_V2_0 (de)
AT "https://models.geo.admin.ch/V_D/OeREB/"
VERSION "2020-07-02"  =
  IMPORTS OeREBKRM_V2_0,LocalisationCH_V1,CHAdminCodes_V1,OeREBKRMvs_V2_0;

  TOPIC Konfiguration =

    /** Anzeigetexte für die Aufzählung DokumentTyp
     */
    CLASS DokumentTypTxt =
      Code : MANDATORY OeREBKRM_V2_0.DokumentTyp;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
    END DokumentTypTxt;

    CLASS GemeindeMitOeREBK =
      /** BFS-Nr. der Gemeinde
       */
      Gemeinde : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** In der Gemeinde freigeschaltete OeREB-Themen
       */
      Themen : BAG {0..*} OF OeREBKRM_V2_0.ThemaRef;
      /** Stand der Grundlagedaten (AV)
       */
      GrundlagedatenStand : INTERLIS.XMLDateTime;
      GrundlagedatenMetadaten : URI;
      /** z.B. "Untereinheit" oder "GB-Kreis"
       */
      BezeichnungUntereinheitGrundbuch : TEXT*80;
      UNIQUE Gemeinde;
    END GemeindeMitOeREBK;

    CLASS Glossar =
      /** Abkürzung
       */
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Beschreibung der Abkürzung
       */
      Inhalt : MANDATORY LocalisationCH_V1.MultilingualMText;
    END Glossar;

    CLASS GrundbuchKreis =
      Kanton : MANDATORY CHAdminCodes_V1.CHCantonCode;
      Gemeinde : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** NBIdent gem. AV-Daten
       */
      NBIdent : MANDATORY TEXT*12;
      /** Name des GB-Kreises
       */
      Name : MANDATORY TEXT*60;
      /** SubKreis gem. GB-Daten (eGRISDM/GBDBS)
       */
      SubKreis : TEXT*15;
      /** Los gem. GB-Daten (eGRISDM/GBDBS)
       */
      Los : TEXT*15;
    END GrundbuchKreis;

    /** Anzeigetexte für die Aufzählung GrundstueckArt
     */
    CLASS GrundstueckArtTxt =
      Code : MANDATORY OeREBKRM_V2_0.GrundstueckArt;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
    END GrundstueckArtTxt;

    CLASS Haftungsausschuss =
      /** Haftungsausschuss
       */
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      Inhalt : MANDATORY LocalisationCH_V1.MultilingualMText;
    END Haftungsausschuss;

    CLASS Information =
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Allgemeine Informationen, Eigentumsbeschränkungen im Grundbuch
       */
      Inhalt : MANDATORY LocalisationCH_V1.MultilingualMText;
      /** Ordnungszahl für die Sortierung im Auszug.
       */
      AuszugIndex : MANDATORY -1000 .. 1000;
    END Information;

    CLASS Logo =
      /** ch.plr, ch, ch.{kanton} oder ch.{bfsnr}
       */
      Code : MANDATORY TEXT*60;
      Bild : MANDATORY OeREBKRM_V2_0.MultilingualBlob;
      UNIQUE Code;
    END Logo;

    CLASS MapLayering =
      VerweisWMS : MANDATORY URI;
      LayerIndex : MANDATORY -1000 .. 1000;
      LayerDeckkraft : MANDATORY 0.000 .. 1.000;
    END MapLayering;

    /** Anzeigetexte für die Aufzählung RechtsStatus
     */
    CLASS RechtsStatusTxt =
      Code : MANDATORY OeREBKRM_V2_0.RechtsStatus;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      UNIQUE Code;
    END RechtsStatusTxt;

  END Konfiguration;

  /** Zum Zweck der Nachvollziehbarkeit müssen innerhalb der ÖREB-Katasterorganisation des Kantons Metadaten gem. diesem Teilmodell geführt werden.
   */
  TOPIC MetadatenKVS
  EXTENDS OeREBKRM_V2_0.Amt =

    /** Angaben zur Datenlieferung an die Katasterorganisation des Kantons.
     */
    CLASS DatenAufnahme =
      /** Zeitpunkt der Aufnahme oder der letzten Änderung der Daten
       */
      Datum : MANDATORY FORMAT INTERLIS.XMLDate "2010-1-1" .. "2050-12-31";
      /** BasketId oder Dateiname oder vollständiger WFS-Request.
       */
      DatensatzIdentifikation : MANDATORY TEXT;
    END DatenAufnahme;

    ASSOCIATION ZustaendigeStelleDatenAufnahme =
      ZustaendigeStelle (EXTERNAL) -- {1} OeREBKRM_V2_0.Amt.Amt;
      DatenAufnahme -<> {0..*} DatenAufnahme;
    END ZustaendigeStelleDatenAufnahme;

  END MetadatenKVS;

  TOPIC Thema =
    DEPENDS ON OeREBKRMvs_V2_0.Vorschriften;

    /** Anzeigetexte für die Aufzählung Thema
     */
    CLASS Thema =
      Code : MANDATORY OeREBKRM_V2_0.Thema;
      SubCode : OeREBKRM_V2_0.Thema;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Ordnungszahl für die Sortierung im Auszug. Bei Subthemen definiert die Ordnungszahl die Reihenfolge innerhalb des Themas.
       */
      AuszugIndex : MANDATORY -1000 .. 1000;
      UNIQUE WHERE NOT(DEFINED(SubCode)): Code;
      UNIQUE WHERE DEFINED(SubCode): Code,SubCode;
    END Thema;

    ASSOCIATION ThemaGesetz =
      Thema -- {0..*} Thema;
      Gesetz (EXTERNAL) -- {0..*} OeREBKRMvs_V2_0.Vorschriften.Dokument;
      /** Hinweis auf spezifische Artikel.
       */
      ArtikelNr : BAG {0..*} OF OeREBKRM_V2_0.ArtikelNummer_;
    END ThemaGesetz;

  END Thema;

END OeREBKRMkvs_V2_0.
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.ili','2.3','SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822{ GeometryCHLV95_V1 CHAdminCodes_V1}','INTERLIS 2.3;

/** !!------------------------------------------------------------------------------
 * !! Version    | wer | Änderung
 * !!------------------------------------------------------------------------------
 * !! 2015-08-22 | SZ  | Initialversion
 */
!!@ technicalContact=mailto:agi@bd.so.ch
MODEL SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822 (de)
AT "http://www.geo.so.ch/models/AGI"
VERSION "2018-08-22"  =
  IMPORTS GeometryCHLV95_V1,CHAdminCodes_V1;

  TOPIC Grundbuchkreise =
    OID AS INTERLIS.UUIDOID;

    /** Grundbuchkreisaufteilung inkl. Anschrift etc. der einzelnen Kreise
     */
    CLASS Grundbuchkreis =
      /** Name des Grundbuches
       */
      Name : MANDATORY TEXT*255;
      /** Art des Grundbuches
       */
      Art : MANDATORY TEXT*255;
      /** Nummerierungsbereich-Identifikator aus der amtlichen Vermessung
       */
      NBIdent : MANDATORY TEXT*12;
      /** Kantonale Nummer des Grundbuchkreises
       */
      Grundbuchkreisnummer : 1 .. 99;
      /** Ehemalige Gemeindenummer des Grundbuches (z.B. vor Gemeindefusion).
       */
      Grundbuchkreis_BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Perimeter des Grundbuchkreises
       */
      BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Perimeter des Grundbuchkreises
       */
      Perimeter : MANDATORY GeometryCHLV95_V1.MultiSurface;
      /** Amtschreiberei
       */
      Amtschreiberei : MANDATORY TEXT*255;
      /** Amt der Amtschreiberei
       */
      Amt : TEXT*255;
      /** Strassenname
       */
      Strasse : MANDATORY TEXT*255;
      /** Hausnummer
       */
      Hausnummer : TEXT*255;
      /** Postleitzahl
       */
      PLZ : MANDATORY 1000 .. 9999;
      /** Ortschaft
       */
      Ortschaft : MANDATORY TEXT*255;
      /** Telefonnummer
       */
      Telefon : MANDATORY TEXT*255;
      /** E-Mail-Adresse
       */
      Email : MANDATORY TEXT*255;
      /** Internetadresse
       */
      Web : MANDATORY INTERLIS.URI;
      /** Unternehmens-Identifikationsnummer
       */
      UID : TEXT*15;
    END Grundbuchkreis;

  END Grundbuchkreise;

  TOPIC Nachfuehrungskreise =
    OID AS INTERLIS.UUIDOID;

    /** Gemeinde mit zuständigem Nachführungsgeometer und Anschrift der Firma etc.
     */
    CLASS Gemeinde =
      /** Name der politischen Gemeinde
       */
      Gemeindename : MANDATORY TEXT*255;
      /** BFS-Nr. der politischen Gemeinde
       */
      BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Geometrie der politischen Gemeinde
       */
      Perimeter : MANDATORY GeometryCHLV95_V1.MultiSurface;
      /** Nachname des Nachführungsgeometers
       */
      NFG_Name : MANDATORY TEXT*255;
      /** Vorname des Nachführungsgeometers
       */
      NFG_Vorname : MANDATORY TEXT*255;
      /** Titel des Nachführungsgeometers (z.B. Dr.)
       */
      NFG_Titel : TEXT*255;
      /** Name der Firma
       */
      Firma : MANDATORY TEXT*255;
      /** Zusatzname der Firma
       */
      Firma_Zusatz : TEXT*255;
      /** Strassenname
       */
      Strasse : MANDATORY TEXT*255;
      /** Hausnummer
       */
      Hausnummer : TEXT*255;
      /** Postleitzahl
       */
      PLZ : MANDATORY 1000 .. 9990;
      /** Ortschaft
       */
      Ortschaft : MANDATORY TEXT*255;
      /** Telefonnummer
       */
      Telefon : MANDATORY TEXT*255;
      /** Internetadresse
       */
      Web : MANDATORY INTERLIS.URI;
      /** E-Mail-Adresse
       */
      Email : MANDATORY TEXT*255;
      /** Unternehmer-Identifikationsnummer
       */
      UID : TEXT*15;
    END Gemeinde;

  END Nachfuehrungskreise;

END SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2020-07-09 17:19:05.738');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMtrsfr_V2_0.ili','2.3','OeREBKRMtrsfr_V2_0{ GeometryCHLV95_V1 CHAdminCodes_V1 LocalisationCH_V1 GeometryCHLV03_V1 OeREBKRM_V2_0 OeREBKRMvs_V2_0}','INTERLIS 2.3;

/** Schnittstelle zwischen zuständiger Stelle für die Geobasisdaten und Katasterorganisation des Kantons.
 */
!!@ furtherInformation=https://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:vermessung@swisstopo.ch
MODEL OeREBKRMtrsfr_V2_0 (de)
AT "https://models.geo.admin.ch/V_D/OeREB/"
VERSION "2020-07-02"  =
  IMPORTS OeREBKRM_V2_0,OeREBKRMvs_V2_0,CHAdminCodes_V1,LocalisationCH_V1,GeometryCHLV03_V1,GeometryCHLV95_V1;

  /** Dieses Teilmodell definiert die Struktur der Daten, wie sie von der zuständigen Stelle für die Geobasisdaten an die Abgabestelle des ÖREB-Kataster-Auszugs geliefert werden müssen. Dieses Datenmodell definiert somit, welche Daten ein minimales Datenmodell enthalten muss, um als ÖREB-Kataster fähiges Datenmodell zu gelten.
   */
  TOPIC Transferstruktur
  EXTENDS OeREBKRMvs_V2_0.Vorschriften =

    /** Angaben zum Darstellungsdienst.
     */
    CLASS DarstellungsDienst =
      /** WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"
       */
      VerweisWMS : MANDATORY OeREBKRM_V2_0.MultilingualUri;
    END DarstellungsDienst;

    /** Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.
     */
    CLASS Eigentumsbeschraenkung =
      /** Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema
       */
      Thema : MANDATORY OeREBKRM_V2_0.Thema;
      /** z.B. Planungszonen innerhalb Nutzungsplanung
       */
      SubThema : OeREBKRM_V2_0.Thema;
      /** Status, ob diese Eigentumsbeschränkung in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V2_0.RechtsStatus;
      /** Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V2_0.Datum;
      /** Datum, an/ab dem diese Eigentumsbeschränkung nicht mehr in Auszügen erscheint
       */
      publiziertBis : OeREBKRM_V2_0.Datum;
    END Eigentumsbeschraenkung;

    /** Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.
     */
    CLASS Geometrie =
      /** Punktgeometrie
       */
      Punkt_LV95 : GeometryCHLV95_V1.Coord2;
      /** Linienförmige Geometrie
       */
      Linie_LV95 : GeometryCHLV95_V1.Line;
      /** Flächenförmige Geometrie
       */
      Flaeche_LV95 : GeometryCHLV95_V1.Surface;
      /** Status, ob diese Geometrie in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V2_0.RechtsStatus;
      /** Datum, ab dem diese Geometrie in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V2_0.Datum;
      /** Datum, an/ab dem diese Geometrie nicht mehr in Auszügen erscheint
       */
      publiziertBis : OeREBKRM_V2_0.Datum;
      /** Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705
       */
      MetadatenGeobasisdaten : URI;
      MANDATORY CONSTRAINT DEFINED(Punkt_LV95) OR DEFINED(Linie_LV95) OR DEFINED(Flaeche_LV95);
    END Geometrie;

    /** Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.
     */
    CLASS HinweisDefinition =
      /** Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.
       */
      Thema : OeREBKRM_V2_0.ThemaRef;
      /** Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".
       */
      Kanton : CHAdminCodes_V1.CHCantonCode;
      /** BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".
       */
      Gemeinde : CHAdminCodes_V1.CHMunicipalityCode;
    END HinweisDefinition;

    /** Ein Eintrag in der Planlegende.
     */
    CLASS LegendeEintrag =
      /** Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format
       */
      SymbolPunkt : BLACKBOX BINARY;
      SymbolLinie : BLACKBOX BINARY;
      SymbolFlaeche : BLACKBOX BINARY;
      /** Text des Legendeneintrages
       */
      LegendeText : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird
       */
      ArtCode : MANDATORY OeREBKRM_V2_0.ArtEigentumsbeschraenkung;
      /** Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird
       */
      ArtCodeliste : MANDATORY URI;
      /** Zu welchem ÖREB-Thema der Legendeneintrag gehört
       */
      Thema : MANDATORY OeREBKRM_V2_0.Thema;
      /** z.B. Planungszonen innerhalb Nutzungsplanung
       */
      SubThema : OeREBKRM_V2_0.Thema;
      MANDATORY CONSTRAINT DEFINED(SymbolPunkt) OR DEFINED(SymbolLinie) OR DEFINED(SymbolFlaeche);
    END LegendeEintrag;

    ASSOCIATION DarstellungsDienstEigentumsbeschraenkung =
      /** Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.
       */
      DarstellungsDienst -- {0..1} DarstellungsDienst;
      Eigentumsbeschraenkung -<> {1..*} Eigentumsbeschraenkung;
    END DarstellungsDienstEigentumsbeschraenkung;

    ASSOCIATION EigentumsbeschraenkungLegende =
      Eigentumsbeschraenkung -<> {0..*} Eigentumsbeschraenkung;
      Legende -- {1} LegendeEintrag;
    END EigentumsbeschraenkungLegende;

    ASSOCIATION GeometrieEigentumsbeschraenkung =
      /** Geometrie der Eigentumsbeschränkung, die Rechtswirkung hat (als Basis für den Verschnitt mit den Liegenschaften)
       */
      Geometrie -- {0..*} Geometrie;
      Eigentumsbeschraenkung -<#> {1} Eigentumsbeschraenkung;
    END GeometrieEigentumsbeschraenkung;

    ASSOCIATION GrundlageVerfeinerung =
      Grundlage (EXTERNAL) -- {0..*} Eigentumsbeschraenkung;
      Verfeinerung -- {0..*} Eigentumsbeschraenkung;
    END GrundlageVerfeinerung;

    ASSOCIATION HinweisDefinitionDokument =
      HinweisDefinition -- {0..*} HinweisDefinition;
      Dokument -- {1..*} OeREBKRMvs_V2_0.Vorschriften.Dokument;
    END HinweisDefinitionDokument;

    ASSOCIATION HinweisDefinitionZustaendigeStelle =
      HinweisDefinition -<> {0..*} HinweisDefinition;
      ZustaendigeStelle (EXTERNAL) -- {1} OeREBKRM_V2_0.Amt.Amt;
    END HinweisDefinitionZustaendigeStelle;

    ASSOCIATION HinweisVorschrift =
      Eigentumsbeschraenkung -- {0..*} Eigentumsbeschraenkung;
      /** Rechtsvorschrift/Hinweis zur Eigentumsbeschränkung
       */
      Vorschrift -- {1..*} OeREBKRMvs_V2_0.Vorschriften.Dokument;
    END HinweisVorschrift;

    ASSOCIATION LegendeDarstellungsdienst =
      Legende -- {0..*} LegendeEintrag;
      DarstellungsDienst -<#> {1} DarstellungsDienst;
    END LegendeDarstellungsdienst;

    ASSOCIATION ZustaendigeStelleEigentumsbeschraenkung =
      /** Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1
       */
      ZustaendigeStelle (EXTERNAL) -- {1} OeREBKRM_V2_0.Amt.Amt;
      Eigentumsbeschraenkung -<> {0..*} Eigentumsbeschraenkung;
    END ZustaendigeStelleEigentumsbeschraenkung;

    ASSOCIATION ZustaendigeStelleGeometrie =
      ZustaendigeStelle (EXTERNAL) -- {1} OeREBKRM_V2_0.Amt.Amt;
      Geometrie -<> {0..*} Geometrie;
    END ZustaendigeStelleGeometrie;

  END Transferstruktur;

END OeREBKRMtrsfr_V2_0.
','2020-07-09 17:19:05.738');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','disable');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','models/;http://models.geo.admin.ch;https://geo.so.ch/models');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.TidHandling','property');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.typeDiscriminator','always');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMkvs_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMkvs_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822','technicalContact','mailto:agi@bd.so.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','mailto:models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
