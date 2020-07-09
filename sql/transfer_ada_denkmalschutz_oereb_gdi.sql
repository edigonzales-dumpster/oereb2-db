CREATE SCHEMA IF NOT EXISTS ada_denkmalschutz_oereb;
CREATE SEQUENCE ada_denkmalschutz_oereb.t_ili2db_seq MINVALUE 1000000000000;;
-- Localisation_V1.LocalisedText
CREATE TABLE ada_denkmalschutz_oereb.localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,multilingualtext_localisedtext bigint NULL
)
;
CREATE INDEX localisedtext_t_basket_idx ON ada_denkmalschutz_oereb.localisedtext ( t_basket );
CREATE INDEX localisedtext_t_datasetname_idx ON ada_denkmalschutz_oereb.localisedtext ( t_datasetname );
CREATE INDEX localisedtext_multilingualtext_lclsdtext_idx ON ada_denkmalschutz_oereb.localisedtext ( multilingualtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE ada_denkmalschutz_oereb.multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX multilingualtext_t_basket_idx ON ada_denkmalschutz_oereb.multilingualtext ( t_basket );
CREATE INDEX multilingualtext_t_datasetname_idx ON ada_denkmalschutz_oereb.multilingualtext ( t_datasetname );
-- OeREBKRM_V2_0.LocalisedBlob
CREATE TABLE ada_denkmalschutz_oereb.localisedblob (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,ablob bytea NOT NULL
  ,multilingualblob_localisedblob bigint NULL
)
;
CREATE INDEX localisedblob_t_basket_idx ON ada_denkmalschutz_oereb.localisedblob ( t_basket );
CREATE INDEX localisedblob_t_datasetname_idx ON ada_denkmalschutz_oereb.localisedblob ( t_datasetname );
CREATE INDEX localisedblob_multilingualblob_lclsdblob_idx ON ada_denkmalschutz_oereb.localisedblob ( multilingualblob_localisedblob );
-- OeREBKRM_V2_0.LocalisedUri
CREATE TABLE ada_denkmalschutz_oereb.localiseduri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext varchar(1023) NOT NULL
  ,multilingualuri_localisedtext bigint NULL
)
;
CREATE INDEX localiseduri_t_basket_idx ON ada_denkmalschutz_oereb.localiseduri ( t_basket );
CREATE INDEX localiseduri_t_datasetname_idx ON ada_denkmalschutz_oereb.localiseduri ( t_datasetname );
CREATE INDEX localiseduri_multilingualuri_loclsdtext_idx ON ada_denkmalschutz_oereb.localiseduri ( multilingualuri_localisedtext );
-- OeREBKRM_V2_0.MultilingualBlob
CREATE TABLE ada_denkmalschutz_oereb.multilingualblob (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,vorschriften_dokument_dokument bigint NULL
)
;
CREATE INDEX multilingualblob_t_basket_idx ON ada_denkmalschutz_oereb.multilingualblob ( t_basket );
CREATE INDEX multilingualblob_t_datasetname_idx ON ada_denkmalschutz_oereb.multilingualblob ( t_datasetname );
CREATE INDEX multilingualblob_vorschriften_dokmnt_dkment_idx ON ada_denkmalschutz_oereb.multilingualblob ( vorschriften_dokument_dokument );
COMMENT ON COLUMN ada_denkmalschutz_oereb.multilingualblob.vorschriften_dokument_dokument IS 'Das Dokument als PDF-Datei';
-- OeREBKRM_V2_0.MultilingualUri
CREATE TABLE ada_denkmalschutz_oereb.multilingualuri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,amt_amt_amtimweb bigint NULL
  ,vorschriften_dokument_textimweb bigint NULL
  ,transfrstrkstllngsdnst_verweiswms bigint NULL
)
;
CREATE INDEX multilingualuri_t_basket_idx ON ada_denkmalschutz_oereb.multilingualuri ( t_basket );
CREATE INDEX multilingualuri_t_datasetname_idx ON ada_denkmalschutz_oereb.multilingualuri ( t_datasetname );
CREATE INDEX multilingualuri_amt_amt_amtimweb_idx ON ada_denkmalschutz_oereb.multilingualuri ( amt_amt_amtimweb );
CREATE INDEX multilingualuri_vorschriften_dkmnt_txtmweb_idx ON ada_denkmalschutz_oereb.multilingualuri ( vorschriften_dokument_textimweb );
CREATE INDEX multilingualuri_transfrstrkstsdnst_vrwswms_idx ON ada_denkmalschutz_oereb.multilingualuri ( transfrstrkstllngsdnst_verweiswms );
COMMENT ON COLUMN ada_denkmalschutz_oereb.multilingualuri.amt_amt_amtimweb IS 'Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".';
COMMENT ON COLUMN ada_denkmalschutz_oereb.multilingualuri.vorschriften_dokument_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
COMMENT ON COLUMN ada_denkmalschutz_oereb.multilingualuri.transfrstrkstllngsdnst_verweiswms IS 'WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
-- OeREBKRM_V2_0.ThemaRef
CREATE TABLE ada_denkmalschutz_oereb.themaref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,thema varchar(120) NOT NULL
  ,subthema varchar(120) NULL
  ,transfrstrkhnwsdfntion_thema bigint NULL
)
;
CREATE INDEX themaref_t_basket_idx ON ada_denkmalschutz_oereb.themaref ( t_basket );
CREATE INDEX themaref_t_datasetname_idx ON ada_denkmalschutz_oereb.themaref ( t_datasetname );
CREATE INDEX themaref_transfrstrkhnwsdfntn_thema_idx ON ada_denkmalschutz_oereb.themaref ( transfrstrkhnwsdfntion_thema );
COMMENT ON TABLE ada_denkmalschutz_oereb.themaref IS 'Qualifzierter Verweis auf ein Thema oder Subthema.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.themaref.transfrstrkhnwsdfntion_thema IS 'Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.';
-- OeREBKRM_V2_0.Amt.Amt
CREATE TABLE ada_denkmalschutz_oereb.amt_amt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX amt_amt_t_basket_idx ON ada_denkmalschutz_oereb.amt_amt ( t_basket );
CREATE INDEX amt_amt_t_datasetname_idx ON ada_denkmalschutz_oereb.amt_amt ( t_datasetname );
COMMENT ON TABLE ada_denkmalschutz_oereb.amt_amt IS 'Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.amt_amt.auid IS 'UID der organisatorischen Einheit';
-- OeREBKRMvs_V2_0.Vorschriften.Dokument
CREATE TABLE ada_denkmalschutz_oereb.vorschriften_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX vorschriften_dokument_t_basket_idx ON ada_denkmalschutz_oereb.vorschriften_dokument ( t_basket );
CREATE INDEX vorschriften_dokument_t_datasetname_idx ON ada_denkmalschutz_oereb.vorschriften_dokument ( t_datasetname );
CREATE INDEX vorschriften_dokument_zustaendigestelle_idx ON ada_denkmalschutz_oereb.vorschriften_dokument ( zustaendigestelle );
COMMENT ON TABLE ada_denkmalschutz_oereb.vorschriften_dokument IS 'Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.kanton IS 'Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.gemeinde IS 'Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.nuringemeinde IS 'Falls das Dokument nur eine bestimmte Gemeinde betrifft (z.B. Sicherheitszonenplan)';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.publiziertab IS 'Datum, ab dem dieses Dokument in Auszügen erscheint';
COMMENT ON COLUMN ada_denkmalschutz_oereb.vorschriften_dokument.publiziertbis IS 'Datum, an/ab dem dieses Dokument nicht mehr in Auszügen erscheint';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
)
;
CREATE INDEX transfrstrktrdrstllngsdnst_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst ( t_basket );
CREATE INDEX transfrstrktrdrstllngsdnst_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst ( t_datasetname );
COMMENT ON TABLE ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst IS 'Angaben zum Darstellungsdienst.';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX transfrstrktrtmsbschrnkung_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ( t_basket );
CREATE INDEX transfrstrktrtmsbschrnkung_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ( t_datasetname );
CREATE INDEX transfrstrktrtmsbschrnkung_darstellungsdienst_idx ON ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ( darstellungsdienst );
CREATE INDEX transfrstrktrtmsbschrnkung_legende_idx ON ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ( legende );
CREATE INDEX transfrstrktrtmsbschrnkung_zustaendigestelle_idx ON ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ( zustaendigestelle );
COMMENT ON TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung IS 'Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.thema IS 'Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.rechtsstatus IS 'Status, ob diese Eigentumsbeschränkung in Kraft ist';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.publiziertab IS 'Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.publiziertbis IS 'Datum, an/ab dem diese Eigentumsbeschränkung nicht mehr in Auszügen erscheint';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.darstellungsdienst IS 'Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung.zustaendigestelle IS 'Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_geometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX transferstruktur_geometrie_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie ( t_basket );
CREATE INDEX transferstruktur_geometrie_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie ( t_datasetname );
CREATE INDEX transferstruktur_geometrie_punkt_lv95_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie USING GIST ( punkt_lv95 );
CREATE INDEX transferstruktur_geometrie_linie_lv95_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie USING GIST ( linie_lv95 );
CREATE INDEX transferstruktur_geometrie_flaeche_lv95_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie USING GIST ( flaeche_lv95 );
CREATE INDEX transferstruktur_geometrie_eigentumsbeschraenkung_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie ( eigentumsbeschraenkung );
CREATE INDEX transferstruktur_geometrie_zustaendigestelle_idx ON ada_denkmalschutz_oereb.transferstruktur_geometrie ( zustaendigestelle );
COMMENT ON TABLE ada_denkmalschutz_oereb.transferstruktur_geometrie IS 'Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.punkt_lv95 IS 'Punktgeometrie';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.linie_lv95 IS 'Linienförmige Geometrie';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.flaeche_lv95 IS 'Flächenförmige Geometrie';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.rechtsstatus IS 'Status, ob diese Geometrie in Kraft ist';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.publiziertab IS 'Datum, ab dem diese Geometrie in Auszügen erscheint';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.publiziertbis IS 'Datum, an/ab dem diese Geometrie nicht mehr in Auszügen erscheint';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_geometrie.metadatengeobasisdaten IS 'Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX transferstrktr_hnwsdfntion_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ( t_basket );
CREATE INDEX transferstrktr_hnwsdfntion_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ( t_datasetname );
CREATE INDEX transferstrktr_hnwsdfntion_zustaendigestelle_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ( zustaendigestelle );
COMMENT ON TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition IS 'Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition.kanton IS 'Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition.gemeinde IS 'BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_legendeeintrag (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX transferstruktur_lgndntrag_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_legendeeintrag ( t_basket );
CREATE INDEX transferstruktur_lgndntrag_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_legendeeintrag ( t_datasetname );
CREATE INDEX transferstruktur_lgndntrag_darstellungsdienst_idx ON ada_denkmalschutz_oereb.transferstruktur_legendeeintrag ( darstellungsdienst );
COMMENT ON TABLE ada_denkmalschutz_oereb.transferstruktur_legendeeintrag IS 'Ein Eintrag in der Planlegende.';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_legendeeintrag.symbolpunkt IS 'Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_legendeeintrag.artcode IS 'Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_legendeeintrag.artcodeliste IS 'Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_legendeeintrag.thema IS 'Zu welchem ÖREB-Thema der Legendeneintrag gehört';
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_legendeeintrag.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
-- OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,grundlage bigint NOT NULL
  ,verfeinerung bigint NOT NULL
)
;
CREATE INDEX transfrstrktrrndlgvrfnrung_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ( t_basket );
CREATE INDEX transfrstrktrrndlgvrfnrung_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ( t_datasetname );
CREATE INDEX transfrstrktrrndlgvrfnrung_grundlage_idx ON ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ( grundlage );
CREATE INDEX transfrstrktrrndlgvrfnrung_verfeinerung_idx ON ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ( verfeinerung );
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,hinweisdefinition bigint NOT NULL
  ,dokument bigint NOT NULL
)
;
CREATE INDEX transfrstrktrwsdfntndkment_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ( t_basket );
CREATE INDEX transfrstrktrwsdfntndkment_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ( t_datasetname );
CREATE INDEX transfrstrktrwsdfntndkment_hinweisdefinition_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ( hinweisdefinition );
CREATE INDEX transfrstrktrwsdfntndkment_dokument_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ( dokument );
-- OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift
CREATE TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('ada_denkmalschutz_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,vorschrift bigint NOT NULL
)
;
CREATE INDEX transfrstrktrhnwsvrschrift_t_basket_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ( t_basket );
CREATE INDEX transfrstrktrhnwsvrschrift_t_datasetname_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ( t_datasetname );
CREATE INDEX transfrstrktrhnwsvrschrift_eigentumsbeschraenkung_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ( eigentumsbeschraenkung );
CREATE INDEX transfrstrktrhnwsvrschrift_vorschrift_idx ON ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ( vorschrift );
COMMENT ON COLUMN ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift.vorschrift IS 'Rechtsvorschrift/Hinweis zur Eigentumsbeschränkung';
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON ada_denkmalschutz_oereb.t_ili2db_basket ( dataset );
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON ada_denkmalschutz_oereb.t_ili2db_import ( dataset );
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON ada_denkmalschutz_oereb.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON ada_denkmalschutz_oereb.t_ili2db_import_basket ( basket );
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE ada_denkmalschutz_oereb.dokumenttyp (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.languagecode_iso639_1 (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.chcantoncode (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.rechtsstatus (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE ada_denkmalschutz_oereb.localisedtext ADD CONSTRAINT localisedtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.localisedtext ADD CONSTRAINT localisedtext_multilingualtext_lclsdtext_fkey FOREIGN KEY ( multilingualtext_localisedtext ) REFERENCES ada_denkmalschutz_oereb.multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualtext ADD CONSTRAINT multilingualtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.localisedblob ADD CONSTRAINT localisedblob_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.localisedblob ADD CONSTRAINT localisedblob_multilingualblob_lclsdblob_fkey FOREIGN KEY ( multilingualblob_localisedblob ) REFERENCES ada_denkmalschutz_oereb.multilingualblob DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.localiseduri ADD CONSTRAINT localiseduri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.localiseduri ADD CONSTRAINT localiseduri_multilingualuri_loclsdtext_fkey FOREIGN KEY ( multilingualuri_localisedtext ) REFERENCES ada_denkmalschutz_oereb.multilingualuri DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualblob ADD CONSTRAINT multilingualblob_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualblob ADD CONSTRAINT multilingualblob_vorschriften_dokmnt_dkment_fkey FOREIGN KEY ( vorschriften_dokument_dokument ) REFERENCES ada_denkmalschutz_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualuri ADD CONSTRAINT multilingualuri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualuri ADD CONSTRAINT multilingualuri_amt_amt_amtimweb_fkey FOREIGN KEY ( amt_amt_amtimweb ) REFERENCES ada_denkmalschutz_oereb.amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualuri ADD CONSTRAINT multilingualuri_vorschriften_dkmnt_txtmweb_fkey FOREIGN KEY ( vorschriften_dokument_textimweb ) REFERENCES ada_denkmalschutz_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.multilingualuri ADD CONSTRAINT multilingualuri_transfrstrkstsdnst_vrwswms_fkey FOREIGN KEY ( transfrstrkstllngsdnst_verweiswms ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.themaref ADD CONSTRAINT themaref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.themaref ADD CONSTRAINT themaref_transfrstrkhnwsdfntn_thema_fkey FOREIGN KEY ( transfrstrkhnwsdfntion_thema ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.amt_amt ADD CONSTRAINT amt_amt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE ada_denkmalschutz_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_nuringemeinde_check CHECK( nuringemeinde BETWEEN 1 AND 9999);
ALTER TABLE ada_denkmalschutz_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES ada_denkmalschutz_oereb.amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst ADD CONSTRAINT transfrstrktrdrstllngsdnst_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_legende_fkey FOREIGN KEY ( legende ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_legendeeintrag DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES ada_denkmalschutz_oereb.amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES ada_denkmalschutz_oereb.amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transferstrktr_hnwsdfntion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transfrstrktr_hnwsdfntion_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transferstrktr_hnwsdfntion_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES ada_denkmalschutz_oereb.amt_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_legendeeintrag ADD CONSTRAINT transferstruktur_lgndntrag_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_legendeeintrag ADD CONSTRAINT transferstruktur_lgndntrag_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_grundlage_fkey FOREIGN KEY ( grundlage ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_verfeinerung_fkey FOREIGN KEY ( verfeinerung ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_hinweisdefinition_fkey FOREIGN KEY ( hinweisdefinition ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES ada_denkmalschutz_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES ada_denkmalschutz_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_vorschrift_fkey FOREIGN KEY ( vorschrift ) REFERENCES ada_denkmalschutz_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON ada_denkmalschutz_oereb.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE ada_denkmalschutz_oereb.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ada_denkmalschutz_oereb.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES ada_denkmalschutz_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON ada_denkmalschutz_oereb.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','multilingualtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.ThemaRef','themaref');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende','transferstruktur_eigentumsbeschraenkunglegende');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('InternationalCodes_V1.LanguageCode_ISO639_1','languagecode_iso639_1');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument','vorschriften_zustaendigestelledokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift','transferstruktur_hinweisvorschrift');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition','transferstruktur_hinweisdefinition');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisedtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument','transferstruktur_hinweisdefinitiondokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst','transferstruktur_legendedarstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','transferstruktur_zustaendigestelleeigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung','transferstruktur_geometrieeigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.MultilingualBlob','multilingualblob');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.LocalisedUri','localiseduri');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.RechtsStatus','rechtsstatus');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung','transferstruktur_grundlageverfeinerung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.LocalisedBlob','localisedblob');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie','transferstruktur_geometrie');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.MultilingualUri','multilingualuri');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','transferstruktur_darstellungsdiensteigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.DokumentTyp','dokumenttyp');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V2_0.Amt.Amt','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag','transferstruktur_legendeeintrag');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CHAdminCodes_V1.CHCantonCode','chcantoncode');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle','transferstruktur_hinweisdefinitionzustaendigestelle');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie','transferstruktur_zustaendigestellegeometrie');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.TextImWeb','vorschriften_dokument_textimweb','multilingualuri','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolLinie','symbollinie','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung.ZustaendigeStelle','zustaendigestelle','transferstruktur_eigentumsbeschraenkung','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.publiziertBis','publiziertbis','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.NurInGemeinde','nuringemeinde','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie.ZustaendigeStelle','zustaendigestelle','transferstruktur_geometrie','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.ThemaRef.SubThema','subthema','themaref',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Ort','ort','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SubThema','subthema','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle.ZustaendigeStelle','zustaendigestelle','transferstruktur_hinweisdefinition','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Kanton','kanton','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Kanton','kanton','transferstruktur_hinweisdefinition',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument.HinweisDefinition','hinweisdefinition','transferstruktur_hinweisdefinitiondokument','transferstruktur_hinweisdefinition');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Rechtsstatus','rechtsstatus','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Flaeche_LV95','flaeche_lv95','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung.Verfeinerung','verfeinerung','transferstruktur_grundlageverfeinerung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolPunkt','symbolpunkt','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedUri.Text','atext','localiseduri',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Linie_LV95','linie_lv95','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.Thema','thema','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument.Dokument','dokument','transferstruktur_hinweisdefinitiondokument','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Name','aname','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.publiziertBis','publiziertbis','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.OffizielleNr','offiziellenr','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.Rechtsstatus','rechtsstatus','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.UID','auid','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Titel','titel','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisedtext',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.AmtImWeb','amt_amt_amtimweb','multilingualuri','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedUri.Language','alanguage','localiseduri',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument.ZustaendigeStelle','zustaendigestelle','vorschriften_dokument','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.ArtCode','artcode','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.MetadatenGeobasisdaten','metadatengeobasisdaten','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Zeile2','zeile2','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Strasse','strasse','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Dokument','vorschriften_dokument_dokument','multilingualblob','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.publiziertAb','publiziertab','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedBlob.Language','alanguage','localisedblob',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.SymbolFlaeche','symbolflaeche','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Gemeinde','gemeinde','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','multilingualtext_localisedtext','localisedtext','multilingualtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.publiziertAb','publiziertab','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.MultilingualBlob.LocalisedBlob','multilingualblob_localisedblob','localisedblob','multilingualblob');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Hausnr','hausnr','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.publiziertAb','publiziertab','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst.VerweisWMS','transfrstrkstllngsdnst_verweiswms','multilingualuri','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung.DarstellungsDienst','darstellungsdienst','transferstruktur_eigentumsbeschraenkung','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.Thema','thema','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung.Grundlage','grundlage','transferstruktur_grundlageverfeinerung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Gemeinde','gemeinde','transferstruktur_hinweisdefinition',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.ThemaRef.Thema','thema','themaref',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift','transferstruktur_hinweisvorschrift','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.LegendeText','legendetext','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.MultilingualUri.LocalisedText','multilingualuri_localisedtext','localiseduri','multilingualuri');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung.Eigentumsbeschraenkung','eigentumsbeschraenkung','transferstruktur_geometrie','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst.DarstellungsDienst','darstellungsdienst','transferstruktur_legendeeintrag','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.publiziertBis','publiziertbis','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Typ','typ','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.PLZ','plz','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift.Eigentumsbeschraenkung','eigentumsbeschraenkung','transferstruktur_hinweisvorschrift','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Abkuerzung','abkuerzung','vorschriften_dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Rechtsstatus','rechtsstatus','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung.SubThema','subthema','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie.Punkt_LV95','punkt_lv95','transferstruktur_geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.LocalisedBlob.Blob','ablob','localisedblob',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende.Legende','legende','transferstruktur_eigentumsbeschraenkung','transferstruktur_legendeeintrag');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisedtext',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition.Thema','transfrstrkhnwsdfntion_thema','themaref','transferstruktur_hinweisdefinition');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.ArtCodeliste','artcodeliste','transferstruktur_legendeeintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V2_0.Amt.Amt.Zeile1','zeile1','amt_amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.ThemaRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.OffizielleNr','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.MultilingualBlob','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.LocalisedUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Amt.Amt.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument.Abkuerzung','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.LocalisedBlob','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag.LegendeText','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.MultilingualUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V2_0.Amt.Amt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.LocalisedUri',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienst',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionDokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.ThemaRef',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V2_0.Vorschriften.ZustaendigeStelleDokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Eigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeEintrag',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinitionZustaendigeStelle',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.ZustaendigeStelleGeometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.Geometrie',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisVorschrift',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.MultilingualUri',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.Amt.Amt',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.EigentumsbeschraenkungLegende',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.HinweisDefinition',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.LegendeDarstellungsdienst',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.LocalisedBlob',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GeometrieEigentumsbeschraenkung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V2_0.Transferstruktur.GrundlageVerfeinerung',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V2_0.MultilingualBlob',NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V2_0.Vorschriften.Dokument',NULL);
INSERT INTO ada_denkmalschutz_oereb.dokumenttyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Rechtsvorschrift',0,'Rechtsvorschrift',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.dokumenttyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GesetzlicheGrundlage',1,'GesetzlicheGrundlage',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.dokumenttyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Hinweis',2,'Hinweis',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'de',0,'de',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fr',1,'fr',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'it',2,'it',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rm',3,'rm',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'en',4,'en',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'aa',5,'aa',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ab',6,'ab',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'af',7,'af',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'am',8,'am',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ar',9,'ar',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'as',10,'as',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ay',11,'ay',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'az',12,'az',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ba',13,'ba',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'be',14,'be',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bg',15,'bg',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bh',16,'bh',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bi',17,'bi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bn',18,'bn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bo',19,'bo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'br',20,'br',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ca',21,'ca',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'co',22,'co',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cs',23,'cs',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cy',24,'cy',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'da',25,'da',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'dz',26,'dz',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'el',27,'el',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eo',28,'eo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'es',29,'es',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'et',30,'et',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eu',31,'eu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fa',32,'fa',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fi',33,'fi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fj',34,'fj',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fo',35,'fo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fy',36,'fy',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ga',37,'ga',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gd',38,'gd',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gl',39,'gl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gn',40,'gn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gu',41,'gu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ha',42,'ha',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'he',43,'he',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hi',44,'hi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hr',45,'hr',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hu',46,'hu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hy',47,'hy',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ia',48,'ia',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'id',49,'id',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ie',50,'ie',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ik',51,'ik',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'is',52,'is',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'iu',53,'iu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',54,'ja',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'jw',55,'jw',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ka',56,'ka',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kk',57,'kk',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kl',58,'kl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'km',59,'km',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kn',60,'kn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ko',61,'ko',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ks',62,'ks',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ku',63,'ku',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ky',64,'ky',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'la',65,'la',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ln',66,'ln',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lo',67,'lo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lt',68,'lt',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lv',69,'lv',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mg',70,'mg',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mi',71,'mi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mk',72,'mk',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ml',73,'ml',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mn',74,'mn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mo',75,'mo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mr',76,'mr',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ms',77,'ms',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mt',78,'mt',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'my',79,'my',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'na',80,'na',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ne',81,'ne',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nl',82,'nl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'no',83,'no',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'oc',84,'oc',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'om',85,'om',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'or',86,'or',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pa',87,'pa',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pl',88,'pl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ps',89,'ps',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pt',90,'pt',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'qu',91,'qu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rn',92,'rn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ro',93,'ro',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ru',94,'ru',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rw',95,'rw',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sa',96,'sa',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sd',97,'sd',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sg',98,'sg',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sh',99,'sh',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'si',100,'si',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sk',101,'sk',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sl',102,'sl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sm',103,'sm',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sn',104,'sn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'so',105,'so',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sq',106,'sq',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sr',107,'sr',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ss',108,'ss',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'st',109,'st',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'su',110,'su',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sv',111,'sv',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sw',112,'sw',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ta',113,'ta',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'te',114,'te',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tg',115,'tg',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'th',116,'th',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ti',117,'ti',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tk',118,'tk',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tl',119,'tl',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tn',120,'tn',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'to',121,'to',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tr',122,'tr',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ts',123,'ts',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tt',124,'tt',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tw',125,'tw',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ug',126,'ug',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uk',127,'uk',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ur',128,'ur',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uz',129,'uz',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vi',130,'vi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vo',131,'vo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'wo',132,'wo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'xh',133,'xh',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yi',134,'yi',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yo',135,'yo',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'za',136,'za',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zh',137,'zh',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zu',138,'zu',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZH',0,'ZH',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BE',1,'BE',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'LU',2,'LU',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'UR',3,'UR',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SZ',4,'SZ',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'OW',5,'OW',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NW',6,'NW',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GL',7,'GL',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZG',8,'ZG',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FR',9,'FR',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SO',10,'SO',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BS',11,'BS',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BL',12,'BL',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SH',13,'SH',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AR',14,'AR',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AI',15,'AI',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SG',16,'SG',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GR',17,'GR',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AG',18,'AG',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TG',19,'TG',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TI',20,'TI',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VD',21,'VD',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VS',22,'VS',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NE',23,'NE',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GE',24,'GE',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'JU',25,'JU',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FL',26,'FL',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'CH',27,'CH',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.rechtsstatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'inKraft',0,'inKraft',FALSE,'Die Eigentumsbeschränkung ist in Kraft.');
INSERT INTO ada_denkmalschutz_oereb.rechtsstatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AenderungMitVorwirkung',1,'AenderungMitVorwirkung',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.rechtsstatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AenderungOhneVorwirkung',2,'AenderungOhneVorwirkung',FALSE,NULL);
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localiseduri',NULL,'multilingualuri_localisedtext','ch.ehi.ili2db.foreignKey','multilingualuri');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung',NULL,'legende','ch.ehi.ili2db.foreignKey','transferstruktur_legendeeintrag');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualuri',NULL,'amt_amt_amtimweb','ch.ehi.ili2db.foreignKey','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisvorschrift',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'multilingualtext_localisedtext','ch.ehi.ili2db.foreignKey','multilingualtext');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument',NULL,'hinweisdefinition','ch.ehi.ili2db.foreignKey','transferstruktur_hinweisdefinition');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualuri',NULL,'transfrstrkstllngsdnst_verweiswms','ch.ehi.ili2db.foreignKey','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinition',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung',NULL,'grundlage','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_legendeeintrag',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','transferstruktur_darstellungsdienst');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument',NULL,'dokument','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('themaref',NULL,'transfrstrkhnwsdfntion_thema','ch.ehi.ili2db.foreignKey','transferstruktur_hinweisdefinition');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedblob',NULL,'multilingualblob_localisedblob','ch.ehi.ili2db.foreignKey','multilingualblob');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_localisedtext","localisedtext"]');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_multilingualtext","multilingualtext"]');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung',NULL,'verfeinerung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualuri',NULL,'vorschriften_dokument_textimweb','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.geomType','POINT');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualblob',NULL,'vorschriften_dokument_dokument','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_dokument',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','amt_amt');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisvorschrift',NULL,'vorschrift','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localiseduri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualblob','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rechtsstatus','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualuri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_darstellungsdienst','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_geometrie','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('dokumenttyp','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisedblob','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('languagecode_iso639_1','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('themaref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisdefinition','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('amt_amt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisvorschrift','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('chcantoncode','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('vorschriften_dokument','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_legendeeintrag','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

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

','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRM_V2_0.ili','2.3','OeREBKRM_V2_0{ InternationalCodes_V1 LocalisationCH_V1}','INTERLIS 2.3;

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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

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

','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMvs_V2_0.ili','2.3','OeREBKRMvs_V2_0{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V2_0}','INTERLIS 2.3;

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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMtrsfr_V2_0.ili','2.3','OeREBKRMtrsfr_V2_0{ GeometryCHLV95_V1 CHAdminCodes_V1 LocalisationCH_V1 GeometryCHLV03_V1 OeREBKRM_V2_0 OeREBKRMvs_V2_0}','INTERLIS 2.3;

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
','2020-07-09 17:19:09.797');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','models/;http://models.geo.admin.ch;https://geo.so.ch/models');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createDatasetCols','addDatasetCol');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','mailto:models@geo.admin.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V2_0','furtherInformation','https://www.cadastre.ch/oereb-public');
INSERT INTO ada_denkmalschutz_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V2_0','technicalContact','mailto:vermessung@swisstopo.ch');
COMMENT ON SCHEMA ada_denkmalschutz_oereb IS 'Schema für den Datenumbau ins OEREB-Transferschema';
GRANT USAGE ON SCHEMA ada_denkmalschutz_oereb TO :PG_WRITE_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ada_denkmalschutz_oereb TO :PG_WRITE_USER;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA ada_denkmalschutz_oereb TO :PG_WRITE_USER;
