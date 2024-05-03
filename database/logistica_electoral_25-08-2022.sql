
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: le_ambito_elecciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_ambito_elecciones (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_ambito_elecciones OWNER TO postgres;

--
-- Name: TABLE le_ambito_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_ambito_elecciones IS 'Ambito de elecciones';


--
-- Name: COLUMN le_ambito_elecciones.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.id IS 'Auto generado';


--
-- Name: COLUMN le_ambito_elecciones.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_ambito_elecciones.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.nombre IS 'Nombre del ambito electoral';


--
-- Name: COLUMN le_ambito_elecciones.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.descripcion IS 'Descripcion del ambito electoral';


--
-- Name: COLUMN le_ambito_elecciones.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_ambito_elecciones.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.created_at IS 'Generado automaticamente';


--
-- Name: COLUMN le_ambito_elecciones.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_ambito_elecciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_ambito_elecciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_ambito_elecciones_id_seq OWNER TO postgres;

--
-- Name: le_ambito_elecciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_ambito_elecciones_id_seq OWNED BY public.le_ambito_elecciones.id;


--
-- Name: le_caracteristicas_generales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_caracteristicas_generales (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_det_material_electoral integer NOT NULL,
    requisitos_caracteristicas_tecnicas character varying NOT NULL,
    condiciones_complementarias character varying,
    embalaje_forma_entrega character varying,
    tratamiento_material_defectuoso character varying,
    otras_condiciones_complementarias character varying,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_caracteristicas_generales OWNER TO postgres;

--
-- Name: TABLE le_caracteristicas_generales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_generales IS 'Caracteristicas generales';


--
-- Name: COLUMN le_caracteristicas_generales.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.id IS 'Auto generado';


--
-- Name: COLUMN le_caracteristicas_generales.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_caracteristicas_generales.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.id_det_material_electoral IS 'Relacionado a la DET material electoral';


--
-- Name: COLUMN le_caracteristicas_generales.requisitos_caracteristicas_tecnicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.requisitos_caracteristicas_tecnicas IS 'Caracteristicas tecnicas del item';


--
-- Name: COLUMN le_caracteristicas_generales.condiciones_complementarias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.condiciones_complementarias IS 'Condiciones complementarias que debe cumplir el item';


--
-- Name: COLUMN le_caracteristicas_generales.embalaje_forma_entrega; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.embalaje_forma_entrega IS 'Forma de entrega y embalaje del item';


--
-- Name: COLUMN le_caracteristicas_generales.tratamiento_material_defectuoso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.tratamiento_material_defectuoso IS 'Detalle del tratamiento del material defectuoso, dañado o sobrante';


--
-- Name: COLUMN le_caracteristicas_generales.otras_condiciones_complementarias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.otras_condiciones_complementarias IS 'Descripcion de otras condiciones complemetarias';


--
-- Name: COLUMN le_caracteristicas_generales.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_caracteristicas_generales.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.created_at IS 'Fecha y hora automatica';


--
-- Name: COLUMN le_caracteristicas_generales.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_caracteristicas_generales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_caracteristicas_generales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_caracteristicas_generales_id_seq OWNER TO postgres;

--
-- Name: le_caracteristicas_generales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_generales_id_seq OWNED BY public.le_caracteristicas_generales.id;


--
-- Name: le_caracteristicas_tecnicas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_caracteristicas_tecnicas (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_det_material_electoral integer NOT NULL,
    caracteristicas character varying(255) NOT NULL,
    valor numeric DEFAULT 10.2 NOT NULL,
    unidad character varying(20) NOT NULL,
    cantidad_proyectada numeric DEFAULT 10.2 NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_caracteristicas_tecnicas OWNER TO postgres;

--
-- Name: TABLE le_caracteristicas_tecnicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_tecnicas IS 'Caracteristicas tecnicas';


--
-- Name: COLUMN le_caracteristicas_tecnicas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.id IS 'Generado automaticamente';


--
-- Name: COLUMN le_caracteristicas_tecnicas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- Name: COLUMN le_caracteristicas_tecnicas.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.id_det_material_electoral IS 'Relacionado a la tabla det material electoral';


--
-- Name: COLUMN le_caracteristicas_tecnicas.caracteristicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.caracteristicas IS 'Caracteristicas';


--
-- Name: COLUMN le_caracteristicas_tecnicas.valor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.valor IS 'Valor numerico del material';


--
-- Name: COLUMN le_caracteristicas_tecnicas.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.unidad IS 'Unidad de medida del material';


--
-- Name: COLUMN le_caracteristicas_tecnicas.cantidad_proyectada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.cantidad_proyectada IS 'Cantidad del material proyectado';


--
-- Name: COLUMN le_caracteristicas_tecnicas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_caracteristicas_tecnicas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_caracteristicas_tecnicas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_caracteristicas_tecnicas_compuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_caracteristicas_tecnicas_compuestas (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_det_material_electoral integer NOT NULL,
    id_papeletas integer NOT NULL,
    id_cerchas integer NOT NULL,
    caracteristicas character varying(255) NOT NULL,
    valor numeric DEFAULT 10.2 NOT NULL,
    unidad character varying NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_caracteristicas_tecnicas_compuestas OWNER TO postgres;

--
-- Name: TABLE le_caracteristicas_tecnicas_compuestas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_tecnicas_compuestas IS 'Caracteristicas compuestas';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id IS 'Generado automaticamente';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_det_material_electoral IS 'Relacionado a la tabla det material electoral';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_papeletas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_papeletas IS 'Relacionado a la tabla papeletas';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_cerchas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_cerchas IS 'Relacionado a la tabla cerchas';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.caracteristicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.caracteristicas IS 'Caracteristicas del material';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.valor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.valor IS 'Valor numerico del material';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.unidad IS 'Unidad de medida del material';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_caracteristicas_tecnicas_compuestas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_caracteristicas_tecnicas_compuestas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_caracteristicas_tecnicas_compuestas_id_seq OWNER TO postgres;

--
-- Name: le_caracteristicas_tecnicas_compuestas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_tecnicas_compuestas_id_seq OWNED BY public.le_caracteristicas_tecnicas_compuestas.id;


--
-- Name: le_caracteristicas_tecnicas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_caracteristicas_tecnicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_caracteristicas_tecnicas_id_seq OWNER TO postgres;

--
-- Name: le_caracteristicas_tecnicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_tecnicas_id_seq OWNED BY public.le_caracteristicas_tecnicas.id;


--
-- Name: le_catalogos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_catalogos (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    value integer NOT NULL,
    label character varying(200) NOT NULL,
    descripcion text,
    lang character varying(25) NOT NULL,
    catalog_code character varying(150) NOT NULL,
    catalog_code_dep character varying(150),
    catalog_id_dep character varying(150),
    svg_image character varying(200),
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_catalogos OWNER TO postgres;

--
-- Name: TABLE le_catalogos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_catalogos IS 'Logistica electoral catalogos generales';


--
-- Name: COLUMN le_catalogos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.id IS 'Auto generado';


--
-- Name: COLUMN le_catalogos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_catalogos.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.value IS 'El valor del catalogo';


--
-- Name: COLUMN le_catalogos.label; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.label IS 'El texto del catalogo';


--
-- Name: COLUMN le_catalogos.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.descripcion IS 'Texto largo del catalogo puede ser nulo';


--
-- Name: COLUMN le_catalogos.lang; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.lang IS 'El idioma';


--
-- Name: COLUMN le_catalogos.catalog_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_code IS 'El codigo unico del catalogo';


--
-- Name: COLUMN le_catalogos.catalog_code_dep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_code_dep IS 'Catalogo padre para dependencia';


--
-- Name: COLUMN le_catalogos.catalog_id_dep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_id_dep IS 'Valor del catalogo padre para dependencia';


--
-- Name: COLUMN le_catalogos.svg_image; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.svg_image IS 'URL de la imagen';


--
-- Name: COLUMN le_catalogos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_catalogos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.created_at IS 'Fecha y hora automatica';


--
-- Name: le_catalogos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_catalogos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_catalogos_id_seq OWNER TO postgres;

--
-- Name: le_catalogos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_catalogos_id_seq OWNED BY public.le_catalogos.id;


--
-- Name: le_papeletas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_papeletas (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_tipo_elecciones integer NOT NULL,
    descripcion_region character varying NOT NULL,
    cantidad numeric DEFAULT 10.2 NOT NULL,
    status character varying(5) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_papeletas OWNER TO postgres;

--
-- Name: TABLE le_papeletas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_papeletas IS 'Papeletas';


--
-- Name: COLUMN le_papeletas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.id IS 'Generado automaticamente';


--
-- Name: COLUMN le_papeletas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- Name: COLUMN le_papeletas.id_tipo_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.id_tipo_elecciones IS 'Relacionado al tipo de elecciones';


--
-- Name: COLUMN le_papeletas.descripcion_region; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.descripcion_region IS 'Descripcion del nombre de la region segun el tipo de eleccion';


--
-- Name: COLUMN le_papeletas.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.cantidad IS 'La cantidad';


--
-- Name: COLUMN le_papeletas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_papeletas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_papeletas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_papeletas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_papeletas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_papeletas_id_seq OWNER TO postgres;

--
-- Name: le_papeletas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_papeletas_id_seq OWNED BY public.le_papeletas.id;


--
-- Name: le_cerchas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_cerchas (
    id integer DEFAULT nextval('public.le_papeletas_id_seq'::regclass) NOT NULL,
    users_sid character varying NOT NULL,
    id_tipo_elecciones integer NOT NULL,
    descripcion_region character varying NOT NULL,
    cantidad numeric DEFAULT 10.2 NOT NULL,
    status character varying(5) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_cerchas OWNER TO postgres;

--
-- Name: TABLE le_cerchas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_cerchas IS 'Cerchas del material ';


--
-- Name: le_det_material_electoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_det_material_electoral (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_material_electoral integer NOT NULL,
    id_material integer NOT NULL,
    utilidad_material character varying(255) NOT NULL,
    id_partida integer NOT NULL,
    id_ambito_eleccion integer NOT NULL,
    id_factor_distribucion integer NOT NULL,
    id_responsable_adquisicion integer NOT NULL,
    margen_seguridad numeric(10,2) NOT NULL,
    id_tipo_material integer NOT NULL,
    cantidad_margen_seguridad numeric(10,2) NOT NULL,
    cantidad_total numeric(10,2) NOT NULL,
    material_sensible character varying NOT NULL,
    material_fungible character varying NOT NULL,
    material_reutilizable character varying NOT NULL,
    id_instancia_aprobacion_diseno integer,
    id_instancia_aprobacion_arte integer,
    tiempo_produccion_adquisicion integer NOT NULL,
    id_lugar_recepcion integer NOT NULL,
    costo_unitario numeric(10,2),
    costo_total numeric(10,2),
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_det_material_electoral OWNER TO postgres;

--
-- Name: TABLE le_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_det_material_electoral IS 'DET Material electoral';


--
-- Name: COLUMN le_det_material_electoral.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id IS 'Auto generado';


--
-- Name: COLUMN le_det_material_electoral.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_det_material_electoral.id_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_material_electoral IS 'Relacionado al material electoral';


--
-- Name: COLUMN le_det_material_electoral.id_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_material IS 'Relacionado al material';


--
-- Name: COLUMN le_det_material_electoral.utilidad_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.utilidad_material IS 'Describir como y para que se utilizara el material';


--
-- Name: COLUMN le_det_material_electoral.id_partida; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_partida IS 'Relacionado a la partida presupuestaria';


--
-- Name: COLUMN le_det_material_electoral.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_ambito_eleccion IS 'Relacionado al amtido de la eleccion';


--
-- Name: COLUMN le_det_material_electoral.id_factor_distribucion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_factor_distribucion IS 'Relacionado al factor de distribucion';


--
-- Name: COLUMN le_det_material_electoral.id_responsable_adquisicion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_responsable_adquisicion IS 'Relacionado al responsable de adquisicion';


--
-- Name: COLUMN le_det_material_electoral.margen_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.margen_seguridad IS 'Margen de seguridad %';


--
-- Name: COLUMN le_det_material_electoral.id_tipo_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_tipo_material IS 'El tipo del material';


--
-- Name: COLUMN le_det_material_electoral.cantidad_margen_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.cantidad_margen_seguridad IS 'Calculo de cantidad de material * margen de seguridad';


--
-- Name: COLUMN le_det_material_electoral.cantidad_total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.cantidad_total IS 'Cantidad total del material proyectado';


--
-- Name: COLUMN le_det_material_electoral.material_sensible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_sensible IS 'Definir si el material es sensible (SI, NO)';


--
-- Name: COLUMN le_det_material_electoral.material_fungible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_fungible IS 'Definir si el material es fungible (SI, NO)';


--
-- Name: COLUMN le_det_material_electoral.material_reutilizable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_reutilizable IS 'Definir si el material es reutilizable (SI, NO)';


--
-- Name: COLUMN le_det_material_electoral.id_instancia_aprobacion_diseno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_instancia_aprobacion_diseno IS 'Relacionado a la instancia de aprobacion';


--
-- Name: COLUMN le_det_material_electoral.id_instancia_aprobacion_arte; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_instancia_aprobacion_arte IS 'Relacionado a la instancia de aprobacion del arte';


--
-- Name: COLUMN le_det_material_electoral.tiempo_produccion_adquisicion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.tiempo_produccion_adquisicion IS 'Tiempo que tomara la produccion del material en dias calendario';


--
-- Name: COLUMN le_det_material_electoral.id_lugar_recepcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_lugar_recepcion IS 'Relacionado con en lugar de recepcion';


--
-- Name: COLUMN le_det_material_electoral.costo_unitario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.costo_unitario IS 'Costo unitario del material';


--
-- Name: COLUMN le_det_material_electoral.costo_total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.costo_total IS 'Costo total del material';


--
-- Name: COLUMN le_det_material_electoral.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_det_material_electoral.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_det_material_electoral.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_det_material_electoral_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_det_material_electoral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_det_material_electoral_id_seq OWNER TO postgres;

--
-- Name: le_det_material_electoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_det_material_electoral_id_seq OWNED BY public.le_det_material_electoral.id;


--
-- Name: le_estados_procesos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_estados_procesos (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    sigla_estados character varying NOT NULL,
    descripcion_estados character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_estados_procesos OWNER TO postgres;

--
-- Name: TABLE le_estados_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_estados_procesos IS 'Estados procesos';


--
-- Name: COLUMN le_estados_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.id IS 'Auto generado';


--
-- Name: COLUMN le_estados_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_estados_procesos.sigla_estados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.sigla_estados IS 'Abreviatura del estado del proceso';


--
-- Name: COLUMN le_estados_procesos.descripcion_estados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.descripcion_estados IS 'Descripcion del estado del proceso (Borrador, Validado, Aprobado, Construido)';


--
-- Name: COLUMN le_estados_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_estados_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.created_at IS 'Generado automaticamente';


--
-- Name: COLUMN le_estados_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_estados_procesos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_estados_procesos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_estados_procesos_id_seq OWNER TO postgres;

--
-- Name: le_estados_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_estados_procesos_id_seq OWNED BY public.le_estados_procesos.id;


--
-- Name: le_factor_distribucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_factor_distribucion (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_destino_material integer NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_factor_distribucion OWNER TO postgres;

--
-- Name: TABLE le_factor_distribucion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_factor_distribucion IS 'Factor de distribucion';


--
-- Name: COLUMN le_factor_distribucion.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.id IS 'Auto generado';


--
-- Name: COLUMN le_factor_distribucion.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_factor_distribucion.id_destino_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.id_destino_material IS 'Relacionado al destino del material';


--
-- Name: COLUMN le_factor_distribucion.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_factor_distribucion.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_factor_distribucion.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_factor_distribucion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_factor_distribucion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_factor_distribucion_id_seq OWNER TO postgres;

--
-- Name: le_factor_distribucion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_factor_distribucion_id_seq OWNED BY public.le_factor_distribucion.id;


--
-- Name: le_history_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_history_data (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    model character varying(100) NOT NULL,
    data text NOT NULL,
    id_data integer NOT NULL,
    kind character varying(10) NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_history_data OWNER TO postgres;

--
-- Name: TABLE le_history_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_history_data IS 'Registro historico de todas las tablas';


--
-- Name: COLUMN le_history_data.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.id IS 'Auto generado';


--
-- Name: COLUMN le_history_data.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_history_data.model; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.model IS 'El nombre del modelo (tabla)';


--
-- Name: COLUMN le_history_data.data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.data IS 'Todo el dato modificado';


--
-- Name: COLUMN le_history_data.id_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.id_data IS 'el ID del registro';


--
-- Name: COLUMN le_history_data.kind; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.kind IS 'CRUD, C=Registro, R=Lectura, U=Actualizado, D=Eliminado';


--
-- Name: COLUMN le_history_data.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_history_data.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.created_at IS 'Fecha generada automaticamente';


--
-- Name: le_history_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_history_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_history_data_id_seq OWNER TO postgres;

--
-- Name: le_history_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_history_data_id_seq OWNED BY public.le_history_data.id;


--
-- Name: le_material_electoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_material_electoral (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_padron_proyectado integer NOT NULL,
    id_proceso integer NOT NULL,
    id_ambito_eleccion integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    status character varying NOT NULL,
    created_at time without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_material_electoral OWNER TO postgres;

--
-- Name: TABLE le_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_material_electoral IS 'Material electoral';


--
-- Name: COLUMN le_material_electoral.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id IS 'Auto generado';


--
-- Name: COLUMN le_material_electoral.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_material_electoral.id_padron_proyectado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_padron_proyectado IS 'Relacionado a padron proyectado';


--
-- Name: COLUMN le_material_electoral.id_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_proceso IS 'Relacionado a proceso';


--
-- Name: COLUMN le_material_electoral.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_ambito_eleccion IS 'Relacionado a ambito eleccion';


--
-- Name: COLUMN le_material_electoral.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.descripcion IS 'Descripcion del proceso o calculo de material electoral';


--
-- Name: COLUMN le_material_electoral.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_material_electoral.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_material_electoral.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_material_electoral_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_material_electoral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_material_electoral_id_seq OWNER TO postgres;

--
-- Name: le_material_electoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_material_electoral_id_seq OWNED BY public.le_material_electoral.id;


--
-- Name: le_material_sensible; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_material_sensible (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_medidas_seguridad integer NOT NULL,
    id_det_material_electoral integer NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_material_sensible OWNER TO postgres;

--
-- Name: TABLE le_material_sensible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_material_sensible IS 'Material sensible';


--
-- Name: COLUMN le_material_sensible.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id IS 'Auto generado';


--
-- Name: COLUMN le_material_sensible.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_material_sensible.id_medidas_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id_medidas_seguridad IS 'Relacionado con medidas de seguridad';


--
-- Name: COLUMN le_material_sensible.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id_det_material_electoral IS 'Relacionado a DET material electoral';


--
-- Name: COLUMN le_material_sensible.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_material_sensible.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_material_sensible.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_material_sensible_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_material_sensible_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_material_sensible_id_seq OWNER TO postgres;

--
-- Name: le_material_sensible_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_material_sensible_id_seq OWNED BY public.le_material_sensible.id;


--
-- Name: le_materiales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_materiales (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    id_grupo integer NOT NULL,
    id_unidad_medida integer NOT NULL,
    id_destino_material integer NOT NULL,
    item text NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_materiales OWNER TO postgres;

--
-- Name: TABLE le_materiales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_materiales IS 'Los materiales';


--
-- Name: COLUMN le_materiales.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id IS 'Auto generado';


--
-- Name: COLUMN le_materiales.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_materiales.id_grupo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_grupo IS 'Relacionado al catalogo GRUPOS';


--
-- Name: COLUMN le_materiales.id_unidad_medida; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_unidad_medida IS 'Relacionado al catalogo MEDIDA';


--
-- Name: COLUMN le_materiales.id_destino_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_destino_material IS 'Relacionado al catalogo DESTINO';


--
-- Name: COLUMN le_materiales.item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.item IS 'Nombre completo del item y su descripcion a detalle';


--
-- Name: COLUMN le_materiales.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_materiales.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_materiales.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.updated_at IS 'Fecha que puede quedar en nulo';


--
-- Name: le_materiales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_materiales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_materiales_id_seq OWNER TO postgres;

--
-- Name: le_materiales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_materiales_id_seq OWNED BY public.le_materiales.id;


--
-- Name: le_modalidad_procesos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_modalidad_procesos (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    abreviatura character varying NOT NULL,
    descripcion character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_modalidad_procesos OWNER TO postgres;

--
-- Name: TABLE le_modalidad_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_modalidad_procesos IS 'Modalidad procesos';


--
-- Name: COLUMN le_modalidad_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.id IS 'Auto generado';


--
-- Name: COLUMN le_modalidad_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_modalidad_procesos.abreviatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.abreviatura IS 'Abreviatura de la modalidad de procesos';


--
-- Name: COLUMN le_modalidad_procesos.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.descripcion IS 'Descripcion de la modalidad de procesos';


--
-- Name: COLUMN le_modalidad_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_modalidad_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.created_at IS 'Generado automaticamente';


--
-- Name: COLUMN le_modalidad_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_modalidad_procesos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_modalidad_procesos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_modalidad_procesos_id_seq OWNER TO postgres;

--
-- Name: le_modalidad_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_modalidad_procesos_id_seq OWNED BY public.le_modalidad_procesos.id;


--
-- Name: le_padron_proyectado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_padron_proyectado (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_tipo_eleccion integer NOT NULL,
    id_ambito_eleccion integer NOT NULL,
    id_proceso integer NOT NULL,
    descripcion character varying NOT NULL,
    fecha_eleccion date,
    habilitados_mesa integer DEFAULT 0 NOT NULL,
    jurados_mesa integer DEFAULT 0 NOT NULL,
    mesa_notarios integer DEFAULT 0 NOT NULL,
    guias_electorales integer DEFAULT 0 NOT NULL,
    tecnicos_informacion integer DEFAULT 0 NOT NULL,
    personal_limpieza integer DEFAULT 0 NOT NULL,
    efectivos_seguridad integer DEFAULT 0 NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_padron_proyectado OWNER TO postgres;

--
-- Name: TABLE le_padron_proyectado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_padron_proyectado IS 'Padron proyectado';


--
-- Name: COLUMN le_padron_proyectado.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id IS 'Auto generado';


--
-- Name: COLUMN le_padron_proyectado.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_padron_proyectado.id_tipo_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_tipo_eleccion IS 'Relacionado a tipo elecciones';


--
-- Name: COLUMN le_padron_proyectado.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_ambito_eleccion IS 'Relacionado a Ambito de elecciones';


--
-- Name: COLUMN le_padron_proyectado.id_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_proceso IS 'Relacionado a procesos';


--
-- Name: COLUMN le_padron_proyectado.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.descripcion IS 'Descripcion o detalle del proceso de proyeccion del padron';


--
-- Name: COLUMN le_padron_proyectado.fecha_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.fecha_eleccion IS 'Fecha alternativa de la nueva eleccion';


--
-- Name: COLUMN le_padron_proyectado.habilitados_mesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.habilitados_mesa IS 'Cantidad de habilitados o asignar por mesa';


--
-- Name: COLUMN le_padron_proyectado.jurados_mesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.jurados_mesa IS 'Cantidad de jurados a asignar por mesa';


--
-- Name: COLUMN le_padron_proyectado.mesa_notarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.mesa_notarios IS 'Cantidad de mesas a asignar por notario';


--
-- Name: COLUMN le_padron_proyectado.guias_electorales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.guias_electorales IS 'Cantidad de guias electorales por mesa';


--
-- Name: COLUMN le_padron_proyectado.tecnicos_informacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.tecnicos_informacion IS 'Cantidad de tecnicos de informacion computarizada por recinto';


--
-- Name: COLUMN le_padron_proyectado.personal_limpieza; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.personal_limpieza IS 'Cantidad de personal de limpieza por recinto';


--
-- Name: COLUMN le_padron_proyectado.efectivos_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.efectivos_seguridad IS 'Cantidad de efectivos de seguridad por recinto';


--
-- Name: COLUMN le_padron_proyectado.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_padron_proyectado.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_padron_proyectado.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_padron_proyectado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_padron_proyectado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_padron_proyectado_id_seq OWNER TO postgres;

--
-- Name: le_padron_proyectado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_padron_proyectado_id_seq OWNED BY public.le_padron_proyectado.id;


--
-- Name: le_persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_persona (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    id_usuario character varying(50) NOT NULL,
    nombres character varying(150) NOT NULL,
    paterno character varying(150) NOT NULL,
    materno character varying(150) NOT NULL,
    ci character varying(150) NOT NULL,
    cargo character varying(200) NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_persona OWNER TO postgres;

--
-- Name: TABLE le_persona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_persona IS 'Tabla persona relacionada al usuario registrado';


--
-- Name: COLUMN le_persona.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.id IS 'Auto generado';


--
-- Name: COLUMN le_persona.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_persona.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.id_usuario IS 'Relacionado al usuario al que pertenece la persona';


--
-- Name: COLUMN le_persona.nombres; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.nombres IS 'ambos nombres';


--
-- Name: COLUMN le_persona.paterno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.paterno IS 'apellido paterno';


--
-- Name: COLUMN le_persona.materno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.materno IS 'apellido materno';


--
-- Name: COLUMN le_persona.ci; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.ci IS 'documento de identidad mas extension';


--
-- Name: COLUMN le_persona.cargo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.cargo IS 'Cargo que ocupa en la entidad';


--
-- Name: COLUMN le_persona.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_persona.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.created_at IS 'Fecha y hora automatica';


--
-- Name: le_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_persona_id_seq OWNER TO postgres;

--
-- Name: le_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_persona_id_seq OWNED BY public.le_persona.id;


--
-- Name: le_presupuesto_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_presupuesto_material (
    id integer NOT NULL,
    id_proveedores integer NOT NULL,
    id_material integer NOT NULL,
    costo_unitario numeric(10,2) NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_presupuesto_material OWNER TO postgres;

--
-- Name: TABLE le_presupuesto_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_presupuesto_material IS 'Presupuesto del material';


--
-- Name: COLUMN le_presupuesto_material.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id IS 'Auto generado';


--
-- Name: COLUMN le_presupuesto_material.id_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id_proveedores IS 'Relacionado al proveedor registrado';


--
-- Name: COLUMN le_presupuesto_material.id_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id_material IS 'Material elegido en el presupuesto';


--
-- Name: COLUMN le_presupuesto_material.costo_unitario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.costo_unitario IS 'Expresado con dos decimales';


--
-- Name: COLUMN le_presupuesto_material.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_presupuesto_material.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_presupuesto_material.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_presupuesto_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_presupuesto_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_presupuesto_material_id_seq OWNER TO postgres;

--
-- Name: le_presupuesto_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_presupuesto_material_id_seq OWNED BY public.le_presupuesto_material.id;


--
-- Name: le_proceso_electoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_proceso_electoral (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    sigla character varying NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL,
    id_ambito_eleccion integer NOT NULL,
    id_procesos integer NOT NULL,
    fecha date NOT NULL,
    id_estado_proceso integer NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_proceso_electoral OWNER TO postgres;

--
-- Name: TABLE le_proceso_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_proceso_electoral IS 'Proceso electoral';


--
-- Name: COLUMN le_proceso_electoral.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.id IS 'Numero autogenerado';


--
-- Name: COLUMN le_proceso_electoral.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.users_sid IS 'UUID relacionado al usuario registrado';


--
-- Name: COLUMN le_proceso_electoral.sigla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.sigla IS 'Sigla del proceso electoral';


--
-- Name: COLUMN le_proceso_electoral.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.nombre IS 'Nombre del proceso electoral';


--
-- Name: COLUMN le_proceso_electoral.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.descripcion IS 'Descripcion del proceso electoral';


--
-- Name: COLUMN le_proceso_electoral.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.id_ambito_eleccion IS 'Relacionado al ambito de elecciones';


--
-- Name: COLUMN le_proceso_electoral.id_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.id_procesos IS 'Relacionado a los procesos';


--
-- Name: COLUMN le_proceso_electoral.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.fecha IS 'Fecha del proceso electoral';


--
-- Name: COLUMN le_proceso_electoral.id_estado_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.id_estado_proceso IS 'Relacionado al estado del proceso';


--
-- Name: COLUMN le_proceso_electoral.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_proceso_electoral.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_proceso_electoral.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proceso_electoral.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_proceso_electoral_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_proceso_electoral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_proceso_electoral_id_seq OWNER TO postgres;

--
-- Name: le_proceso_electoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_proceso_electoral_id_seq OWNED BY public.le_proceso_electoral.id;


--
-- Name: le_procesos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_procesos (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_tipos_flujo integer NOT NULL,
    fecha_proceso date NOT NULL,
    num_proceso integer NOT NULL,
    descripcion_proceso character varying NOT NULL,
    estado_w character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    gestion integer DEFAULT 2022
);


ALTER TABLE public.le_procesos OWNER TO postgres;

--
-- Name: TABLE le_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_procesos IS 'Procesos';


--
-- Name: COLUMN le_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.id IS 'Auto generado';


--
-- Name: COLUMN le_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_procesos.id_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.id_tipos_flujo IS 'Relacionado a Tipos de Flujo';


--
-- Name: COLUMN le_procesos.fecha_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.fecha_proceso IS 'Fecha de proceso';


--
-- Name: COLUMN le_procesos.num_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.num_proceso IS 'Numero correlativo del proceso';


--
-- Name: COLUMN le_procesos.descripcion_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.descripcion_proceso IS 'Descripcion adjunta al proceso';


--
-- Name: COLUMN le_procesos.estado_w; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.estado_w IS 'Abreviatura de la modalidad del proceso';


--
-- Name: COLUMN le_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.updated_at IS 'Fecha no obligatoria';


--
-- Name: COLUMN le_procesos.gestion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.gestion IS 'La gestion';


--
-- Name: le_procesos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_procesos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_procesos_id_seq OWNER TO postgres;

--
-- Name: le_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_procesos_id_seq OWNED BY public.le_procesos.id;


--
-- Name: le_proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_proveedores (
    id integer NOT NULL,
    email_empresa character varying NOT NULL,
    nombre_empresa character varying NOT NULL,
    nit character varying,
    pais character varying NOT NULL,
    ciudad character varying NOT NULL,
    telefono character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_proveedores OWNER TO postgres;

--
-- Name: TABLE le_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_proveedores IS 'Proveedores';


--
-- Name: COLUMN le_proveedores.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.id IS 'Auto generado';


--
-- Name: COLUMN le_proveedores.email_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.email_empresa IS 'Correo electronico de reconocimiento';


--
-- Name: COLUMN le_proveedores.nombre_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.nombre_empresa IS 'Nombre de la empresa';


--
-- Name: COLUMN le_proveedores.nit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.nit IS 'Numero de identificacion tributaria';


--
-- Name: COLUMN le_proveedores.pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.pais IS 'Nombre del pais';


--
-- Name: COLUMN le_proveedores.ciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.ciudad IS 'Nombre de la ciudad';


--
-- Name: COLUMN le_proveedores.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.telefono IS 'Numero de telefono';


--
-- Name: COLUMN le_proveedores.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_proveedores.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_proveedores.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_proveedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_proveedores_id_seq OWNER TO postgres;

--
-- Name: le_proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_proveedores_id_seq OWNED BY public.le_proveedores.id;


--
-- Name: le_representante_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_representante_legal (
    id integer NOT NULL,
    id_proveedores integer NOT NULL,
    nombre_completo character varying NOT NULL,
    telefono_representante character varying NOT NULL,
    email_representante character varying,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_representante_legal OWNER TO postgres;

--
-- Name: TABLE le_representante_legal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_representante_legal IS 'Representante legal';


--
-- Name: COLUMN le_representante_legal.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.id IS 'Auto generado';


--
-- Name: COLUMN le_representante_legal.id_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.id_proveedores IS 'Relacionado al proveedor registrado';


--
-- Name: COLUMN le_representante_legal.nombre_completo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.nombre_completo IS 'Nombre completo del representante legal';


--
-- Name: COLUMN le_representante_legal.telefono_representante; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.telefono_representante IS 'Telefono del representante legal';


--
-- Name: COLUMN le_representante_legal.email_representante; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.email_representante IS 'Correo electronico del representante';


--
-- Name: COLUMN le_representante_legal.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_representante_legal.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.created_at IS 'Fecha generada automaticamente';


--
-- Name: COLUMN le_representante_legal.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_representante_legal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_representante_legal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_representante_legal_id_seq OWNER TO postgres;

--
-- Name: le_representante_legal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_representante_legal_id_seq OWNED BY public.le_representante_legal.id;


--
-- Name: le_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_rol (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    descripcion_rol character varying(255) NOT NULL,
    abreviatura_rol character varying(255) NOT NULL,
    status character varying(5) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_rol OWNER TO postgres;

--
-- Name: TABLE le_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_rol IS 'Logistica electoral rol';


--
-- Name: COLUMN le_rol.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.id IS 'Auto generado';


--
-- Name: COLUMN le_rol.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_rol.descripcion_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.descripcion_rol IS 'Descripcion del rol';


--
-- Name: COLUMN le_rol.abreviatura_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.abreviatura_rol IS 'Sigla del rol';


--
-- Name: COLUMN le_rol.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.status IS 'A=Activo, X=Eliminado';


--
-- Name: le_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_rol_id_seq OWNER TO postgres;

--
-- Name: le_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_rol_id_seq OWNED BY public.le_rol.id;


--
-- Name: le_tipo_elecciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_tipo_elecciones (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    sigla character varying NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_tipo_elecciones OWNER TO postgres;

--
-- Name: TABLE le_tipo_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipo_elecciones IS 'Tipo de elecciones';


--
-- Name: COLUMN le_tipo_elecciones.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.id IS 'Auto generado';


--
-- Name: COLUMN le_tipo_elecciones.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_tipo_elecciones.sigla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.sigla IS 'Sigla del tipo de eleccion';


--
-- Name: COLUMN le_tipo_elecciones.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.nombre IS 'Nombre del tipo de eleccion';


--
-- Name: COLUMN le_tipo_elecciones.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.descripcion IS 'Descripcion del tipo de eleccion';


--
-- Name: COLUMN le_tipo_elecciones.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_tipo_elecciones.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.created_at IS 'Auto generado por el sistema';


--
-- Name: COLUMN le_tipo_elecciones.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.updated_at IS 'Fecha puede ser nulo';


--
-- Name: le_tipo_elecciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_tipo_elecciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_tipo_elecciones_id_seq OWNER TO postgres;

--
-- Name: le_tipo_elecciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipo_elecciones_id_seq OWNED BY public.le_tipo_elecciones.id;


--
-- Name: le_tipos_flujo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_tipos_flujo (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    detalle_flujo character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_tipos_flujo OWNER TO postgres;

--
-- Name: TABLE le_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipos_flujo IS 'Tipos de flujo';


--
-- Name: COLUMN le_tipos_flujo.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.id IS 'Auto generado';


--
-- Name: COLUMN le_tipos_flujo.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_tipos_flujo.detalle_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.detalle_flujo IS 'Detalle del flujo';


--
-- Name: COLUMN le_tipos_flujo.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_tipos_flujo.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.created_at IS 'Generado automaticamente';


--
-- Name: COLUMN le_tipos_flujo.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_tipos_flujo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_tipos_flujo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_tipos_flujo_id_seq OWNER TO postgres;

--
-- Name: le_tipos_flujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipos_flujo_id_seq OWNED BY public.le_tipos_flujo.id;


--
-- Name: le_tipos_flujo_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_tipos_flujo_trabajo (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_tipos_flujo numeric NOT NULL,
    origen_estado character varying NOT NULL,
    destino_estado character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_tipos_flujo_trabajo OWNER TO postgres;

--
-- Name: TABLE le_tipos_flujo_trabajo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipos_flujo_trabajo IS 'Tipos de flujo de trabajo';


--
-- Name: COLUMN le_tipos_flujo_trabajo.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.id IS 'Auto generado';


--
-- Name: COLUMN le_tipos_flujo_trabajo.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_tipos_flujo_trabajo.id_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.id_tipos_flujo IS 'Relacionado a Tipos de Flujo';


--
-- Name: COLUMN le_tipos_flujo_trabajo.origen_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.origen_estado IS 'Abreviatura del origen del proceso';


--
-- Name: COLUMN le_tipos_flujo_trabajo.destino_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.destino_estado IS 'Abreviatura del destino del proceso';


--
-- Name: COLUMN le_tipos_flujo_trabajo.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_tipos_flujo_trabajo.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.created_at IS 'Auto generado por el sistema';


--
-- Name: COLUMN le_tipos_flujo_trabajo.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.updated_at IS 'Fecha no obligatoria';


--
-- Name: le_tipos_flujo_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_tipos_flujo_trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_tipos_flujo_trabajo_id_seq OWNER TO postgres;

--
-- Name: le_tipos_flujo_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipos_flujo_trabajo_id_seq OWNED BY public.le_tipos_flujo_trabajo.id;


--
-- Name: le_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_usuarios (
    id integer NOT NULL,
    sid character varying(50) NOT NULL,
    usuario character varying(50) NOT NULL,
    password character varying(150) NOT NULL,
    email character varying(150) NOT NULL,
    remember_token text NOT NULL,
    ttl integer DEFAULT 172800 NOT NULL,
    wrong_login_attempt smallint DEFAULT 0,
    date_wrong_login_attempt date,
    client_ip character varying(50) DEFAULT 0 NOT NULL,
    code character varying(10),
    status character varying(5) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    profile_picture character varying(250)
);


ALTER TABLE public.le_usuarios OWNER TO postgres;

--
-- Name: TABLE le_usuarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios IS 'Tabla de usuarios';


--
-- Name: COLUMN le_usuarios.sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.sid IS 'UUID';


--
-- Name: COLUMN le_usuarios.usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.usuario IS 'Nombre del usuario';


--
-- Name: COLUMN le_usuarios.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.password IS 'Su contraseña';


--
-- Name: COLUMN le_usuarios.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.email IS 'Su correo electronico';


--
-- Name: COLUMN le_usuarios.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.remember_token IS 'El token';


--
-- Name: COLUMN le_usuarios.ttl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.ttl IS 'Tiempo de la sesion';


--
-- Name: COLUMN le_usuarios.wrong_login_attempt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.wrong_login_attempt IS 'Veces que ha fallado su inicio de sesion';


--
-- Name: COLUMN le_usuarios.date_wrong_login_attempt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.date_wrong_login_attempt IS 'Fecha de cuando fallo su inicio de sesion';


--
-- Name: COLUMN le_usuarios.client_ip; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.client_ip IS 'El ip del cliente';


--
-- Name: COLUMN le_usuarios.code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.code IS 'Codigo de recuperacion de usuario';


--
-- Name: COLUMN le_usuarios.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.status IS 'A=Activo, X=Eliminado, B=Bloqueado';


--
-- Name: COLUMN le_usuarios.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.created_at IS 'La fecha del registro';


--
-- Name: COLUMN le_usuarios.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.updated_at IS 'La fecha de la modificacion';


--
-- Name: COLUMN le_usuarios.profile_picture; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.profile_picture IS 'Fotografia de perfil';


--
-- Name: le_usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_usuarios_id_seq OWNER TO postgres;

--
-- Name: le_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_id_seq OWNED BY public.le_usuarios.id;


--
-- Name: le_usuarios_passwords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_usuarios_passwords (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    id_usuario character varying(50) NOT NULL,
    password text NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_usuarios_passwords OWNER TO postgres;

--
-- Name: TABLE le_usuarios_passwords; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios_passwords IS 'las contraseñas de los usuarios';


--
-- Name: COLUMN le_usuarios_passwords.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.id IS 'Auto generado';


--
-- Name: COLUMN le_usuarios_passwords.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_usuarios_passwords.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.id_usuario IS 'Relacionado al usuario al que pertenece la contraseña';


--
-- Name: COLUMN le_usuarios_passwords.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.password IS 'El password en formato AES revertible';


--
-- Name: COLUMN le_usuarios_passwords.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.status IS 'A=Activo, X=Eliminado';


--
-- Name: COLUMN le_usuarios_passwords.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.created_at IS 'Generado automaticamente';


--
-- Name: le_usuarios_passwords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_usuarios_passwords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_usuarios_passwords_id_seq OWNER TO postgres;

--
-- Name: le_usuarios_passwords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_passwords_id_seq OWNED BY public.le_usuarios_passwords.id;


--
-- Name: le_usuarios_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_usuarios_rol (
    id integer NOT NULL,
    users_sid character varying(50) NOT NULL,
    id_rol integer NOT NULL,
    id_usuario character varying(50) NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_usuarios_rol OWNER TO postgres;

--
-- Name: TABLE le_usuarios_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios_rol IS 'Roles designados a los usuarios';


--
-- Name: COLUMN le_usuarios_rol.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- Name: COLUMN le_usuarios_rol.id_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.id_rol IS 'Relacionado al rol';


--
-- Name: COLUMN le_usuarios_rol.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.id_usuario IS 'Relacionado al id del usuario, puede coincidir con el users sid';


--
-- Name: COLUMN le_usuarios_rol.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.status IS 'A=Activo, X=Eliminado';


--
-- Name: le_usuarios_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.le_usuarios_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.le_usuarios_rol_id_seq OWNER TO postgres;

--
-- Name: le_usuarios_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_rol_id_seq OWNED BY public.le_usuarios_rol.id;


--
-- Name: le_ambito_elecciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones ALTER COLUMN id SET DEFAULT nextval('public.le_ambito_elecciones_id_seq'::regclass);


--
-- Name: le_caracteristicas_generales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_generales_id_seq'::regclass);


--
-- Name: le_caracteristicas_tecnicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_tecnicas_id_seq'::regclass);


--
-- Name: le_caracteristicas_tecnicas_compuestas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_tecnicas_compuestas_id_seq'::regclass);


--
-- Name: le_catalogos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos ALTER COLUMN id SET DEFAULT nextval('public.le_catalogos_id_seq'::regclass);


--
-- Name: le_det_material_electoral id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral ALTER COLUMN id SET DEFAULT nextval('public.le_det_material_electoral_id_seq'::regclass);


--
-- Name: le_estados_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_estados_procesos_id_seq'::regclass);


--
-- Name: le_factor_distribucion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion ALTER COLUMN id SET DEFAULT nextval('public.le_factor_distribucion_id_seq'::regclass);


--
-- Name: le_history_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data ALTER COLUMN id SET DEFAULT nextval('public.le_history_data_id_seq'::regclass);


--
-- Name: le_material_electoral id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral ALTER COLUMN id SET DEFAULT nextval('public.le_material_electoral_id_seq'::regclass);


--
-- Name: le_material_sensible id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible ALTER COLUMN id SET DEFAULT nextval('public.le_material_sensible_id_seq'::regclass);


--
-- Name: le_materiales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales ALTER COLUMN id SET DEFAULT nextval('public.le_materiales_id_seq'::regclass);


--
-- Name: le_modalidad_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_modalidad_procesos_id_seq'::regclass);


--
-- Name: le_padron_proyectado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado ALTER COLUMN id SET DEFAULT nextval('public.le_padron_proyectado_id_seq'::regclass);


--
-- Name: le_papeletas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas ALTER COLUMN id SET DEFAULT nextval('public.le_papeletas_id_seq'::regclass);


--
-- Name: le_persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona ALTER COLUMN id SET DEFAULT nextval('public.le_persona_id_seq'::regclass);


--
-- Name: le_presupuesto_material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material ALTER COLUMN id SET DEFAULT nextval('public.le_presupuesto_material_id_seq'::regclass);


--
-- Name: le_proceso_electoral id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proceso_electoral ALTER COLUMN id SET DEFAULT nextval('public.le_proceso_electoral_id_seq'::regclass);


--
-- Name: le_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_procesos_id_seq'::regclass);


--
-- Name: le_proveedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proveedores ALTER COLUMN id SET DEFAULT nextval('public.le_proveedores_id_seq'::regclass);


--
-- Name: le_representante_legal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal ALTER COLUMN id SET DEFAULT nextval('public.le_representante_legal_id_seq'::regclass);


--
-- Name: le_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol ALTER COLUMN id SET DEFAULT nextval('public.le_rol_id_seq'::regclass);


--
-- Name: le_tipo_elecciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones ALTER COLUMN id SET DEFAULT nextval('public.le_tipo_elecciones_id_seq'::regclass);


--
-- Name: le_tipos_flujo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo ALTER COLUMN id SET DEFAULT nextval('public.le_tipos_flujo_id_seq'::regclass);


--
-- Name: le_tipos_flujo_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo ALTER COLUMN id SET DEFAULT nextval('public.le_tipos_flujo_trabajo_id_seq'::regclass);


--
-- Name: le_usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_id_seq'::regclass);


--
-- Name: le_usuarios_passwords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_passwords_id_seq'::regclass);


--
-- Name: le_usuarios_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_rol_id_seq'::regclass);


--
-- Data for Name: le_ambito_elecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_ambito_elecciones (id, users_sid, nombre, descripcion, status, created_at, updated_at) FROM stdin;
2	69abe0de-7812-41bd-9124-6a7238aee7d1	Departamental	Elecciones departamentales	A	2022-08-22 18:13:47	2022-08-22 18:14:11
1	69abe0de-7812-41bd-9124-6a7238aee7d1	Nacional	Elecciones nacionales	A	2022-08-09 10:01:21	2022-08-22 18:14:18
3	69abe0de-7812-41bd-9124-6a7238aee7d1	Municipal	Elecciones municipales	A	2022-08-22 18:18:58	2022-08-22 18:18:58
4	69abe0de-7812-41bd-9124-6a7238aee7d1	Regional	Elecciones regionales	A	2022-08-22 18:19:04	2022-08-22 18:19:04
\.


--
-- Data for Name: le_caracteristicas_generales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_caracteristicas_generales (id, users_sid, id_det_material_electoral, requisitos_caracteristicas_tecnicas, condiciones_complementarias, embalaje_forma_entrega, tratamiento_material_defectuoso, otras_condiciones_complementarias, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	4	Requisitos características técnicas	Condiciones complementarias	Forma de embalaje para entrega	Tratamiento del material defectuoso	Otras condiciones complementarias	A	2022-08-17 10:00:38	2022-08-17 10:18:44
\.


--
-- Data for Name: le_caracteristicas_tecnicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_caracteristicas_tecnicas (id, users_sid, id_det_material_electoral, caracteristicas, valor, unidad, cantidad_proyectada, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	4	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis dui hendrerit, placerat risus non, mattis dolor. Maecenas tempor enim metus, vitae tempor odio volutpat ac.	15	unidades	50000	A	2022-08-16 12:55:51	2022-08-16 12:55:51
\.


--
-- Data for Name: le_caracteristicas_tecnicas_compuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_caracteristicas_tecnicas_compuestas (id, users_sid, id_det_material_electoral, id_papeletas, id_cerchas, caracteristicas, valor, unidad, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	4	1	2	El pasaje "Lorem ipsum..." se ha extraído del texto que dice "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... (editado 1)	51	Unidades	A	2022-08-17 11:21:38	2022-08-17 11:30:36
\.


--
-- Data for Name: le_catalogos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_catalogos (id, users_sid, value, label, descripcion, lang, catalog_code, catalog_code_dep, catalog_id_dep, svg_image, status, created_at, updated_at) FROM stdin;
12	69abe0de-7812-41bd-9124-6a7238aee7d1	2	CUARTO REGISTRO	el cuarto registro!	es	GRUPOS	0	0	\N	X	2022-07-28 19:17:42	2022-07-28 19:18:45
9	69abe0de-7812-41bd-9124-6a7238aee7d1	1	GRUPO ELECCION DE VOCALES	ELECCION DE VOCALES	es	GRUPOS	0	0	\N	A	2022-07-28 15:28:48	2022-07-28 19:21:54
13	69abe0de-7812-41bd-9124-6a7238aee7d1	1	UN	Unidad	es	MEDIDA	0	0	\N	A	2022-07-28 19:43:51	2022-07-28 19:43:51
14	69abe0de-7812-41bd-9124-6a7238aee7d1	2	RESMA	Resma de papel	es	MEDIDA	0	0	\N	A	2022-07-28 19:44:06	2022-07-28 19:44:06
16	69abe0de-7812-41bd-9124-6a7238aee7d1	1	DESTINO	No se que va aca	es	DESTINO	0	0	\N	A	2022-07-28 19:45:14	2022-07-28 19:45:14
15	69abe0de-7812-41bd-9124-6a7238aee7d1	3	DOCENA	Doce unidades	es	MEDIDA	0	0	\N	A	2022-07-28 19:44:25	2022-07-29 16:40:33
17	69abe0de-7812-41bd-9124-6a7238aee7d1	1	1010	Tesoro General de la Nacion (TGN)	es	PARTIDA	0	0	\N	A	2022-07-28 19:50:48	2022-08-01 09:47:52
18	69abe0de-7812-41bd-9124-6a7238aee7d1	2	1020	TGN Donaciones	es	PARTIDA	0	0	\N	A	2022-08-01 10:00:38	2022-08-01 10:00:38
19	69abe0de-7812-41bd-9124-6a7238aee7d1	2	GRUPO ELECCION NACIONAL	GRUPO ELECCION NACIONAL	es	GRUPOS	0	0	\N	A	2022-08-01 10:30:53	2022-08-01 10:30:53
21	69abe0de-7812-41bd-9124-6a7238aee7d1	1	MATERIAL ANTI INCENDIO	MATERIAL ANTI INCENDIO	es	TIPOMATERIAL	0	0	\N	A	2022-08-01 11:03:57	2022-08-01 11:03:57
22	69abe0de-7812-41bd-9124-6a7238aee7d1	1	NOMBRE DEL RESPONSABLE NOSE	NOMBRE DEL RESPONSABLE NOSE	es	RESPONSABLEADQUISICION	0	0	\N	A	2022-08-01 11:04:12	2022-08-01 11:04:12
23	69abe0de-7812-41bd-9124-6a7238aee7d1	1	MEDIDA DE SEGURIDAD 1	MEDIDA DE SEGURIDAD 1	es	MEDIDAS	0	0	\N	A	2022-08-01 11:04:26	2022-08-01 11:04:26
24	69abe0de-7812-41bd-9124-6a7238aee7d1	1	NOSE QUE VA ACA	ni idea	es	SIMILITUD	0	0	\N	A	2022-08-01 11:04:36	2022-08-01 11:04:36
25	69abe0de-7812-41bd-9124-6a7238aee7d1	1	NOSE QUE INFO VA ACA	NOSE QUE INFO VA ACA	es	LUGARRECEPCION	0	0	\N	A	2022-08-01 14:38:33	2022-08-01 14:38:33
26	69abe0de-7812-41bd-9124-6a7238aee7d1	1	PRE APROBADO	pre aprobado	es	INSTANCIA	0	0	\N	A	2022-08-01 14:38:44	2022-08-01 14:38:44
27	69abe0de-7812-41bd-9124-6a7238aee7d1	2	APROBADO	aprobado	es	INSTANCIA	0	0	\N	A	2022-08-01 14:38:59	2022-08-01 14:38:59
28	69abe0de-7812-41bd-9124-6a7238aee7d1	3	CARTONES	CARTONES	es	GRUPOS	0	0	\N	A	2022-08-05 09:03:26	2022-08-05 09:03:26
29	69abe0de-7812-41bd-9124-6a7238aee7d1	2	NUEVO DESTINO	Tampoco se que va aca	es	DESTINO	0	0	\N	A	2022-08-05 09:04:09	2022-08-05 09:04:09
30	69abe0de-7812-41bd-9124-6a7238aee7d1	2	OTRO RESPONSABLE	OTRO RESPONSABLE	es	RESPONSABLEADQUISICION	0	0	\N	A	2022-08-11 09:23:44	2022-08-11 09:23:44
31	69abe0de-7812-41bd-9124-6a7238aee7d1	1	ELABORADO	ELABORADO	es	ESTADOPROCESO	0	0	\N	A	2022-08-22 13:34:43	2022-08-22 13:34:43
32	69abe0de-7812-41bd-9124-6a7238aee7d1	2	VALIDADO	VALIDADO	es	ESTADOPROCESO	0	0	\N	A	2022-08-22 13:34:48	2022-08-22 13:34:48
33	69abe0de-7812-41bd-9124-6a7238aee7d1	3	APROBADO	APROBADO	es	ESTADOPROCESO	0	0	\N	A	2022-08-22 15:13:13	2022-08-22 15:13:13
\.


--
-- Data for Name: le_cerchas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_cerchas (id, users_sid, id_tipo_elecciones, descripcion_region, cantidad, status, created_at, updated_at) FROM stdin;
2	69abe0de-7812-41bd-9124-6a7238aee7d1	1	Descripcion de la cercha segun region	56	A	2022-08-16 11:37:05	2022-08-16 11:37:05
3	69abe0de-7812-41bd-9124-6a7238aee7d1	2	Nueva descripcion (edicion 1)	152	A	2022-08-16 11:37:21	2022-08-16 11:40:11
\.


--
-- Data for Name: le_det_material_electoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_det_material_electoral (id, users_sid, id_material_electoral, id_material, utilidad_material, id_partida, id_ambito_eleccion, id_factor_distribucion, id_responsable_adquisicion, margen_seguridad, id_tipo_material, cantidad_margen_seguridad, cantidad_total, material_sensible, material_fungible, material_reutilizable, id_instancia_aprobacion_diseno, id_instancia_aprobacion_arte, tiempo_produccion_adquisicion, id_lugar_recepcion, costo_unitario, costo_total, status, created_at, updated_at) FROM stdin;
4	69abe0de-7812-41bd-9124-6a7238aee7d1	1	4	Utilidad del material (editado 1)	1	1	1	1	15.25	1	900.00	9000.00	SI	SI	SI	1	1	30	1	50.00	450000.00	A	2022-08-15 09:13:58	2022-08-15 09:44:36
\.


--
-- Data for Name: le_estados_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_estados_procesos (id, users_sid, sigla_estados, descripcion_estados, status, created_at, updated_at) FROM stdin;
2	69abe0de-7812-41bd-9124-6a7238aee7d1	PROC-2	Estado proceso 2	A	2022-08-09 10:59:26	2022-08-09 10:59:26
1	69abe0de-7812-41bd-9124-6a7238aee7d1	PROC-1 editado	Estado del proceso	A	2022-08-09 10:58:42	2022-08-09 11:23:32
\.


--
-- Data for Name: le_factor_distribucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_factor_distribucion (id, users_sid, id_destino_material, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	1	A	2022-08-09 14:52:19	2022-08-09 15:02:17
2	69abe0de-7812-41bd-9124-6a7238aee7d1	2	A	2022-08-09 15:10:15	2022-08-09 15:10:15
\.


--
-- Data for Name: le_history_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_history_data (id, users_sid, model, data, id_data, kind, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"GRUPO 1","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"El primer grupo!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T15:28:48.000000Z","created_at":"2022-07-28T15:28:48.000000Z","id":9}	9	C	A	2022-07-28 15:28:48	\N
3	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"9","value":1,"label":"GRUPO 1 DE NUEVO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"El primer grupo!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	9	U	A	2022-07-28 16:38:37	\N
4	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"GRUPO 2 NO NUEVO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Segundo grupo de prueba para eliminacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:12:43.000000Z","created_at":"2022-07-28T19:12:43.000000Z","id":10}	10	C	A	2022-07-28 19:12:43	\N
5	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"10","value":2,"label":"GRUPO 2 SI ERA NUEVO!","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Segundo grupo de prueba para eliminacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	10	U	A	2022-07-28 19:12:52	\N
6	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"TERCER GRUPO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"TERCER GRUPO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:15:54.000000Z","created_at":"2022-07-28T19:15:54.000000Z","id":11}	11	C	A	2022-07-28 19:15:54	\N
7	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"11","value":2,"label":"TERCER GRUPO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"EL TERCER GRUPO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	11	U	A	2022-07-28 19:16:02	\N
8	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	1	11	D	A	2022-07-28 19:16:12	\N
9	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"REGISTRO 4","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"el cuarto registro!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:17:42.000000Z","created_at":"2022-07-28T19:17:42.000000Z","id":12}	12	C	A	2022-07-28 19:17:42	\N
10	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"12","value":2,"label":"CUARTO REGISTRO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"el cuarto registro!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	12	U	A	2022-07-28 19:18:32	\N
11	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	1	12	D	A	2022-07-28 19:18:45	\N
12	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"9","value":1,"label":"GRUPO ELECCION DE VOCALES","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"ELECCION DE VOCALES","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	9	U	A	2022-07-28 19:21:54	\N
13	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"UN","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Unidad","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:43:51.000000Z","created_at":"2022-07-28T19:43:51.000000Z","id":13}	13	C	A	2022-07-28 19:43:51	\N
14	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"RESMA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Resma de papel","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:44:06.000000Z","created_at":"2022-07-28T19:44:06.000000Z","id":14}	14	C	A	2022-07-28 19:44:06	\N
15	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"DOCENA","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:44:25.000000Z","created_at":"2022-07-28T19:44:25.000000Z","id":15}	15	C	A	2022-07-28 19:44:25	\N
16	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	15	U	A	2022-07-28 19:44:32	\N
17	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"DESTINO","lang":"es","catalog_code":"DESTINO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"No se que va aca","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:45:14.000000Z","created_at":"2022-07-28T19:45:14.000000Z","id":16}	16	C	A	2022-07-28 19:45:14	\N
18	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"1010 TGN","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tesoro General de la Nacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:50:48.000000Z","created_at":"2022-07-28T19:50:48.000000Z","id":17}	17	C	A	2022-07-28 19:50:48	\N
19	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades sobre todo en los huevos","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	15	U	A	2022-07-29 20:30:28	\N
20	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades de cualquier cosa","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	15	U	A	2022-07-29 20:37:33	\N
21	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades de cualquier cosa 1adsadasdas","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	15	U	A	2022-07-29 16:40:26	\N
22	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	15	U	A	2022-07-29 16:40:33	\N
23	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":"17","value":1,"label":"1010","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tesoro General de la Nacion (TGN)","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}	17	U	A	2022-08-01 09:47:53	\N
24	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"1020","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"TGN Donaciones","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T14:00:38.000000Z","created_at":"2022-08-01T14:00:38.000000Z","id":18}	18	C	A	2022-08-01 10:00:38	\N
25	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"GRUPO ELECCION NACIONAL","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"GRUPO ELECCION NACIONAL","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T14:30:53.000000Z","created_at":"2022-08-01T14:30:53.000000Z","id":19}	19	C	A	2022-08-01 10:30:53	\N
26	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"MATERIAL ANTI INCENDIO","lang":"es","catalog_code":"TIPOMATERIAL","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"MATERIAL ANTI INCENDIO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:03:57.000000Z","created_at":"2022-08-01T15:03:57.000000Z","id":21}	21	C	A	2022-08-01 11:03:57	\N
27	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"NOMBRE DEL RESPONSABLE NOSE","lang":"es","catalog_code":"RESPONSABLEADQUISICION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"NOMBRE DEL RESPONSABLE NOSE","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:12.000000Z","created_at":"2022-08-01T15:04:12.000000Z","id":22}	22	C	A	2022-08-01 11:04:12	\N
28	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"MEDIDA DE SEGURIDAD 1","lang":"es","catalog_code":"MEDIDAS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"MEDIDA DE SEGURIDAD 1","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:26.000000Z","created_at":"2022-08-01T15:04:26.000000Z","id":23}	23	C	A	2022-08-01 11:04:26	\N
29	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"NOSE QUE VA ACA","lang":"es","catalog_code":"SIMILITUD","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"ni idea","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:36.000000Z","created_at":"2022-08-01T15:04:36.000000Z","id":24}	24	C	A	2022-08-01 11:04:36	\N
30	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"NOSE QUE INFO VA ACA","lang":"es","catalog_code":"LUGARRECEPCION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"NOSE QUE INFO VA ACA","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:33.000000Z","created_at":"2022-08-01T18:38:33.000000Z","id":25}	25	C	A	2022-08-01 14:38:34	\N
31	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"PRE APROBADO","lang":"es","catalog_code":"INSTANCIA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"pre aprobado","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:44.000000Z","created_at":"2022-08-01T18:38:44.000000Z","id":26}	26	C	A	2022-08-01 14:38:44	\N
32	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"APROBADO","lang":"es","catalog_code":"INSTANCIA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"aprobado","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:59.000000Z","created_at":"2022-08-01T18:38:59.000000Z","id":27}	27	C	A	2022-08-01 14:38:59	\N
34	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":3,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL 2","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T14:26:55.000000Z"}	3	C	A	2022-08-04 10:26:55	\N
35	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"id":4,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CUARTO REGISTRO","id_unidad_medida":"DOCENA","id_destino_material":"DESTINO","item":"ANFORAS","status":"A","created_at":"2022-08-04T14:34:07.000000Z","updated_at":"2022-08-04T14:34:07.000000Z"}	4	C	A	2022-08-04 10:34:07	\N
36	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":5,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T16:05:50.000000Z"}	5	C	A	2022-08-04 12:05:50	\N
37	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T16:40:09.000000Z"}	5	U	A	2022-08-04 12:40:09	\N
38	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CUARTO REGISTRO","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T19:29:44.000000Z"}	5	U	A	2022-08-04 15:29:44	\N
39	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"DOCENA","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL 2 EDITAR","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T19:40:03.000000Z"}	3	U	A	2022-08-04 15:40:03	\N
40	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T19:40:32.000000Z"}	3	U	A	2022-08-04 15:40:32	\N
41	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":3,"label":"CARTONES","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"CARTONES","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-05T13:03:26.000000Z","created_at":"2022-08-05T13:03:26.000000Z","id":28}	28	C	A	2022-08-05 09:03:26	\N
42	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"NUEVO DESTINO","lang":"es","catalog_code":"DESTINO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tampoco se que va aca","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-05T13:04:09.000000Z","created_at":"2022-08-05T13:04:09.000000Z","id":29}	29	C	A	2022-08-05 09:04:09	\N
43	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CARTONES","id_unidad_medida":"UN","id_destino_material":"NUEVO DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-05T13:05:20.000000Z"}	5	U	A	2022-08-05 09:05:20	\N
44	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Ambito de la eleccion","descripcion":"Ambito de la eleccion, Ambito de la eleccion, Ambito de la eleccion","status":"A","created_at":"2022-08-09T14:01:21.000000Z","updated_at":"2022-08-09T14:01:21.000000Z"}	1	C	A	2022-08-09 10:01:22	\N
45	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Ambito de la eleccion - editado","descripcion":"Ambito de la eleccion, Ambito de la eleccion, Ambito de la eleccion","status":"A","created_at":"2022-08-09T14:01:21.000000Z","updated_at":"2022-08-09T14:03:52.000000Z"}	1	U	A	2022-08-09 10:03:52	\N
46	69abe0de-7812-41bd-9124-6a7238aee7d1	le_estados_procesos	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-1","descripcion_estados":"Estado del proceso","status":"A","created_at":"2022-08-09T14:58:42.000000Z","updated_at":"2022-08-09T14:58:42.000000Z"}	1	C	A	2022-08-09 10:58:42	\N
47	69abe0de-7812-41bd-9124-6a7238aee7d1	le_estados_procesos	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-2","descripcion_estados":"Estado proceso 2","status":"A","created_at":"2022-08-09T14:59:26.000000Z","updated_at":"2022-08-09T14:59:26.000000Z"}	2	C	A	2022-08-09 10:59:26	\N
48	69abe0de-7812-41bd-9124-6a7238aee7d1	le_estados_procesos	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-1 editado","descripcion_estados":"Estado del proceso","status":"A","created_at":"2022-08-09T14:58:42.000000Z","updated_at":"2022-08-09T15:23:32.000000Z"}	1	U	A	2022-08-09 11:23:32	\N
49	69abe0de-7812-41bd-9124-6a7238aee7d1	le_factor_distribucion	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"NUEVO DESTINO","status":"A","created_at":"2022-08-09T18:52:19.000000Z","updated_at":"2022-08-09T18:52:19.000000Z"}	1	C	A	2022-08-09 14:52:19	\N
50	69abe0de-7812-41bd-9124-6a7238aee7d1	le_factor_distribucion	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"DESTINO","status":"A","created_at":"2022-08-09T18:52:19.000000Z","updated_at":"2022-08-09T19:02:17.000000Z"}	1	U	A	2022-08-09 15:02:18	\N
51	69abe0de-7812-41bd-9124-6a7238aee7d1	le_factor_distribucion	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"NUEVO DESTINO","status":"A","created_at":"2022-08-09T19:10:15.000000Z","updated_at":"2022-08-09T19:10:15.000000Z"}	2	C	A	2022-08-09 15:10:16	\N
52	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipo_elecciones	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2022","nombre":"Elecciones nacionales 2022","descripcion":"Detalle de las elecciones nacionales 2022","status":"A","created_at":"2022-08-09T20:13:46.000000Z","updated_at":"2022-08-09T20:13:46.000000Z"}	1	C	A	2022-08-09 16:13:46	\N
53	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipo_elecciones	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2022","nombre":"Elecciones nacionales 2022","descripcion":"Detalle de las elecciones nacionales 2022 editado 1","status":"A","created_at":"2022-08-09T20:13:46.000000Z","updated_at":"2022-08-09T20:17:54.000000Z"}	1	U	A	2022-08-09 16:17:54	\N
54	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipo_elecciones	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2025","nombre":"Elecciones 2025","descripcion":"Elecciones 2025 sin editar","status":"A","created_at":"2022-08-09T20:19:46.000000Z","updated_at":"2022-08-09T20:19:46.000000Z"}	2	C	A	2022-08-09 16:19:46	\N
55	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipo_elecciones	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2025","nombre":"Elecciones 2025","descripcion":"Elecciones 2025 ahora editado","status":"A","created_at":"2022-08-09T20:19:46.000000Z","updated_at":"2022-08-09T20:19:56.000000Z"}	2	U	A	2022-08-09 16:19:56	\N
56	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:40:13.000000Z"}	1	C	A	2022-08-10 09:40:14	\N
57	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"}	1	U	A	2022-08-10 09:44:33	\N
58	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Segundo flujo","status":"A","created_at":"2022-08-10T13:44:43.000000Z","updated_at":"2022-08-10T13:44:43.000000Z"}	2	C	A	2022-08-10 09:44:43	\N
59	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo_trabajo	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"},"origen_estado":"Origen del proceso 1","destino_estado":"Destino del proceso 1","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T19:41:28.000000Z"}	1	C	A	2022-08-10 15:41:28	\N
60	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo_trabajo	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"},"origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:02.000000Z"}	1	U	A	2022-08-10 16:00:02	\N
61	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo_trabajo	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Segundo flujo","status":"A","created_at":"2022-08-10T13:44:43.000000Z","updated_at":"2022-08-10T13:44:43.000000Z"},"origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:12.000000Z"}	1	U	A	2022-08-10 16:00:12	\N
62	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo_trabajo	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:12.000000Z"}	1	D	A	2022-08-10 16:33:13	\N
63	69abe0de-7812-41bd-9124-6a7238aee7d1	le_tipos_flujo_trabajo	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","origen_estado":"Origen del proceso 1","destino_estado":"Destino del proceso 1","status":"A","created_at":"2022-08-10T20:33:53.000000Z","updated_at":"2022-08-10T20:33:53.000000Z"}	2	C	A	2022-08-10 16:33:53	\N
64	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"OTRO RESPONSABLE","lang":"es","catalog_code":"RESPONSABLEADQUISICION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"OTRO RESPONSABLE","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-11T13:23:44.000000Z","created_at":"2022-08-11T13:23:44.000000Z","id":30}	30	C	A	2022-08-11 09:23:44	\N
65	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":null,"requisitos_caracteristicas_tecnicas":null,"condiciones_complementarias":null,"embalaje_forma_entrega":null,"tratamiento_material_defectuoso":null,"otras_condiciones_complementarias":null,"status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T16:28:13.000000Z"}	1	C	A	2022-08-11 12:28:13	\N
66	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":null,"requisitos_caracteristicas_tecnicas":null,"condiciones_complementarias":null,"embalaje_forma_entrega":null,"tratamiento_material_defectuoso":null,"otras_condiciones_complementarias":null,"status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:30:21.000000Z"}	1	U	A	2022-08-11 14:30:21	\N
67	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":null,"num_proceso":321654,"descripcion_proceso":"Proceso 1","estado_w":"Modalidad del proceso 1","status":"A","created_at":"2022-08-11T18:47:02.000000Z","updated_at":"2022-08-11T18:47:02.000000Z"}	2	C	A	2022-08-11 14:47:02	\N
68	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Proceso 1 (editado)","estado_w":"Modalidad del proceso 1 (editado)","status":"A","created_at":"2022-08-11T18:47:02.000000Z","updated_at":"2022-08-11T18:50:54.000000Z"}	2	U	A	2022-08-11 14:50:54	\N
69	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","fecha_proceso":"2022-08-31","num_proceso":321654,"descripcion_proceso":"Descripcion de este proceso 01 (editado)","estado_w":"Modalidad de este proceso","status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:30:21.000000Z"}	1	D	A	2022-08-11 14:57:09	\N
70	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","fecha_proceso":"2022-08-31","num_proceso":321654,"descripcion_proceso":"Descripcion de este proceso 01 (editado)","estado_w":"Modalidad de este proceso","status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:57:09.000000Z"}	1	D	A	2022-08-11 15:11:47	\N
71	69abe0de-7812-41bd-9124-6a7238aee7d1	le_padron_proyectado	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_eleccion":"E2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_proceso":321654,"descripcion":"Descripcion del padron proyectado","fecha_eleccion":"2025-08-10","habilitados_mesa":500,"jurados_mesa":50,"mesa_notarios":15,"guias_electorales":15,"tecnicos_informacion":5,"personal_limpieza":5,"efectivos_seguridad":10,"status":"A","created_at":"2022-08-11T19:43:59.000000Z","updated_at":"2022-08-11T19:43:59.000000Z"}	1	C	A	2022-08-11 15:43:59	\N
72	69abe0de-7812-41bd-9124-6a7238aee7d1	le_padron_proyectado	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_eleccion":"E2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_proceso":321654,"descripcion":"Descripcion del padron proyectado (editado)","fecha_eleccion":"2025-08-10","habilitados_mesa":500,"jurados_mesa":50,"mesa_notarios":15,"guias_electorales":15,"tecnicos_informacion":5,"personal_limpieza":5,"efectivos_seguridad":10,"status":"A","created_at":"2022-08-11T19:43:59.000000Z","updated_at":"2022-08-11T20:02:21.000000Z"}	1	U	A	2022-08-11 16:02:21	\N
73	69abe0de-7812-41bd-9124-6a7238aee7d1	le_material_electoral	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_padron_proyectado":"Descripcion del padron proyectado (editado)","id_proceso":321654,"id_ambito_eleccion":"Ambito de la eleccion - editado","descripcion":"Detalle del material electoral","status":"A","created_at":"2022-08-12T13:46:02.000000Z","updated_at":"2022-08-12T13:46:02.000000Z"}	1	C	A	2022-08-12 09:46:02	\N
74	69abe0de-7812-41bd-9124-6a7238aee7d1	le_material_electoral	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_padron_proyectado":"Descripcion del padron proyectado (editado)","id_proceso":321654,"id_ambito_eleccion":"Ambito de la eleccion - editado","descripcion":"Detalle del material electoral (editado 11)","status":"A","created_at":"2022-08-12T13:46:02.000000Z","updated_at":"2022-08-12T15:29:11.000000Z"}	1	U	A	2022-08-12 11:29:11	\N
75	69abe0de-7812-41bd-9124-6a7238aee7d1	le_det_material_electoral	{"id":4,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_material_electoral":"Detalle del material electoral (editado 11)","id_material":"ANFORAS","utilidad_material":"Utilidad del material","id_partida":"1010","id_ambito_eleccion":"Ambito de la eleccion - editado","id_factor_distribucion":"DESTINO","id_responsable_adquisicion":"NOMBRE DEL RESPONSABLE NOSE","margen_seguridad":"15.25","id_tipo_material":"MATERIAL ANTI INCENDIO","cantidad_margen_seguridad":"900.00","cantidad_total":"9000.00","material_sensible":"Y","material_fungible":"Y","material_reutilizable":"Y","id_instancia_aprobacion_diseno":"PRE APROBADO","id_instancia_aprobacion_arte":"PRE APROBADO","tiempo_produccion_adquisicion":30,"id_lugar_recepcion":"NOSE QUE INFO VA ACA","costo_unitario":"50.00","costo_total":"450000.00","status":"A","created_at":"2022-08-15T13:13:58.000000Z","updated_at":"2022-08-15T13:13:58.000000Z"}	4	C	A	2022-08-15 09:13:59	\N
76	69abe0de-7812-41bd-9124-6a7238aee7d1	le_det_material_electoral	{"id":"4","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_material_electoral":"Detalle del material electoral (editado 11)","id_material":"ANFORAS","utilidad_material":"Utilidad del material (editado 1)","id_partida":"1010","id_ambito_eleccion":"Ambito de la eleccion - editado","id_factor_distribucion":"DESTINO","id_responsable_adquisicion":"NOMBRE DEL RESPONSABLE NOSE","margen_seguridad":"15.25","id_tipo_material":"MATERIAL ANTI INCENDIO","cantidad_margen_seguridad":"900.00","cantidad_total":"9000.00","material_sensible":"SI","material_fungible":"SI","material_reutilizable":"SI","id_instancia_aprobacion_diseno":"PRE APROBADO","id_instancia_aprobacion_arte":"PRE APROBADO","tiempo_produccion_adquisicion":30,"id_lugar_recepcion":"NOSE QUE INFO VA ACA","costo_unitario":"50.00","costo_total":"450000.00","status":"A","created_at":"2022-08-15T13:13:58.000000Z","updated_at":"2022-08-15T13:44:36.000000Z"}	4	U	A	2022-08-15 09:44:36	\N
77	69abe0de-7812-41bd-9124-6a7238aee7d1	le_papeletas	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la papeleta o la region nose","cantidad":"20","status":"A","created_at":"2022-08-16T14:03:49.000000Z","updated_at":"2022-08-16T14:03:49.000000Z"}	1	C	A	2022-08-16 10:03:49	\N
78	69abe0de-7812-41bd-9124-6a7238aee7d1	le_papeletas	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la papeleta o la region nose (editado 1)","cantidad":"20","status":"A","created_at":"2022-08-16T14:03:49.000000Z","updated_at":"2022-08-16T15:04:14.000000Z"}	1	U	A	2022-08-16 11:04:15	\N
79	69abe0de-7812-41bd-9124-6a7238aee7d1	le_cerchas	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la cercha segun region","cantidad":"56","status":"A","created_at":"2022-08-16T15:37:05.000000Z","updated_at":"2022-08-16T15:37:05.000000Z"}	2	C	A	2022-08-16 11:37:05	\N
80	69abe0de-7812-41bd-9124-6a7238aee7d1	le_cerchas	{"id":3,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones 2025","descripcion_region":"Nueva descripcion","cantidad":"152","status":"A","created_at":"2022-08-16T15:37:21.000000Z","updated_at":"2022-08-16T15:37:21.000000Z"}	3	C	A	2022-08-16 11:37:21	\N
81	69abe0de-7812-41bd-9124-6a7238aee7d1	le_cerchas	{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones 2025","descripcion_region":"Nueva descripcion (edicion 1)","cantidad":"152","status":"A","created_at":"2022-08-16T15:37:21.000000Z","updated_at":"2022-08-16T15:40:11.000000Z"}	3	U	A	2022-08-16 11:40:11	\N
82	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_tecnicas	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","caracteristicas":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis dui hendrerit, placerat risus non, mattis dolor. Maecenas tempor enim metus, vitae tempor odio volutpat ac.","valor":"15","unidad":"unidades","cantidad_proyectada":"50000","status":"A","created_at":"2022-08-16T16:55:51.000000Z","updated_at":"2022-08-16T16:55:51.000000Z"}	1	C	A	2022-08-16 12:55:52	\N
83	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_generales	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\\u00edsticas t\\u00e9cnicas","condiciones_complementarias":"Condiciones complementarias","embalaje_forma_entrega":"Forma de embalaje para entrega","tratamiento_material_defectuoso":"Tratamiento del material defectuoso","otras_condiciones_complementarias":"Otras condiciones complementarias","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:00:38.000000Z"}	1	C	A	2022-08-17 10:00:38	\N
84	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_generales	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\\u00edsticas t\\u00e9cnicas (editado 1)","condiciones_complementarias":"Condiciones complementarias (editado 1)","embalaje_forma_entrega":"Forma de embalaje para entrega (editado 1)","tratamiento_material_defectuoso":"Tratamiento del material defectuoso (editado 1)","otras_condiciones_complementarias":"Otras condiciones complementarias (editado 1)","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:11:02.000000Z"}	1	U	A	2022-08-17 10:11:02	\N
85	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_generales	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\\u00edsticas t\\u00e9cnicas","condiciones_complementarias":"Condiciones complementarias","embalaje_forma_entrega":"Forma de embalaje para entrega","tratamiento_material_defectuoso":"Tratamiento del material defectuoso","otras_condiciones_complementarias":"Otras condiciones complementarias","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:18:44.000000Z"}	1	U	A	2022-08-17 10:18:44	\N
86	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_tecnicas_compuestas	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","id_papeletas":"Descripcion de la papeleta o la region nose (editado 1)","id_cerchas":"Descripcion de la cercha segun region","caracteristicas":"El pasaje \\"Lorem ipsum...\\" se ha extra\\u00eddo del texto que dice \\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...","valor":"51","unidad":"Unidades","status":"A","created_at":"2022-08-17T15:21:38.000000Z","updated_at":"2022-08-17T15:21:38.000000Z"}	1	C	A	2022-08-17 11:21:38	\N
87	69abe0de-7812-41bd-9124-6a7238aee7d1	le_caracteristicas_tecnicas_compuestas	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","id_papeletas":"Descripcion de la papeleta o la region nose (editado 1)","id_cerchas":"Descripcion de la cercha segun region","caracteristicas":"El pasaje \\"Lorem ipsum...\\" se ha extra\\u00eddo del texto que dice \\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... (editado 1)","valor":"51","unidad":"Unidades","status":"A","created_at":"2022-08-17T15:21:38.000000Z","updated_at":"2022-08-17T15:30:36.000000Z"}	1	U	A	2022-08-17 11:30:37	\N
88	69abe0de-7812-41bd-9124-6a7238aee7d1	le_modalidad_procesos	{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","abreviatura":"ELE2025","descripcion":"Proceso electoral del 2025","status":"A","created_at":"2022-08-18T15:58:31.000000Z","updated_at":"2022-08-18T15:58:31.000000Z"}	1	C	A	2022-08-18 15:58:31	\N
89	69abe0de-7812-41bd-9124-6a7238aee7d1	le_modalidad_procesos	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","abreviatura":"ELE2025","descripcion":"Proceso electoral del 2025 (editado 1)","status":"A","created_at":"2022-08-18T15:58:31.000000Z","updated_at":"2022-08-18T16:02:44.000000Z"}	1	U	A	2022-08-18 16:02:44	\N
90	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Proceso 1 (editado)","estado_w":"Modalidad del proceso 1 (editado)","status":"A","created_at":"2022-08-11T14:47:02.000000Z","updated_at":"2022-08-18T20:56:05.000000Z"}	2	U	A	2022-08-18 20:56:05	\N
91	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Proceso 1 (editado)","estado_w":"Modalidad del proceso 1 (editado)","status":"A","created_at":"2022-08-11T14:47:02.000000Z","updated_at":"2022-08-18T20:56:09.000000Z"}	2	U	A	2022-08-18 20:56:09	\N
92	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Proceso 1 (editado)","estado_w":"Modalidad del proceso 1 (editado 2)","status":"A","created_at":"2022-08-11T14:47:02.000000Z","updated_at":"2022-08-18T20:56:52.000000Z","gestion":2022}	2	U	A	2022-08-18 20:56:52	\N
93	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":1,"label":"ELABORADO","lang":"es","catalog_code":"ESTADOPROCESO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"ELABORADO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-22T13:34:43.000000Z","created_at":"2022-08-22T13:34:43.000000Z","id":31}	31	C	A	2022-08-22 13:34:43	\N
94	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":2,"label":"VALIDADO","lang":"es","catalog_code":"ESTADOPROCESO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"VALIDADO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-22T13:34:48.000000Z","created_at":"2022-08-22T13:34:48.000000Z","id":32}	32	C	A	2022-08-22 13:34:48	\N
95	69abe0de-7812-41bd-9124-6a7238aee7d1	le_proceso_electoral	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"PEN-2025","nombre":"Elecciones nacionales 2025 (editado 1)","descripcion":"Descripcion de las elecciones nacionales del 2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_procesos":"Proceso 1 (editado)","fecha":"2025-08-17","id_estado_proceso":null,"status":"A","created_at":"2022-08-19T20:49:52.000000Z","updated_at":"2022-08-22T14:09:12.000000Z"}	1	U	A	2022-08-22 14:09:12	\N
96	69abe0de-7812-41bd-9124-6a7238aee7d1	le_catalogos	{"value":3,"label":"APROBADO","lang":"es","catalog_code":"ESTADOPROCESO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"APROBADO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-22T15:13:13.000000Z","created_at":"2022-08-22T15:13:13.000000Z","id":33}	33	C	A	2022-08-22 15:13:13	\N
97	69abe0de-7812-41bd-9124-6a7238aee7d1	le_procesos	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Elecciones generales","estado_w":"Modalidad del proceso 1 (editado 2)","status":"A","created_at":"2022-08-11T14:47:02.000000Z","updated_at":"2022-08-22T16:10:25.000000Z","gestion":2022}	2	U	A	2022-08-22 16:10:25	\N
98	69abe0de-7812-41bd-9124-6a7238aee7d1	le_proceso_electoral	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"PEN-2025","nombre":"Elecciones generales 2025","descripcion":"Descripcion de las elecciones nacionales del 2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_procesos":"Elecciones generales","fecha":"2025-08-17","id_estado_proceso":"ELABORADO","status":"A","created_at":"2022-08-19T20:49:52.000000Z","updated_at":"2022-08-22T16:10:40.000000Z"}	1	U	A	2022-08-22 16:10:40	\N
99	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Eleccion nacional","descripcion":"Elecciones nacionales","status":"A","created_at":"2022-08-09T10:01:21.000000Z","updated_at":"2022-08-22T18:13:37.000000Z"}	1	U	A	2022-08-22 18:13:37	\N
100	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Elecciones departamentales","descripcion":"Departamental","status":"A","created_at":"2022-08-22T18:13:47.000000Z","updated_at":"2022-08-22T18:13:47.000000Z"}	2	C	A	2022-08-22 18:13:48	\N
101	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Departamental","descripcion":"Elecciones departamentales","status":"A","created_at":"2022-08-22T18:13:47.000000Z","updated_at":"2022-08-22T18:14:11.000000Z"}	2	U	A	2022-08-22 18:14:11	\N
102	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Nacional","descripcion":"Elecciones nacionales","status":"A","created_at":"2022-08-09T10:01:21.000000Z","updated_at":"2022-08-22T18:14:18.000000Z"}	1	U	A	2022-08-22 18:14:18	\N
103	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":3,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Municipal","descripcion":"Elecciones municipales","status":"A","created_at":"2022-08-22T18:18:58.000000Z","updated_at":"2022-08-22T18:18:58.000000Z"}	3	C	A	2022-08-22 18:18:58	\N
104	69abe0de-7812-41bd-9124-6a7238aee7d1	le_ambito_elecciones	{"id":4,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Regional","descripcion":"Elecciones regionales","status":"A","created_at":"2022-08-22T18:19:04.000000Z","updated_at":"2022-08-22T18:19:04.000000Z"}	4	C	A	2022-08-22 18:19:04	\N
105	69abe0de-7812-41bd-9124-6a7238aee7d1	le_materiales	{"id":6,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION NACIONAL","id_unidad_medida":"UN","id_destino_material":"NUEVO DESTINO","item":"PAPELETAS","status":"A","created_at":"2022-08-23T12:40:39.000000Z","updated_at":"2022-08-23T12:40:39.000000Z"}	6	C	A	2022-08-23 12:40:39	\N
\.


--
-- Data for Name: le_material_electoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_material_electoral (id, users_sid, id_padron_proyectado, id_proceso, id_ambito_eleccion, descripcion, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	1	2	1	Detalle del material electoral (editado 11)	A	09:46:02	2022-08-12 11:29:11
\.


--
-- Data for Name: le_material_sensible; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_material_sensible (id, users_sid, id_medidas_seguridad, id_det_material_electoral, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: le_materiales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_materiales (id, users_sid, id_grupo, id_unidad_medida, id_destino_material, item, status, created_at, updated_at) FROM stdin;
4	69abe0de-7812-41bd-9124-6a7238aee7d1	2	3	1	ANFORAS	A	2022-08-04 10:34:07	2022-08-04 10:34:07
3	69abe0de-7812-41bd-9124-6a7238aee7d1	1	1	1	TINTA INDIA PERMANENTE COLOR AZUL	A	2022-08-04 10:26:55	2022-08-04 15:40:32
5	69abe0de-7812-41bd-9124-6a7238aee7d1	3	1	2	BOLIGRAFOS AZULES CON TAPA	A	2022-08-04 12:05:50	2022-08-05 09:05:20
6	69abe0de-7812-41bd-9124-6a7238aee7d1	2	1	2	PAPELETAS	A	2022-08-23 12:40:39	2022-08-23 12:40:39
\.


--
-- Data for Name: le_modalidad_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_modalidad_procesos (id, users_sid, abreviatura, descripcion, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	ELE2025	Proceso electoral del 2025 (editado 1)	A	2022-08-18 15:58:31	2022-08-18 16:02:44
\.


--
-- Data for Name: le_padron_proyectado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_padron_proyectado (id, users_sid, id_tipo_eleccion, id_ambito_eleccion, id_proceso, descripcion, fecha_eleccion, habilitados_mesa, jurados_mesa, mesa_notarios, guias_electorales, tecnicos_informacion, personal_limpieza, efectivos_seguridad, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	2	1	2	Descripcion del padron proyectado (editado)	2025-08-10	500	50	15	15	5	5	10	A	2022-08-11 15:43:59	2022-08-11 16:02:21
\.


--
-- Data for Name: le_papeletas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_papeletas (id, users_sid, id_tipo_elecciones, descripcion_region, cantidad, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	1	Descripcion de la papeleta o la region nose (editado 1)	20	A	2022-08-16 10:03:49	2022-08-16 11:04:14
\.


--
-- Data for Name: le_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_persona (id, users_sid, id_usuario, nombres, paterno, materno, ci, cargo, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	69abe0de-7812-41bd-9124-6a7238aee7d1	Jose Lenin	Aparicio	Loayza	4807414 LP	Consultor en linea	A	2022-07-27 11:10:11	\N
\.


--
-- Data for Name: le_presupuesto_material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_presupuesto_material (id, id_proveedores, id_material, costo_unitario, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: le_proceso_electoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_proceso_electoral (id, users_sid, sigla, nombre, descripcion, id_ambito_eleccion, id_procesos, fecha, id_estado_proceso, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	PEN-2025	Elecciones generales 2025	Descripcion de las elecciones nacionales del 2025	1	2	2025-08-17	1	A	2022-08-19 20:49:52	2022-08-22 16:10:40
\.


--
-- Data for Name: le_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_procesos (id, users_sid, id_tipos_flujo, fecha_proceso, num_proceso, descripcion_proceso, estado_w, status, created_at, updated_at, gestion) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	2	2022-08-31	321654	Descripcion de este proceso 01 (editado)	Modalidad de este proceso	X	2022-08-11 12:28:13	2022-08-11 15:11:47	2022
2	69abe0de-7812-41bd-9124-6a7238aee7d1	1	2024-08-09	321654	Elecciones generales	Modalidad del proceso 1 (editado 2)	A	2022-08-11 14:47:02	2022-08-22 16:10:25	2022
\.


--
-- Data for Name: le_proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_proveedores (id, email_empresa, nombre_empresa, nit, pais, ciudad, telefono, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: le_representante_legal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_representante_legal (id, id_proveedores, nombre_completo, telefono_representante, email_representante, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: le_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_rol (id, users_sid, descripcion_rol, abreviatura_rol, status, created_at, updated_at) FROM stdin;
3	69abe0de-7812-41bd-9124-6a7238aee7d1	Control general	*	A	2022-07-27 11:09:00	\N
\.


--
-- Data for Name: le_tipo_elecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_tipo_elecciones (id, users_sid, sigla, nombre, descripcion, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	E2022	Elecciones nacionales 2022	Detalle de las elecciones nacionales 2022 editado 1	A	2022-08-09 16:13:46	2022-08-09 16:17:54
2	69abe0de-7812-41bd-9124-6a7238aee7d1	E2025	Elecciones 2025	Elecciones 2025 ahora editado	A	2022-08-09 16:19:46	2022-08-09 16:19:56
\.


--
-- Data for Name: le_tipos_flujo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_tipos_flujo (id, users_sid, detalle_flujo, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	Detalles de este flujo (editado 1)	A	2022-08-10 09:40:13	2022-08-10 09:44:33
2	69abe0de-7812-41bd-9124-6a7238aee7d1	Segundo flujo	A	2022-08-10 09:44:43	2022-08-10 09:44:43
\.


--
-- Data for Name: le_tipos_flujo_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_tipos_flujo_trabajo (id, users_sid, id_tipos_flujo, origen_estado, destino_estado, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	2	Origen del proceso 1 (editado)	Destino del proceso 1 (editado)	X	2022-08-10 15:41:28	2022-08-10 16:33:13
2	69abe0de-7812-41bd-9124-6a7238aee7d1	2	Origen del proceso 1	Destino del proceso 1	A	2022-08-10 16:33:53	2022-08-10 16:33:53
\.


--
-- Data for Name: le_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_usuarios (id, sid, usuario, password, email, remember_token, ttl, wrong_login_attempt, date_wrong_login_attempt, client_ip, code, status, created_at, updated_at, profile_picture) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	jose.aparicio	$2y$10$b9LgZL6qoVZJpCD7REetU.SXsm6wceG65xl6onkjwTy6QMxB4iIOq	ohkmalganis@gmail.com	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMVwvYXBpXC9sb2dpbiIsImlhdCI6MTY2MTQzMDk0MCwiZXhwIjoxNjY2NjE0OTQwLCJuYmYiOjE2NjE0MzA5NDAsImp0aSI6Ijk3eVdaTlVpOXA4aDJoUWYiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.kUR62x8btihToGZJPD5lqM4uGGtfm_m6sbArTl9GjGU	5184000	0	2022-08-12	127.0.0.1	\N	A	2022-07-26 15:48:25	2022-08-25 12:35:40	\N
\.


--
-- Data for Name: le_usuarios_passwords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_usuarios_passwords (id, users_sid, id_usuario, password, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: le_usuarios_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.le_usuarios_rol (id, users_sid, id_rol, id_usuario, status, created_at, updated_at) FROM stdin;
1	69abe0de-7812-41bd-9124-6a7238aee7d1	3	69abe0de-7812-41bd-9124-6a7238aee7d1	A	2022-07-27 11:09:00	\N
\.


--
-- Name: le_ambito_elecciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_ambito_elecciones_id_seq', 4, true);


--
-- Name: le_caracteristicas_generales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_generales_id_seq', 1, true);


--
-- Name: le_caracteristicas_tecnicas_compuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_tecnicas_compuestas_id_seq', 1, true);


--
-- Name: le_caracteristicas_tecnicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_tecnicas_id_seq', 1, true);


--
-- Name: le_catalogos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_catalogos_id_seq', 33, true);


--
-- Name: le_det_material_electoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_det_material_electoral_id_seq', 4, true);


--
-- Name: le_estados_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_estados_procesos_id_seq', 2, true);


--
-- Name: le_factor_distribucion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_factor_distribucion_id_seq', 2, true);


--
-- Name: le_history_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_history_data_id_seq', 105, true);


--
-- Name: le_material_electoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_material_electoral_id_seq', 1, true);


--
-- Name: le_material_sensible_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_material_sensible_id_seq', 1, false);


--
-- Name: le_materiales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_materiales_id_seq', 6, true);


--
-- Name: le_modalidad_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_modalidad_procesos_id_seq', 1, true);


--
-- Name: le_padron_proyectado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_padron_proyectado_id_seq', 1, true);


--
-- Name: le_papeletas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_papeletas_id_seq', 3, true);


--
-- Name: le_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_persona_id_seq', 1, true);


--
-- Name: le_presupuesto_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_presupuesto_material_id_seq', 1, false);


--
-- Name: le_proceso_electoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_proceso_electoral_id_seq', 5, true);


--
-- Name: le_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_procesos_id_seq', 2, true);


--
-- Name: le_proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_proveedores_id_seq', 1, false);


--
-- Name: le_representante_legal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_representante_legal_id_seq', 1, false);


--
-- Name: le_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_rol_id_seq', 3, true);


--
-- Name: le_tipo_elecciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipo_elecciones_id_seq', 2, true);


--
-- Name: le_tipos_flujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipos_flujo_id_seq', 2, true);


--
-- Name: le_tipos_flujo_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipos_flujo_trabajo_id_seq', 2, true);


--
-- Name: le_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_id_seq', 1, false);


--
-- Name: le_usuarios_passwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_passwords_id_seq', 1, false);


--
-- Name: le_usuarios_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_rol_id_seq', 1, true);


--
-- Name: le_ambito_elecciones le_ambito_elecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones
    ADD CONSTRAINT le_ambito_elecciones_pkey PRIMARY KEY (id);


--
-- Name: le_caracteristicas_generales le_caracteristicas_generales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT le_caracteristicas_generales_pkey PRIMARY KEY (id);


--
-- Name: le_caracteristicas_tecnicas_compuestas le_caracteristicas_tecnicas_compuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT le_caracteristicas_tecnicas_compuestas_pkey PRIMARY KEY (id);


--
-- Name: le_caracteristicas_tecnicas le_caracteristicas_tecnicas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT le_caracteristicas_tecnicas_pkey PRIMARY KEY (id);


--
-- Name: le_catalogos le_catalogos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos
    ADD CONSTRAINT le_catalogos_pkey PRIMARY KEY (id);


--
-- Name: le_cerchas le_cerchas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_cerchas
    ADD CONSTRAINT le_cerchas_pkey PRIMARY KEY (id);


--
-- Name: le_det_material_electoral le_det_material_electoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT le_det_material_electoral_pkey PRIMARY KEY (id);


--
-- Name: le_estados_procesos le_estados_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos
    ADD CONSTRAINT le_estados_procesos_pkey PRIMARY KEY (id);


--
-- Name: le_factor_distribucion le_factor_distribucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion
    ADD CONSTRAINT le_factor_distribucion_pkey PRIMARY KEY (id);


--
-- Name: le_history_data le_history_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data
    ADD CONSTRAINT le_history_data_pkey PRIMARY KEY (id);


--
-- Name: le_material_electoral le_material_electoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT le_material_electoral_pkey PRIMARY KEY (id);


--
-- Name: le_material_sensible le_material_sensible_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT le_material_sensible_pkey PRIMARY KEY (id);


--
-- Name: le_materiales le_materiales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales
    ADD CONSTRAINT le_materiales_pkey PRIMARY KEY (id);


--
-- Name: le_modalidad_procesos le_modalidad_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos
    ADD CONSTRAINT le_modalidad_procesos_pkey PRIMARY KEY (id);


--
-- Name: le_padron_proyectado le_padron_proyectado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT le_padron_proyectado_pkey PRIMARY KEY (id);


--
-- Name: le_papeletas le_papeletas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT le_papeletas_pkey PRIMARY KEY (id);


--
-- Name: le_persona le_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT le_persona_pkey PRIMARY KEY (id);


--
-- Name: le_presupuesto_material le_presupuesto_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT le_presupuesto_material_pkey PRIMARY KEY (id);


--
-- Name: le_proceso_electoral le_proceso_electoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proceso_electoral
    ADD CONSTRAINT le_proceso_electoral_pkey PRIMARY KEY (id);


--
-- Name: le_procesos le_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT le_procesos_pkey PRIMARY KEY (id);


--
-- Name: le_proveedores le_proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proveedores
    ADD CONSTRAINT le_proveedores_pkey PRIMARY KEY (id);


--
-- Name: le_representante_legal le_representante_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal
    ADD CONSTRAINT le_representante_legal_pkey PRIMARY KEY (id);


--
-- Name: le_rol le_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol
    ADD CONSTRAINT le_rol_pkey PRIMARY KEY (id);


--
-- Name: le_tipo_elecciones le_tipo_elecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones
    ADD CONSTRAINT le_tipo_elecciones_pkey PRIMARY KEY (id);


--
-- Name: le_tipos_flujo le_tipos_flujo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo
    ADD CONSTRAINT le_tipos_flujo_pkey PRIMARY KEY (id);


--
-- Name: le_tipos_flujo_trabajo le_tipos_flujo_trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo
    ADD CONSTRAINT le_tipos_flujo_trabajo_pkey PRIMARY KEY (id);


--
-- Name: le_usuarios_passwords le_usuarios_passwords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT le_usuarios_passwords_pkey PRIMARY KEY (id);


--
-- Name: le_usuarios le_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios
    ADD CONSTRAINT le_usuarios_pkey PRIMARY KEY (id);


--
-- Name: le_usuarios_rol le_usuarios_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT le_usuarios_rol_pkey PRIMARY KEY (id);


--
-- Name: le_usuarios le_usuarios_sid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios
    ADD CONSTRAINT le_usuarios_sid UNIQUE (sid);


--
-- Name: le_det_material_electoral id_ambito_eleccion_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_ambito_eleccion_le_det_material_electoral_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- Name: le_material_electoral id_ambito_eleccion_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_ambito_eleccion_le_material_electoral_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- Name: le_padron_proyectado id_ambito_eleccion_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_ambito_eleccion_le_padron_proyectado_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- Name: le_proceso_electoral id_ambito_eleccion_le_proceso_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proceso_electoral
    ADD CONSTRAINT id_ambito_eleccion_le_proceso_electoral_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- Name: le_caracteristicas_tecnicas_compuestas id_cerchas_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_cerchas_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_cerchas) REFERENCES public.le_cerchas(id);


--
-- Name: le_caracteristicas_tecnicas id_det_material_electoral_le_caracteristicas_tecnicas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT id_det_material_electoral_le_caracteristicas_tecnicas_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- Name: le_caracteristicas_generales id_det_material_electoral_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT id_det_material_electoral_le_det_material_electoral_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- Name: le_material_sensible id_det_material_electoral_le_materiales_sensible_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT id_det_material_electoral_le_materiales_sensible_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- Name: le_det_material_electoral id_factor_distribucion_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_factor_distribucion_le_det_material_electoral_fk FOREIGN KEY (id_factor_distribucion) REFERENCES public.le_factor_distribucion(id);


--
-- Name: le_caracteristicas_tecnicas_compuestas id_material_electoral_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_material_electoral_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- Name: le_det_material_electoral id_material_electoral_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_material_electoral_le_det_material_electoral_fk FOREIGN KEY (id_material_electoral) REFERENCES public.le_material_electoral(id);


--
-- Name: le_det_material_electoral id_material_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_material_le_det_material_electoral_fk FOREIGN KEY (id_material) REFERENCES public.le_materiales(id);


--
-- Name: le_presupuesto_material id_material_le_presupuesto_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT id_material_le_presupuesto_material_fk FOREIGN KEY (id_material) REFERENCES public.le_materiales(id);


--
-- Name: le_material_electoral id_padron_proyectado_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_padron_proyectado_le_material_electoral_fk FOREIGN KEY (id_padron_proyectado) REFERENCES public.le_padron_proyectado(id);


--
-- Name: le_caracteristicas_tecnicas_compuestas id_papeletas_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_papeletas_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_papeletas) REFERENCES public.le_papeletas(id);


--
-- Name: le_material_electoral id_proceso_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_proceso_le_material_electoral_fk FOREIGN KEY (id_proceso) REFERENCES public.le_procesos(id);


--
-- Name: le_padron_proyectado id_proceso_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_proceso_le_padron_proyectado_fk FOREIGN KEY (id_proceso) REFERENCES public.le_procesos(id);


--
-- Name: le_proceso_electoral id_procesos_le_proceso_eleccion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proceso_electoral
    ADD CONSTRAINT id_procesos_le_proceso_eleccion_fk FOREIGN KEY (id_procesos) REFERENCES public.le_procesos(id);


--
-- Name: le_presupuesto_material id_proveedores_le_presupuesto_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT id_proveedores_le_presupuesto_material_fk FOREIGN KEY (id_proveedores) REFERENCES public.le_proveedores(id);


--
-- Name: le_representante_legal id_proveedores_le_representante_legal_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal
    ADD CONSTRAINT id_proveedores_le_representante_legal_fk FOREIGN KEY (id_proveedores) REFERENCES public.le_proveedores(id);


--
-- Name: le_usuarios_rol id_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT id_rol_fk FOREIGN KEY (id_rol) REFERENCES public.le_rol(id);


--
-- Name: le_padron_proyectado id_tipo_eleccion_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_tipo_eleccion_le_padron_proyectado_fk FOREIGN KEY (id_tipo_eleccion) REFERENCES public.le_tipo_elecciones(id);


--
-- Name: le_papeletas id_tipo_elecciones_le_papeletas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT id_tipo_elecciones_le_papeletas_fk FOREIGN KEY (id_tipo_elecciones) REFERENCES public.le_tipo_elecciones(id);


--
-- Name: le_procesos id_tipos_flujo_le_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT id_tipos_flujo_le_procesos_fk FOREIGN KEY (id_tipos_flujo) REFERENCES public.le_tipos_flujo(id);


--
-- Name: le_persona id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- Name: le_usuarios_passwords id_usuario_le_usuarios_passwords_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT id_usuario_le_usuarios_passwords_fk FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- Name: le_usuarios_rol id_usuario_le_usuarios_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT id_usuario_le_usuarios_rol FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- Name: le_ambito_elecciones users_sid_le_ambito_elecciones_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones
    ADD CONSTRAINT users_sid_le_ambito_elecciones_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_caracteristicas_tecnicas_compuestas users_sid_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT users_sid_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_caracteristicas_tecnicas users_sid_le_caracteristicas_tecnicas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT users_sid_le_caracteristicas_tecnicas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_catalogos users_sid_le_caralogos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos
    ADD CONSTRAINT users_sid_le_caralogos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_det_material_electoral users_sid_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT users_sid_le_det_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_caracteristicas_generales users_sid_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT users_sid_le_det_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_estados_procesos users_sid_le_estados_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos
    ADD CONSTRAINT users_sid_le_estados_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_factor_distribucion users_sid_le_factor_distribucion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion
    ADD CONSTRAINT users_sid_le_factor_distribucion_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_history_data users_sid_le_history_data_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data
    ADD CONSTRAINT users_sid_le_history_data_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_material_electoral users_sid_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT users_sid_le_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_materiales users_sid_le_materiales_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales
    ADD CONSTRAINT users_sid_le_materiales_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_material_sensible users_sid_le_materiales_sensible_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT users_sid_le_materiales_sensible_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_modalidad_procesos users_sid_le_modalidad_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos
    ADD CONSTRAINT users_sid_le_modalidad_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_padron_proyectado users_sid_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT users_sid_le_padron_proyectado_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_papeletas users_sid_le_papeletas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT users_sid_le_papeletas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_persona users_sid_le_persona_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT users_sid_le_persona_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_proceso_electoral users_sid_le_proceso_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proceso_electoral
    ADD CONSTRAINT users_sid_le_proceso_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_procesos users_sid_le_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT users_sid_le_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_rol users_sid_le_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol
    ADD CONSTRAINT users_sid_le_rol_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_tipo_elecciones users_sid_le_tipo_elecciones_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones
    ADD CONSTRAINT users_sid_le_tipo_elecciones_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_tipos_flujo users_sid_le_tipos_flujo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo
    ADD CONSTRAINT users_sid_le_tipos_flujo_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_tipos_flujo_trabajo users_sid_le_tipos_flujo_trabajo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo
    ADD CONSTRAINT users_sid_le_tipos_flujo_trabajo_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_usuarios_passwords users_sid_le_usuarios_passwords_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT users_sid_le_usuarios_passwords_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- Name: le_usuarios_rol users_sid_le_usuarios_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT users_sid_le_usuarios_rol_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- PostgreSQL database dump complete
--

