--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-17 15:00:11

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 16596)
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
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE le_ambito_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_ambito_elecciones IS 'Ambito de elecciones';


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.id IS 'Auto generado';


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.nombre IS 'Nombre del ambito electoral';


--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.descripcion IS 'Descripcion del ambito electoral';


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.created_at IS 'Generado automaticamente';


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN le_ambito_elecciones.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_ambito_elecciones.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 228 (class 1259 OID 16595)
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
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 228
-- Name: le_ambito_elecciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_ambito_elecciones_id_seq OWNED BY public.le_ambito_elecciones.id;


--
-- TOC entry 253 (class 1259 OID 16843)
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
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE le_caracteristicas_generales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_generales IS 'Caracteristicas generales';


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.id IS 'Auto generado';


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.id_det_material_electoral IS 'Relacionado a la DET material electoral';


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.requisitos_caracteristicas_tecnicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.requisitos_caracteristicas_tecnicas IS 'Caracteristicas tecnicas del item';


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.condiciones_complementarias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.condiciones_complementarias IS 'Condiciones complementarias que debe cumplir el item';


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.embalaje_forma_entrega; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.embalaje_forma_entrega IS 'Forma de entrega y embalaje del item';


--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.tratamiento_material_defectuoso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.tratamiento_material_defectuoso IS 'Detalle del tratamiento del material defectuoso, dañado o sobrante';


--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.otras_condiciones_complementarias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.otras_condiciones_complementarias IS 'Descripcion de otras condiciones complemetarias';


--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.created_at IS 'Fecha y hora automatica';


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN le_caracteristicas_generales.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_generales.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 252 (class 1259 OID 16842)
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
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 252
-- Name: le_caracteristicas_generales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_generales_id_seq OWNED BY public.le_caracteristicas_generales.id;


--
-- TOC entry 262 (class 1259 OID 16930)
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
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE le_caracteristicas_tecnicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_tecnicas IS 'Caracteristicas tecnicas';


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.id IS 'Generado automaticamente';


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.id_det_material_electoral IS 'Relacionado a la tabla det material electoral';


--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.caracteristicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.caracteristicas IS 'Caracteristicas';


--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.valor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.valor IS 'Valor numerico del material';


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.unidad IS 'Unidad de medida del material';


--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.cantidad_proyectada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.cantidad_proyectada IS 'Cantidad del material proyectado';


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN le_caracteristicas_tecnicas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 264 (class 1259 OID 16952)
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
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE le_caracteristicas_tecnicas_compuestas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_caracteristicas_tecnicas_compuestas IS 'Caracteristicas compuestas';


--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id IS 'Generado automaticamente';


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_det_material_electoral IS 'Relacionado a la tabla det material electoral';


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_papeletas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_papeletas IS 'Relacionado a la tabla papeletas';


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.id_cerchas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.id_cerchas IS 'Relacionado a la tabla cerchas';


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.caracteristicas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.caracteristicas IS 'Caracteristicas del material';


--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.valor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.valor IS 'Valor numerico del material';


--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.unidad IS 'Unidad de medida del material';


--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN le_caracteristicas_tecnicas_compuestas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_caracteristicas_tecnicas_compuestas.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 263 (class 1259 OID 16951)
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
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 263
-- Name: le_caracteristicas_tecnicas_compuestas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_tecnicas_compuestas_id_seq OWNED BY public.le_caracteristicas_tecnicas_compuestas.id;


--
-- TOC entry 261 (class 1259 OID 16929)
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
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 261
-- Name: le_caracteristicas_tecnicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_caracteristicas_tecnicas_id_seq OWNED BY public.le_caracteristicas_tecnicas.id;


--
-- TOC entry 223 (class 1259 OID 16556)
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
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE le_catalogos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_catalogos IS 'Logistica electoral catalogos generales';


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.id IS 'Auto generado';


--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.value IS 'El valor del catalogo';


--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.label; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.label IS 'El texto del catalogo';


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.descripcion IS 'Texto largo del catalogo puede ser nulo';


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.lang; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.lang IS 'El idioma';


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.catalog_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_code IS 'El codigo unico del catalogo';


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.catalog_code_dep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_code_dep IS 'Catalogo padre para dependencia';


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.catalog_id_dep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.catalog_id_dep IS 'Valor del catalogo padre para dependencia';


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.svg_image; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.svg_image IS 'URL de la imagen';


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN le_catalogos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_catalogos.created_at IS 'Fecha y hora automatica';


--
-- TOC entry 222 (class 1259 OID 16555)
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
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 222
-- Name: le_catalogos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_catalogos_id_seq OWNED BY public.le_catalogos.id;


--
-- TOC entry 259 (class 1259 OID 16901)
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
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE le_papeletas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_papeletas IS 'Papeletas';


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.id IS 'Generado automaticamente';


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.users_sid IS 'UUID relacionado a la tabla de usuarios';


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.id_tipo_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.id_tipo_elecciones IS 'Relacionado al tipo de elecciones';


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.descripcion_region; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.descripcion_region IS 'Descripcion del nombre de la region segun el tipo de eleccion';


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.cantidad IS 'La cantidad';


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN le_papeletas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_papeletas.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 258 (class 1259 OID 16900)
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
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 258
-- Name: le_papeletas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_papeletas_id_seq OWNED BY public.le_papeletas.id;


--
-- TOC entry 260 (class 1259 OID 16920)
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
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE le_cerchas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_cerchas IS 'Cerchas del material ';


--
-- TOC entry 251 (class 1259 OID 16814)
-- Name: le_det_material_electoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_det_material_electoral (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_material_electoral integer NOT NULL,
    id_material integer NOT NULL,
    utilidad_material character varying NOT NULL,
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
    id_instancia_aprobacion_diseno integer NOT NULL,
    id_instancia_aprobacion_arte integer NOT NULL,
    tiempo_produccion_adquisicion integer NOT NULL,
    id_lugar_recepcion integer NOT NULL,
    costo_unitario numeric(10,2) NOT NULL,
    costo_total numeric(10,2) NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_det_material_electoral OWNER TO postgres;

--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE le_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_det_material_electoral IS 'DET Material electoral';


--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id IS 'Auto generado';


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_material_electoral IS 'Relacionado al material electoral';


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_material IS 'Relacionado al material';


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.utilidad_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.utilidad_material IS 'Describir como y para que se utilizara el material';


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_partida; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_partida IS 'Relacionado a la partida presupuestaria';


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_ambito_eleccion IS 'Relacionado al amtido de la eleccion';


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_factor_distribucion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_factor_distribucion IS 'Relacionado al factor de distribucion';


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_responsable_adquisicion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_responsable_adquisicion IS 'Relacionado al responsable de adquisicion';


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.margen_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.margen_seguridad IS 'Margen de seguridad %';


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_tipo_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_tipo_material IS 'El tipo del material';


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.cantidad_margen_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.cantidad_margen_seguridad IS 'Calculo de cantidad de material * margen de seguridad';


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.cantidad_total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.cantidad_total IS 'Cantidad total del material proyectado';


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.material_sensible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_sensible IS 'Definir si el material es sensible (SI, NO)';


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.material_fungible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_fungible IS 'Definir si el material es fungible (SI, NO)';


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.material_reutilizable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.material_reutilizable IS 'Definir si el material es reutilizable (SI, NO)';


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_instancia_aprobacion_diseno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_instancia_aprobacion_diseno IS 'Relacionado a la instancia de aprobacion';


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_instancia_aprobacion_arte; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_instancia_aprobacion_arte IS 'Relacionado a la instancia de aprobacion del arte';


--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.tiempo_produccion_adquisicion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.tiempo_produccion_adquisicion IS 'Tiempo que tomara la produccion del material en dias calendario';


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.id_lugar_recepcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.id_lugar_recepcion IS 'Relacionado con en lugar de recepcion';


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.costo_unitario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.costo_unitario IS 'Costo unitario del material';


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.costo_total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.costo_total IS 'Costo total del material';


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN le_det_material_electoral.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_det_material_electoral.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 250 (class 1259 OID 16813)
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
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 250
-- Name: le_det_material_electoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_det_material_electoral_id_seq OWNED BY public.le_det_material_electoral.id;


--
-- TOC entry 235 (class 1259 OID 16633)
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
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE le_estados_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_estados_procesos IS 'Estados procesos';


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.id IS 'Auto generado';


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.sigla_estados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.sigla_estados IS 'Abreviatura del estado del proceso';


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.descripcion_estados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.descripcion_estados IS 'Descripcion del estado del proceso (Borrador, Validado, Aprobado, Construido)';


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.created_at IS 'Generado automaticamente';


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN le_estados_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_estados_procesos.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 234 (class 1259 OID 16632)
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
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 234
-- Name: le_estados_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_estados_procesos_id_seq OWNED BY public.le_estados_procesos.id;


--
-- TOC entry 255 (class 1259 OID 16862)
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
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE le_factor_distribucion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_factor_distribucion IS 'Factor de distribucion';


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.id IS 'Auto generado';


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.id_destino_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.id_destino_material IS 'Relacionado al destino del material';


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN le_factor_distribucion.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_factor_distribucion.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 254 (class 1259 OID 16861)
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
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 254
-- Name: le_factor_distribucion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_factor_distribucion_id_seq OWNED BY public.le_factor_distribucion.id;


--
-- TOC entry 221 (class 1259 OID 16537)
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
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE le_history_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_history_data IS 'Registro historico de todas las tablas';


--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.id IS 'Auto generado';


--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.model; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.model IS 'El nombre del modelo (tabla)';


--
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.data IS 'Todo el dato modificado';


--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.id_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.id_data IS 'el ID del registro';


--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.kind; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.kind IS 'CRUD, C=Registro, R=Lectura, U=Actualizado, D=Eliminado';


--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN le_history_data.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_history_data.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 220 (class 1259 OID 16536)
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
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 220
-- Name: le_history_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_history_data_id_seq OWNED BY public.le_history_data.id;


--
-- TOC entry 243 (class 1259 OID 16738)
-- Name: le_material_electoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.le_material_electoral (
    id integer NOT NULL,
    users_sid character varying NOT NULL,
    id_padron_proyectado integer NOT NULL,
    id_proceso integer NOT NULL,
    id_ambito_eleccion integer NOT NULL,
    descripcion character varying NOT NULL,
    status character varying NOT NULL,
    created_at time without time zone NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.le_material_electoral OWNER TO postgres;

--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE le_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_material_electoral IS 'Material electoral';


--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id IS 'Auto generado';


--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.id_padron_proyectado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_padron_proyectado IS 'Relacionado a padron proyectado';


--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.id_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_proceso IS 'Relacionado a proceso';


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.id_ambito_eleccion IS 'Relacionado a ambito eleccion';


--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.descripcion IS 'Descripcion del proceso o calculo de material electoral';


--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN le_material_electoral.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_electoral.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 242 (class 1259 OID 16737)
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
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 242
-- Name: le_material_electoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_material_electoral_id_seq OWNED BY public.le_material_electoral.id;


--
-- TOC entry 257 (class 1259 OID 16881)
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
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE le_material_sensible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_material_sensible IS 'Material sensible';


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id IS 'Auto generado';


--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.id_medidas_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id_medidas_seguridad IS 'Relacionado con medidas de seguridad';


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.id_det_material_electoral; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.id_det_material_electoral IS 'Relacionado a DET material electoral';


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN le_material_sensible.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_material_sensible.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 256 (class 1259 OID 16880)
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
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 256
-- Name: le_material_sensible_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_material_sensible_id_seq OWNED BY public.le_material_sensible.id;


--
-- TOC entry 225 (class 1259 OID 16578)
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
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE le_materiales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_materiales IS 'Los materiales';


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id IS 'Auto generado';


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.id_grupo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_grupo IS 'Relacionado al catalogo GRUPOS';


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.id_unidad_medida; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_unidad_medida IS 'Relacionado al catalogo MEDIDA';


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.id_destino_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.id_destino_material IS 'Relacionado al catalogo DESTINO';


--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.item IS 'Nombre completo del item y su descripcion a detalle';


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN le_materiales.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_materiales.updated_at IS 'Fecha que puede quedar en nulo';


--
-- TOC entry 224 (class 1259 OID 16577)
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
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 224
-- Name: le_materiales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_materiales_id_seq OWNED BY public.le_materiales.id;


--
-- TOC entry 231 (class 1259 OID 16605)
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
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE le_modalidad_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_modalidad_procesos IS 'Modalidad procesos';


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.id IS 'Auto generado';


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.abreviatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.abreviatura IS 'Abreviatura de la modalidad de procesos';


--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.descripcion IS 'Descripcion de la modalidad de procesos';


--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.created_at IS 'Generado automaticamente';


--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN le_modalidad_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_modalidad_procesos.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 230 (class 1259 OID 16604)
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
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 230
-- Name: le_modalidad_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_modalidad_procesos_id_seq OWNED BY public.le_modalidad_procesos.id;


--
-- TOC entry 241 (class 1259 OID 16701)
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
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE le_padron_proyectado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_padron_proyectado IS 'Padron proyectado';


--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id IS 'Auto generado';


--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.id_tipo_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_tipo_eleccion IS 'Relacionado a tipo elecciones';


--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.id_ambito_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_ambito_eleccion IS 'Relacionado a Ambito de elecciones';


--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.id_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.id_proceso IS 'Relacionado a procesos';


--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.descripcion IS 'Descripcion o detalle del proceso de proyeccion del padron';


--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.fecha_eleccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.fecha_eleccion IS 'Fecha alternativa de la nueva eleccion';


--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.habilitados_mesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.habilitados_mesa IS 'Cantidad de habilitados o asignar por mesa';


--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.jurados_mesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.jurados_mesa IS 'Cantidad de jurados a asignar por mesa';


--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.mesa_notarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.mesa_notarios IS 'Cantidad de mesas a asignar por notario';


--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.guias_electorales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.guias_electorales IS 'Cantidad de guias electorales por mesa';


--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.tecnicos_informacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.tecnicos_informacion IS 'Cantidad de tecnicos de informacion computarizada por recinto';


--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.personal_limpieza; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.personal_limpieza IS 'Cantidad de personal de limpieza por recinto';


--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.efectivos_seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.efectivos_seguridad IS 'Cantidad de efectivos de seguridad por recinto';


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN le_padron_proyectado.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_padron_proyectado.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 240 (class 1259 OID 16700)
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
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 240
-- Name: le_padron_proyectado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_padron_proyectado_id_seq OWNED BY public.le_padron_proyectado.id;


--
-- TOC entry 217 (class 1259 OID 16494)
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
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE le_persona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_persona IS 'Tabla persona relacionada al usuario registrado';


--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.id IS 'Auto generado';


--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.id_usuario IS 'Relacionado al usuario al que pertenece la persona';


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.nombres; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.nombres IS 'ambos nombres';


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.paterno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.paterno IS 'apellido paterno';


--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.materno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.materno IS 'apellido materno';


--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.ci; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.ci IS 'documento de identidad mas extension';


--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.cargo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.cargo IS 'Cargo que ocupa en la entidad';


--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN le_persona.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_persona.created_at IS 'Fecha y hora automatica';


--
-- TOC entry 216 (class 1259 OID 16493)
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
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 216
-- Name: le_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_persona_id_seq OWNED BY public.le_persona.id;


--
-- TOC entry 249 (class 1259 OID 16795)
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
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE le_presupuesto_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_presupuesto_material IS 'Presupuesto del material';


--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id IS 'Auto generado';


--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.id_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id_proveedores IS 'Relacionado al proveedor registrado';


--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.id_material; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.id_material IS 'Material elegido en el presupuesto';


--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.costo_unitario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.costo_unitario IS 'Expresado con dos decimales';


--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN le_presupuesto_material.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_presupuesto_material.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 248 (class 1259 OID 16794)
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
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 248
-- Name: le_presupuesto_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_presupuesto_material_id_seq OWNED BY public.le_presupuesto_material.id;


--
-- TOC entry 239 (class 1259 OID 16676)
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
    updated_at timestamp without time zone
);


ALTER TABLE public.le_procesos OWNER TO postgres;

--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE le_procesos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_procesos IS 'Procesos';


--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.id IS 'Auto generado';


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.id_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.id_tipos_flujo IS 'Relacionado a Tipos de Flujo';


--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.fecha_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.fecha_proceso IS 'Fecha de proceso';


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.num_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.num_proceso IS 'Numero correlativo del proceso';


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.descripcion_proceso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.descripcion_proceso IS 'Descripcion adjunta al proceso';


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.estado_w; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.estado_w IS 'Abreviatura de la modalidad del proceso';


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN le_procesos.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_procesos.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 238 (class 1259 OID 16675)
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
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 238
-- Name: le_procesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_procesos_id_seq OWNED BY public.le_procesos.id;


--
-- TOC entry 245 (class 1259 OID 16772)
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
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE le_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_proveedores IS 'Proveedores';


--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.id IS 'Auto generado';


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.email_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.email_empresa IS 'Correo electronico de reconocimiento';


--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.nombre_empresa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.nombre_empresa IS 'Nombre de la empresa';


--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.nit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.nit IS 'Numero de identificacion tributaria';


--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.pais IS 'Nombre del pais';


--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.ciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.ciudad IS 'Nombre de la ciudad';


--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.telefono IS 'Numero de telefono';


--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 245
-- Name: COLUMN le_proveedores.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_proveedores.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 244 (class 1259 OID 16771)
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
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 244
-- Name: le_proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_proveedores_id_seq OWNED BY public.le_proveedores.id;


--
-- TOC entry 247 (class 1259 OID 16781)
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
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE le_representante_legal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_representante_legal IS 'Representante legal';


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.id IS 'Auto generado';


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.id_proveedores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.id_proveedores IS 'Relacionado al proveedor registrado';


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.nombre_completo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.nombre_completo IS 'Nombre completo del representante legal';


--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.telefono_representante; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.telefono_representante IS 'Telefono del representante legal';


--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.email_representante; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.email_representante IS 'Correo electronico del representante';


--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.created_at IS 'Fecha generada automaticamente';


--
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN le_representante_legal.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_representante_legal.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 246 (class 1259 OID 16780)
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
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 246
-- Name: le_representante_legal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_representante_legal_id_seq OWNED BY public.le_representante_legal.id;


--
-- TOC entry 213 (class 1259 OID 16461)
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
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE le_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_rol IS 'Logistica electoral rol';


--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN le_rol.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.id IS 'Auto generado';


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN le_rol.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN le_rol.descripcion_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.descripcion_rol IS 'Descripcion del rol';


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN le_rol.abreviatura_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.abreviatura_rol IS 'Sigla del rol';


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN le_rol.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_rol.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 212 (class 1259 OID 16460)
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
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 212
-- Name: le_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_rol_id_seq OWNED BY public.le_rol.id;


--
-- TOC entry 227 (class 1259 OID 16587)
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
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE le_tipo_elecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipo_elecciones IS 'Tipo de elecciones';


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.id IS 'Auto generado';


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.sigla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.sigla IS 'Sigla del tipo de eleccion';


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.nombre IS 'Nombre del tipo de eleccion';


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.descripcion IS 'Descripcion del tipo de eleccion';


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.created_at IS 'Auto generado por el sistema';


--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN le_tipo_elecciones.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipo_elecciones.updated_at IS 'Fecha puede ser nulo';


--
-- TOC entry 226 (class 1259 OID 16586)
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
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 226
-- Name: le_tipo_elecciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipo_elecciones_id_seq OWNED BY public.le_tipo_elecciones.id;


--
-- TOC entry 233 (class 1259 OID 16619)
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
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE le_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipos_flujo IS 'Tipos de flujo';


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.id IS 'Auto generado';


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.detalle_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.detalle_flujo IS 'Detalle del flujo';


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.created_at IS 'Generado automaticamente';


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN le_tipos_flujo.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 232 (class 1259 OID 16618)
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
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 232
-- Name: le_tipos_flujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipos_flujo_id_seq OWNED BY public.le_tipos_flujo.id;


--
-- TOC entry 237 (class 1259 OID 16662)
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
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE le_tipos_flujo_trabajo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_tipos_flujo_trabajo IS 'Tipos de flujo de trabajo';


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.id IS 'Auto generado';


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.id_tipos_flujo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.id_tipos_flujo IS 'Relacionado a Tipos de Flujo';


--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.origen_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.origen_estado IS 'Abreviatura del origen del proceso';


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.destino_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.destino_estado IS 'Abreviatura del destino del proceso';


--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.created_at IS 'Auto generado por el sistema';


--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN le_tipos_flujo_trabajo.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_tipos_flujo_trabajo.updated_at IS 'Fecha no obligatoria';


--
-- TOC entry 236 (class 1259 OID 16661)
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
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 236
-- Name: le_tipos_flujo_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_tipos_flujo_trabajo_id_seq OWNED BY public.le_tipos_flujo_trabajo.id;


--
-- TOC entry 211 (class 1259 OID 16442)
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
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE le_usuarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios IS 'Tabla de usuarios';


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.sid IS 'UUID';


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.usuario IS 'Nombre del usuario';


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.password IS 'Su contraseña';


--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.email IS 'Su correo electronico';


--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.remember_token IS 'El token';


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.ttl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.ttl IS 'Tiempo de la sesion';


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.wrong_login_attempt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.wrong_login_attempt IS 'Veces que ha fallado su inicio de sesion';


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.date_wrong_login_attempt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.date_wrong_login_attempt IS 'Fecha de cuando fallo su inicio de sesion';


--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.client_ip; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.client_ip IS 'El ip del cliente';


--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.code IS 'Codigo de recuperacion de usuario';


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.status IS 'A=Activo, X=Eliminado, B=Bloqueado';


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.created_at IS 'La fecha del registro';


--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.updated_at IS 'La fecha de la modificacion';


--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN le_usuarios.profile_picture; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios.profile_picture IS 'Fotografia de perfil';


--
-- TOC entry 210 (class 1259 OID 16441)
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
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 210
-- Name: le_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_id_seq OWNED BY public.le_usuarios.id;


--
-- TOC entry 219 (class 1259 OID 16518)
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
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE le_usuarios_passwords; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios_passwords IS 'las contraseñas de los usuarios';


--
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.id IS 'Auto generado';


--
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.id_usuario IS 'Relacionado al usuario al que pertenece la contraseña';


--
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.password IS 'El password en formato AES revertible';


--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN le_usuarios_passwords.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_passwords.created_at IS 'Generado automaticamente';


--
-- TOC entry 218 (class 1259 OID 16517)
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
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 218
-- Name: le_usuarios_passwords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_passwords_id_seq OWNED BY public.le_usuarios_passwords.id;


--
-- TOC entry 215 (class 1259 OID 16477)
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
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE le_usuarios_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.le_usuarios_rol IS 'Roles designados a los usuarios';


--
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN le_usuarios_rol.users_sid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.users_sid IS 'Relacionado al usuario que ha registrado';


--
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN le_usuarios_rol.id_rol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.id_rol IS 'Relacionado al rol';


--
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN le_usuarios_rol.id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.id_usuario IS 'Relacionado al id del usuario, puede coincidir con el users sid';


--
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN le_usuarios_rol.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.le_usuarios_rol.status IS 'A=Activo, X=Eliminado';


--
-- TOC entry 214 (class 1259 OID 16476)
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
-- TOC entry 3951 (class 0 OID 0)
-- Dependencies: 214
-- Name: le_usuarios_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.le_usuarios_rol_id_seq OWNED BY public.le_usuarios_rol.id;


--
-- TOC entry 3311 (class 2604 OID 16599)
-- Name: le_ambito_elecciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones ALTER COLUMN id SET DEFAULT nextval('public.le_ambito_elecciones_id_seq'::regclass);


--
-- TOC entry 3330 (class 2604 OID 16846)
-- Name: le_caracteristicas_generales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_generales_id_seq'::regclass);


--
-- TOC entry 3337 (class 2604 OID 16933)
-- Name: le_caracteristicas_tecnicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_tecnicas_id_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 16955)
-- Name: le_caracteristicas_tecnicas_compuestas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas ALTER COLUMN id SET DEFAULT nextval('public.le_caracteristicas_tecnicas_compuestas_id_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16559)
-- Name: le_catalogos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos ALTER COLUMN id SET DEFAULT nextval('public.le_catalogos_id_seq'::regclass);


--
-- TOC entry 3329 (class 2604 OID 16817)
-- Name: le_det_material_electoral id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral ALTER COLUMN id SET DEFAULT nextval('public.le_det_material_electoral_id_seq'::regclass);


--
-- TOC entry 3314 (class 2604 OID 16636)
-- Name: le_estados_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_estados_procesos_id_seq'::regclass);


--
-- TOC entry 3331 (class 2604 OID 16865)
-- Name: le_factor_distribucion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion ALTER COLUMN id SET DEFAULT nextval('public.le_factor_distribucion_id_seq'::regclass);


--
-- TOC entry 3307 (class 2604 OID 16540)
-- Name: le_history_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data ALTER COLUMN id SET DEFAULT nextval('public.le_history_data_id_seq'::regclass);


--
-- TOC entry 3325 (class 2604 OID 16741)
-- Name: le_material_electoral id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral ALTER COLUMN id SET DEFAULT nextval('public.le_material_electoral_id_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 16884)
-- Name: le_material_sensible id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible ALTER COLUMN id SET DEFAULT nextval('public.le_material_sensible_id_seq'::regclass);


--
-- TOC entry 3309 (class 2604 OID 16581)
-- Name: le_materiales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales ALTER COLUMN id SET DEFAULT nextval('public.le_materiales_id_seq'::regclass);


--
-- TOC entry 3312 (class 2604 OID 16608)
-- Name: le_modalidad_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_modalidad_procesos_id_seq'::regclass);


--
-- TOC entry 3317 (class 2604 OID 16704)
-- Name: le_padron_proyectado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado ALTER COLUMN id SET DEFAULT nextval('public.le_padron_proyectado_id_seq'::regclass);


--
-- TOC entry 3333 (class 2604 OID 16904)
-- Name: le_papeletas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas ALTER COLUMN id SET DEFAULT nextval('public.le_papeletas_id_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 16497)
-- Name: le_persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona ALTER COLUMN id SET DEFAULT nextval('public.le_persona_id_seq'::regclass);


--
-- TOC entry 3328 (class 2604 OID 16798)
-- Name: le_presupuesto_material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material ALTER COLUMN id SET DEFAULT nextval('public.le_presupuesto_material_id_seq'::regclass);


--
-- TOC entry 3316 (class 2604 OID 16679)
-- Name: le_procesos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos ALTER COLUMN id SET DEFAULT nextval('public.le_procesos_id_seq'::regclass);


--
-- TOC entry 3326 (class 2604 OID 16775)
-- Name: le_proveedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proveedores ALTER COLUMN id SET DEFAULT nextval('public.le_proveedores_id_seq'::regclass);


--
-- TOC entry 3327 (class 2604 OID 16784)
-- Name: le_representante_legal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal ALTER COLUMN id SET DEFAULT nextval('public.le_representante_legal_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16464)
-- Name: le_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol ALTER COLUMN id SET DEFAULT nextval('public.le_rol_id_seq'::regclass);


--
-- TOC entry 3310 (class 2604 OID 16590)
-- Name: le_tipo_elecciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones ALTER COLUMN id SET DEFAULT nextval('public.le_tipo_elecciones_id_seq'::regclass);


--
-- TOC entry 3313 (class 2604 OID 16622)
-- Name: le_tipos_flujo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo ALTER COLUMN id SET DEFAULT nextval('public.le_tipos_flujo_id_seq'::regclass);


--
-- TOC entry 3315 (class 2604 OID 16665)
-- Name: le_tipos_flujo_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo ALTER COLUMN id SET DEFAULT nextval('public.le_tipos_flujo_trabajo_id_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 16445)
-- Name: le_usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_id_seq'::regclass);


--
-- TOC entry 3306 (class 2604 OID 16521)
-- Name: le_usuarios_passwords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_passwords_id_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 16480)
-- Name: le_usuarios_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol ALTER COLUMN id SET DEFAULT nextval('public.le_usuarios_rol_id_seq'::regclass);


--
-- TOC entry 3605 (class 0 OID 16596)
-- Dependencies: 229
-- Data for Name: le_ambito_elecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_ambito_elecciones VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'Ambito de la eleccion - editado', 'Ambito de la eleccion, Ambito de la eleccion, Ambito de la eleccion', 'A', '2022-08-09 10:01:21', '2022-08-09 10:03:52');


--
-- TOC entry 3629 (class 0 OID 16843)
-- Dependencies: 253
-- Data for Name: le_caracteristicas_generales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_caracteristicas_generales VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 4, 'Requisitos características técnicas', 'Condiciones complementarias', 'Forma de embalaje para entrega', 'Tratamiento del material defectuoso', 'Otras condiciones complementarias', 'A', '2022-08-17 10:00:38', '2022-08-17 10:18:44');


--
-- TOC entry 3638 (class 0 OID 16930)
-- Dependencies: 262
-- Data for Name: le_caracteristicas_tecnicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_caracteristicas_tecnicas VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis dui hendrerit, placerat risus non, mattis dolor. Maecenas tempor enim metus, vitae tempor odio volutpat ac.', 15, 'unidades', 50000, 'A', '2022-08-16 12:55:51', '2022-08-16 12:55:51');


--
-- TOC entry 3640 (class 0 OID 16952)
-- Dependencies: 264
-- Data for Name: le_caracteristicas_tecnicas_compuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_caracteristicas_tecnicas_compuestas VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 4, 1, 2, 'El pasaje "Lorem ipsum..." se ha extraído del texto que dice "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... (editado 1)', 51, 'Unidades', 'A', '2022-08-17 11:21:38', '2022-08-17 11:30:36');


--
-- TOC entry 3599 (class 0 OID 16556)
-- Dependencies: 223
-- Data for Name: le_catalogos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_catalogos VALUES (12, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'CUARTO REGISTRO', 'el cuarto registro!', 'es', 'GRUPOS', '0', '0', NULL, 'X', '2022-07-28 19:17:42', '2022-07-28 19:18:45');
INSERT INTO public.le_catalogos VALUES (9, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'GRUPO ELECCION DE VOCALES', 'ELECCION DE VOCALES', 'es', 'GRUPOS', '0', '0', NULL, 'A', '2022-07-28 15:28:48', '2022-07-28 19:21:54');
INSERT INTO public.le_catalogos VALUES (13, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'UN', 'Unidad', 'es', 'MEDIDA', '0', '0', NULL, 'A', '2022-07-28 19:43:51', '2022-07-28 19:43:51');
INSERT INTO public.le_catalogos VALUES (14, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'RESMA', 'Resma de papel', 'es', 'MEDIDA', '0', '0', NULL, 'A', '2022-07-28 19:44:06', '2022-07-28 19:44:06');
INSERT INTO public.le_catalogos VALUES (16, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'DESTINO', 'No se que va aca', 'es', 'DESTINO', '0', '0', NULL, 'A', '2022-07-28 19:45:14', '2022-07-28 19:45:14');
INSERT INTO public.le_catalogos VALUES (15, '69abe0de-7812-41bd-9124-6a7238aee7d1', 3, 'DOCENA', 'Doce unidades', 'es', 'MEDIDA', '0', '0', NULL, 'A', '2022-07-28 19:44:25', '2022-07-29 16:40:33');
INSERT INTO public.le_catalogos VALUES (17, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, '1010', 'Tesoro General de la Nacion (TGN)', 'es', 'PARTIDA', '0', '0', NULL, 'A', '2022-07-28 19:50:48', '2022-08-01 09:47:52');
INSERT INTO public.le_catalogos VALUES (18, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, '1020', 'TGN Donaciones', 'es', 'PARTIDA', '0', '0', NULL, 'A', '2022-08-01 10:00:38', '2022-08-01 10:00:38');
INSERT INTO public.le_catalogos VALUES (19, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'GRUPO ELECCION NACIONAL', 'GRUPO ELECCION NACIONAL', 'es', 'GRUPOS', '0', '0', NULL, 'A', '2022-08-01 10:30:53', '2022-08-01 10:30:53');
INSERT INTO public.le_catalogos VALUES (21, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'MATERIAL ANTI INCENDIO', 'MATERIAL ANTI INCENDIO', 'es', 'TIPOMATERIAL', '0', '0', NULL, 'A', '2022-08-01 11:03:57', '2022-08-01 11:03:57');
INSERT INTO public.le_catalogos VALUES (22, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'NOMBRE DEL RESPONSABLE NOSE', 'NOMBRE DEL RESPONSABLE NOSE', 'es', 'RESPONSABLEADQUISICION', '0', '0', NULL, 'A', '2022-08-01 11:04:12', '2022-08-01 11:04:12');
INSERT INTO public.le_catalogos VALUES (23, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'MEDIDA DE SEGURIDAD 1', 'MEDIDA DE SEGURIDAD 1', 'es', 'MEDIDAS', '0', '0', NULL, 'A', '2022-08-01 11:04:26', '2022-08-01 11:04:26');
INSERT INTO public.le_catalogos VALUES (24, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'NOSE QUE VA ACA', 'ni idea', 'es', 'SIMILITUD', '0', '0', NULL, 'A', '2022-08-01 11:04:36', '2022-08-01 11:04:36');
INSERT INTO public.le_catalogos VALUES (25, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'NOSE QUE INFO VA ACA', 'NOSE QUE INFO VA ACA', 'es', 'LUGARRECEPCION', '0', '0', NULL, 'A', '2022-08-01 14:38:33', '2022-08-01 14:38:33');
INSERT INTO public.le_catalogos VALUES (26, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'PRE APROBADO', 'pre aprobado', 'es', 'INSTANCIA', '0', '0', NULL, 'A', '2022-08-01 14:38:44', '2022-08-01 14:38:44');
INSERT INTO public.le_catalogos VALUES (27, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'APROBADO', 'aprobado', 'es', 'INSTANCIA', '0', '0', NULL, 'A', '2022-08-01 14:38:59', '2022-08-01 14:38:59');
INSERT INTO public.le_catalogos VALUES (28, '69abe0de-7812-41bd-9124-6a7238aee7d1', 3, 'CARTONES', 'CARTONES', 'es', 'GRUPOS', '0', '0', NULL, 'A', '2022-08-05 09:03:26', '2022-08-05 09:03:26');
INSERT INTO public.le_catalogos VALUES (29, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'NUEVO DESTINO', 'Tampoco se que va aca', 'es', 'DESTINO', '0', '0', NULL, 'A', '2022-08-05 09:04:09', '2022-08-05 09:04:09');
INSERT INTO public.le_catalogos VALUES (30, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'OTRO RESPONSABLE', 'OTRO RESPONSABLE', 'es', 'RESPONSABLEADQUISICION', '0', '0', NULL, 'A', '2022-08-11 09:23:44', '2022-08-11 09:23:44');


--
-- TOC entry 3636 (class 0 OID 16920)
-- Dependencies: 260
-- Data for Name: le_cerchas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_cerchas VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'Descripcion de la cercha segun region', 56, 'A', '2022-08-16 11:37:05', '2022-08-16 11:37:05');
INSERT INTO public.le_cerchas VALUES (3, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'Nueva descripcion (edicion 1)', 152, 'A', '2022-08-16 11:37:21', '2022-08-16 11:40:11');


--
-- TOC entry 3627 (class 0 OID 16814)
-- Dependencies: 251
-- Data for Name: le_det_material_electoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_det_material_electoral VALUES (4, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 4, 'Utilidad del material (editado 1)', 1, 1, 1, 1, 15.25, 1, 900.00, 9000.00, 'SI', 'SI', 'SI', 1, 1, 30, 1, 50.00, 450000.00, 'A', '2022-08-15 09:13:58', '2022-08-15 09:44:36');


--
-- TOC entry 3611 (class 0 OID 16633)
-- Dependencies: 235
-- Data for Name: le_estados_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_estados_procesos VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'PROC-2', 'Estado proceso 2', 'A', '2022-08-09 10:59:26', '2022-08-09 10:59:26');
INSERT INTO public.le_estados_procesos VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'PROC-1 editado', 'Estado del proceso', 'A', '2022-08-09 10:58:42', '2022-08-09 11:23:32');


--
-- TOC entry 3631 (class 0 OID 16862)
-- Dependencies: 255
-- Data for Name: le_factor_distribucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_factor_distribucion VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'A', '2022-08-09 14:52:19', '2022-08-09 15:02:17');
INSERT INTO public.le_factor_distribucion VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'A', '2022-08-09 15:10:15', '2022-08-09 15:10:15');


--
-- TOC entry 3597 (class 0 OID 16537)
-- Dependencies: 221
-- Data for Name: le_history_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_history_data VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"GRUPO 1","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"El primer grupo!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T15:28:48.000000Z","created_at":"2022-07-28T15:28:48.000000Z","id":9}', 9, 'C', 'A', '2022-07-28 15:28:48', NULL);
INSERT INTO public.le_history_data VALUES (3, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"9","value":1,"label":"GRUPO 1 DE NUEVO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"El primer grupo!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 9, 'U', 'A', '2022-07-28 16:38:37', NULL);
INSERT INTO public.le_history_data VALUES (4, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"GRUPO 2 NO NUEVO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Segundo grupo de prueba para eliminacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:12:43.000000Z","created_at":"2022-07-28T19:12:43.000000Z","id":10}', 10, 'C', 'A', '2022-07-28 19:12:43', NULL);
INSERT INTO public.le_history_data VALUES (5, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"10","value":2,"label":"GRUPO 2 SI ERA NUEVO!","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Segundo grupo de prueba para eliminacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 10, 'U', 'A', '2022-07-28 19:12:52', NULL);
INSERT INTO public.le_history_data VALUES (6, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"TERCER GRUPO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"TERCER GRUPO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:15:54.000000Z","created_at":"2022-07-28T19:15:54.000000Z","id":11}', 11, 'C', 'A', '2022-07-28 19:15:54', NULL);
INSERT INTO public.le_history_data VALUES (7, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"11","value":2,"label":"TERCER GRUPO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"EL TERCER GRUPO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 11, 'U', 'A', '2022-07-28 19:16:02', NULL);
INSERT INTO public.le_history_data VALUES (8, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '1', 11, 'D', 'A', '2022-07-28 19:16:12', NULL);
INSERT INTO public.le_history_data VALUES (9, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"REGISTRO 4","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"el cuarto registro!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:17:42.000000Z","created_at":"2022-07-28T19:17:42.000000Z","id":12}', 12, 'C', 'A', '2022-07-28 19:17:42', NULL);
INSERT INTO public.le_history_data VALUES (10, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"12","value":2,"label":"CUARTO REGISTRO","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"el cuarto registro!","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 12, 'U', 'A', '2022-07-28 19:18:32', NULL);
INSERT INTO public.le_history_data VALUES (11, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '1', 12, 'D', 'A', '2022-07-28 19:18:45', NULL);
INSERT INTO public.le_history_data VALUES (12, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"9","value":1,"label":"GRUPO ELECCION DE VOCALES","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"ELECCION DE VOCALES","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 9, 'U', 'A', '2022-07-28 19:21:54', NULL);
INSERT INTO public.le_history_data VALUES (13, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"UN","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Unidad","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:43:51.000000Z","created_at":"2022-07-28T19:43:51.000000Z","id":13}', 13, 'C', 'A', '2022-07-28 19:43:51', NULL);
INSERT INTO public.le_history_data VALUES (14, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"RESMA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Resma de papel","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:44:06.000000Z","created_at":"2022-07-28T19:44:06.000000Z","id":14}', 14, 'C', 'A', '2022-07-28 19:44:06', NULL);
INSERT INTO public.le_history_data VALUES (15, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"DOCENA","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:44:25.000000Z","created_at":"2022-07-28T19:44:25.000000Z","id":15}', 15, 'C', 'A', '2022-07-28 19:44:25', NULL);
INSERT INTO public.le_history_data VALUES (16, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 15, 'U', 'A', '2022-07-28 19:44:32', NULL);
INSERT INTO public.le_history_data VALUES (17, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"DESTINO","lang":"es","catalog_code":"DESTINO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"No se que va aca","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:45:14.000000Z","created_at":"2022-07-28T19:45:14.000000Z","id":16}', 16, 'C', 'A', '2022-07-28 19:45:14', NULL);
INSERT INTO public.le_history_data VALUES (18, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"1010 TGN","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tesoro General de la Nacion","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-07-28T19:50:48.000000Z","created_at":"2022-07-28T19:50:48.000000Z","id":17}', 17, 'C', 'A', '2022-07-28 19:50:48', NULL);
INSERT INTO public.le_history_data VALUES (19, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades sobre todo en los huevos","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 15, 'U', 'A', '2022-07-29 20:30:28', NULL);
INSERT INTO public.le_history_data VALUES (20, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades de cualquier cosa","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 15, 'U', 'A', '2022-07-29 20:37:33', NULL);
INSERT INTO public.le_history_data VALUES (21, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades de cualquier cosa 1adsadasdas","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 15, 'U', 'A', '2022-07-29 16:40:26', NULL);
INSERT INTO public.le_history_data VALUES (22, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"15","value":3,"label":"DOCENA","lang":"es","catalog_code":"MEDIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Doce unidades","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 15, 'U', 'A', '2022-07-29 16:40:33', NULL);
INSERT INTO public.le_history_data VALUES (23, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":"17","value":1,"label":"1010","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tesoro General de la Nacion (TGN)","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1"}', 17, 'U', 'A', '2022-08-01 09:47:53', NULL);
INSERT INTO public.le_history_data VALUES (24, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"1020","lang":"es","catalog_code":"PARTIDA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"TGN Donaciones","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T14:00:38.000000Z","created_at":"2022-08-01T14:00:38.000000Z","id":18}', 18, 'C', 'A', '2022-08-01 10:00:38', NULL);
INSERT INTO public.le_history_data VALUES (25, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"GRUPO ELECCION NACIONAL","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"GRUPO ELECCION NACIONAL","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T14:30:53.000000Z","created_at":"2022-08-01T14:30:53.000000Z","id":19}', 19, 'C', 'A', '2022-08-01 10:30:53', NULL);
INSERT INTO public.le_history_data VALUES (26, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"MATERIAL ANTI INCENDIO","lang":"es","catalog_code":"TIPOMATERIAL","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"MATERIAL ANTI INCENDIO","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:03:57.000000Z","created_at":"2022-08-01T15:03:57.000000Z","id":21}', 21, 'C', 'A', '2022-08-01 11:03:57', NULL);
INSERT INTO public.le_history_data VALUES (27, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"NOMBRE DEL RESPONSABLE NOSE","lang":"es","catalog_code":"RESPONSABLEADQUISICION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"NOMBRE DEL RESPONSABLE NOSE","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:12.000000Z","created_at":"2022-08-01T15:04:12.000000Z","id":22}', 22, 'C', 'A', '2022-08-01 11:04:12', NULL);
INSERT INTO public.le_history_data VALUES (28, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"MEDIDA DE SEGURIDAD 1","lang":"es","catalog_code":"MEDIDAS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"MEDIDA DE SEGURIDAD 1","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:26.000000Z","created_at":"2022-08-01T15:04:26.000000Z","id":23}', 23, 'C', 'A', '2022-08-01 11:04:26', NULL);
INSERT INTO public.le_history_data VALUES (29, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"NOSE QUE VA ACA","lang":"es","catalog_code":"SIMILITUD","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"ni idea","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T15:04:36.000000Z","created_at":"2022-08-01T15:04:36.000000Z","id":24}', 24, 'C', 'A', '2022-08-01 11:04:36', NULL);
INSERT INTO public.le_history_data VALUES (30, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"NOSE QUE INFO VA ACA","lang":"es","catalog_code":"LUGARRECEPCION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"NOSE QUE INFO VA ACA","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:33.000000Z","created_at":"2022-08-01T18:38:33.000000Z","id":25}', 25, 'C', 'A', '2022-08-01 14:38:34', NULL);
INSERT INTO public.le_history_data VALUES (31, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":1,"label":"PRE APROBADO","lang":"es","catalog_code":"INSTANCIA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"pre aprobado","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:44.000000Z","created_at":"2022-08-01T18:38:44.000000Z","id":26}', 26, 'C', 'A', '2022-08-01 14:38:44', NULL);
INSERT INTO public.le_history_data VALUES (32, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"APROBADO","lang":"es","catalog_code":"INSTANCIA","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"aprobado","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-01T18:38:59.000000Z","created_at":"2022-08-01T18:38:59.000000Z","id":27}', 27, 'C', 'A', '2022-08-01 14:38:59', NULL);
INSERT INTO public.le_history_data VALUES (34, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":3,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL 2","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T14:26:55.000000Z"}', 3, 'C', 'A', '2022-08-04 10:26:55', NULL);
INSERT INTO public.le_history_data VALUES (35, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"id":4,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CUARTO REGISTRO","id_unidad_medida":"DOCENA","id_destino_material":"DESTINO","item":"ANFORAS","status":"A","created_at":"2022-08-04T14:34:07.000000Z","updated_at":"2022-08-04T14:34:07.000000Z"}', 4, 'C', 'A', '2022-08-04 10:34:07', NULL);
INSERT INTO public.le_history_data VALUES (36, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":5,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T16:05:50.000000Z"}', 5, 'C', 'A', '2022-08-04 12:05:50', NULL);
INSERT INTO public.le_history_data VALUES (37, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T16:40:09.000000Z"}', 5, 'U', 'A', '2022-08-04 12:40:09', NULL);
INSERT INTO public.le_history_data VALUES (38, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CUARTO REGISTRO","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-04T19:29:44.000000Z"}', 5, 'U', 'A', '2022-08-04 15:29:44', NULL);
INSERT INTO public.le_history_data VALUES (39, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"DOCENA","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL 2 EDITAR","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T19:40:03.000000Z"}', 3, 'U', 'A', '2022-08-04 15:40:03', NULL);
INSERT INTO public.le_history_data VALUES (40, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"GRUPO ELECCION DE VOCALES","id_unidad_medida":"UN","id_destino_material":"DESTINO","item":"TINTA INDIA PERMANENTE COLOR AZUL","status":"A","created_at":"2022-08-04T14:26:55.000000Z","updated_at":"2022-08-04T19:40:32.000000Z"}', 3, 'U', 'A', '2022-08-04 15:40:32', NULL);
INSERT INTO public.le_history_data VALUES (41, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":3,"label":"CARTONES","lang":"es","catalog_code":"GRUPOS","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"CARTONES","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-05T13:03:26.000000Z","created_at":"2022-08-05T13:03:26.000000Z","id":28}', 28, 'C', 'A', '2022-08-05 09:03:26', NULL);
INSERT INTO public.le_history_data VALUES (42, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"NUEVO DESTINO","lang":"es","catalog_code":"DESTINO","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"Tampoco se que va aca","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-05T13:04:09.000000Z","created_at":"2022-08-05T13:04:09.000000Z","id":29}', 29, 'C', 'A', '2022-08-05 09:04:09', NULL);
INSERT INTO public.le_history_data VALUES (43, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_materiales', '{"id":"5","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_grupo":"CARTONES","id_unidad_medida":"UN","id_destino_material":"NUEVO DESTINO","item":"BOLIGRAFOS AZULES CON TAPA","status":"A","created_at":"2022-08-04T16:05:50.000000Z","updated_at":"2022-08-05T13:05:20.000000Z"}', 5, 'U', 'A', '2022-08-05 09:05:20', NULL);
INSERT INTO public.le_history_data VALUES (44, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_ambito_elecciones', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Ambito de la eleccion","descripcion":"Ambito de la eleccion, Ambito de la eleccion, Ambito de la eleccion","status":"A","created_at":"2022-08-09T14:01:21.000000Z","updated_at":"2022-08-09T14:01:21.000000Z"}', 1, 'C', 'A', '2022-08-09 10:01:22', NULL);
INSERT INTO public.le_history_data VALUES (45, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_ambito_elecciones', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","nombre":"Ambito de la eleccion - editado","descripcion":"Ambito de la eleccion, Ambito de la eleccion, Ambito de la eleccion","status":"A","created_at":"2022-08-09T14:01:21.000000Z","updated_at":"2022-08-09T14:03:52.000000Z"}', 1, 'U', 'A', '2022-08-09 10:03:52', NULL);
INSERT INTO public.le_history_data VALUES (46, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_estados_procesos', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-1","descripcion_estados":"Estado del proceso","status":"A","created_at":"2022-08-09T14:58:42.000000Z","updated_at":"2022-08-09T14:58:42.000000Z"}', 1, 'C', 'A', '2022-08-09 10:58:42', NULL);
INSERT INTO public.le_history_data VALUES (47, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_estados_procesos', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-2","descripcion_estados":"Estado proceso 2","status":"A","created_at":"2022-08-09T14:59:26.000000Z","updated_at":"2022-08-09T14:59:26.000000Z"}', 2, 'C', 'A', '2022-08-09 10:59:26', NULL);
INSERT INTO public.le_history_data VALUES (48, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_estados_procesos', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla_estados":"PROC-1 editado","descripcion_estados":"Estado del proceso","status":"A","created_at":"2022-08-09T14:58:42.000000Z","updated_at":"2022-08-09T15:23:32.000000Z"}', 1, 'U', 'A', '2022-08-09 11:23:32', NULL);
INSERT INTO public.le_history_data VALUES (49, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_factor_distribucion', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"NUEVO DESTINO","status":"A","created_at":"2022-08-09T18:52:19.000000Z","updated_at":"2022-08-09T18:52:19.000000Z"}', 1, 'C', 'A', '2022-08-09 14:52:19', NULL);
INSERT INTO public.le_history_data VALUES (50, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_factor_distribucion', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"DESTINO","status":"A","created_at":"2022-08-09T18:52:19.000000Z","updated_at":"2022-08-09T19:02:17.000000Z"}', 1, 'U', 'A', '2022-08-09 15:02:18', NULL);
INSERT INTO public.le_history_data VALUES (51, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_factor_distribucion', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_destino_material":"NUEVO DESTINO","status":"A","created_at":"2022-08-09T19:10:15.000000Z","updated_at":"2022-08-09T19:10:15.000000Z"}', 2, 'C', 'A', '2022-08-09 15:10:16', NULL);
INSERT INTO public.le_history_data VALUES (52, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipo_elecciones', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2022","nombre":"Elecciones nacionales 2022","descripcion":"Detalle de las elecciones nacionales 2022","status":"A","created_at":"2022-08-09T20:13:46.000000Z","updated_at":"2022-08-09T20:13:46.000000Z"}', 1, 'C', 'A', '2022-08-09 16:13:46', NULL);
INSERT INTO public.le_history_data VALUES (53, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipo_elecciones', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2022","nombre":"Elecciones nacionales 2022","descripcion":"Detalle de las elecciones nacionales 2022 editado 1","status":"A","created_at":"2022-08-09T20:13:46.000000Z","updated_at":"2022-08-09T20:17:54.000000Z"}', 1, 'U', 'A', '2022-08-09 16:17:54', NULL);
INSERT INTO public.le_history_data VALUES (54, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipo_elecciones', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2025","nombre":"Elecciones 2025","descripcion":"Elecciones 2025 sin editar","status":"A","created_at":"2022-08-09T20:19:46.000000Z","updated_at":"2022-08-09T20:19:46.000000Z"}', 2, 'C', 'A', '2022-08-09 16:19:46', NULL);
INSERT INTO public.le_history_data VALUES (55, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipo_elecciones', '{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","sigla":"E2025","nombre":"Elecciones 2025","descripcion":"Elecciones 2025 ahora editado","status":"A","created_at":"2022-08-09T20:19:46.000000Z","updated_at":"2022-08-09T20:19:56.000000Z"}', 2, 'U', 'A', '2022-08-09 16:19:56', NULL);
INSERT INTO public.le_history_data VALUES (56, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:40:13.000000Z"}', 1, 'C', 'A', '2022-08-10 09:40:14', NULL);
INSERT INTO public.le_history_data VALUES (57, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"}', 1, 'U', 'A', '2022-08-10 09:44:33', NULL);
INSERT INTO public.le_history_data VALUES (58, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Segundo flujo","status":"A","created_at":"2022-08-10T13:44:43.000000Z","updated_at":"2022-08-10T13:44:43.000000Z"}', 2, 'C', 'A', '2022-08-10 09:44:43', NULL);
INSERT INTO public.le_history_data VALUES (59, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo_trabajo', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"},"origen_estado":"Origen del proceso 1","destino_estado":"Destino del proceso 1","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T19:41:28.000000Z"}', 1, 'C', 'A', '2022-08-10 15:41:28', NULL);
INSERT INTO public.le_history_data VALUES (60, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo_trabajo', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Detalles de este flujo (editado 1)","status":"A","created_at":"2022-08-10T13:40:13.000000Z","updated_at":"2022-08-10T13:44:33.000000Z"},"origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:02.000000Z"}', 1, 'U', 'A', '2022-08-10 16:00:02', NULL);
INSERT INTO public.le_history_data VALUES (61, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo_trabajo', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","detalle_flujo":"Segundo flujo","status":"A","created_at":"2022-08-10T13:44:43.000000Z","updated_at":"2022-08-10T13:44:43.000000Z"},"origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:12.000000Z"}', 1, 'U', 'A', '2022-08-10 16:00:12', NULL);
INSERT INTO public.le_history_data VALUES (62, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo_trabajo', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","origen_estado":"Origen del proceso 1 (editado)","destino_estado":"Destino del proceso 1 (editado)","status":"A","created_at":"2022-08-10T19:41:28.000000Z","updated_at":"2022-08-10T20:00:12.000000Z"}', 1, 'D', 'A', '2022-08-10 16:33:13', NULL);
INSERT INTO public.le_history_data VALUES (63, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_tipos_flujo_trabajo', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","origen_estado":"Origen del proceso 1","destino_estado":"Destino del proceso 1","status":"A","created_at":"2022-08-10T20:33:53.000000Z","updated_at":"2022-08-10T20:33:53.000000Z"}', 2, 'C', 'A', '2022-08-10 16:33:53', NULL);
INSERT INTO public.le_history_data VALUES (64, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_catalogos', '{"value":2,"label":"OTRO RESPONSABLE","lang":"es","catalog_code":"RESPONSABLEADQUISICION","catalog_code_dep":"0","catalog_id_dep":"0","descripcion":"OTRO RESPONSABLE","svg_image":null,"status":"A","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","updated_at":"2022-08-11T13:23:44.000000Z","created_at":"2022-08-11T13:23:44.000000Z","id":30}', 30, 'C', 'A', '2022-08-11 09:23:44', NULL);
INSERT INTO public.le_history_data VALUES (65, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":null,"requisitos_caracteristicas_tecnicas":null,"condiciones_complementarias":null,"embalaje_forma_entrega":null,"tratamiento_material_defectuoso":null,"otras_condiciones_complementarias":null,"status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T16:28:13.000000Z"}', 1, 'C', 'A', '2022-08-11 12:28:13', NULL);
INSERT INTO public.le_history_data VALUES (66, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":null,"requisitos_caracteristicas_tecnicas":null,"condiciones_complementarias":null,"embalaje_forma_entrega":null,"tratamiento_material_defectuoso":null,"otras_condiciones_complementarias":null,"status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:30:21.000000Z"}', 1, 'U', 'A', '2022-08-11 14:30:21', NULL);
INSERT INTO public.le_history_data VALUES (67, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":null,"num_proceso":321654,"descripcion_proceso":"Proceso 1","estado_w":"Modalidad del proceso 1","status":"A","created_at":"2022-08-11T18:47:02.000000Z","updated_at":"2022-08-11T18:47:02.000000Z"}', 2, 'C', 'A', '2022-08-11 14:47:02', NULL);
INSERT INTO public.le_history_data VALUES (68, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":"2","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Detalles de este flujo (editado 1)","fecha_proceso":"2024-08-09","num_proceso":321654,"descripcion_proceso":"Proceso 1 (editado)","estado_w":"Modalidad del proceso 1 (editado)","status":"A","created_at":"2022-08-11T18:47:02.000000Z","updated_at":"2022-08-11T18:50:54.000000Z"}', 2, 'U', 'A', '2022-08-11 14:50:54', NULL);
INSERT INTO public.le_history_data VALUES (69, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","fecha_proceso":"2022-08-31","num_proceso":321654,"descripcion_proceso":"Descripcion de este proceso 01 (editado)","estado_w":"Modalidad de este proceso","status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:30:21.000000Z"}', 1, 'D', 'A', '2022-08-11 14:57:09', NULL);
INSERT INTO public.le_history_data VALUES (70, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_procesos', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipos_flujo":"Segundo flujo","fecha_proceso":"2022-08-31","num_proceso":321654,"descripcion_proceso":"Descripcion de este proceso 01 (editado)","estado_w":"Modalidad de este proceso","status":"A","created_at":"2022-08-11T16:28:13.000000Z","updated_at":"2022-08-11T18:57:09.000000Z"}', 1, 'D', 'A', '2022-08-11 15:11:47', NULL);
INSERT INTO public.le_history_data VALUES (71, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_padron_proyectado', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_eleccion":"E2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_proceso":321654,"descripcion":"Descripcion del padron proyectado","fecha_eleccion":"2025-08-10","habilitados_mesa":500,"jurados_mesa":50,"mesa_notarios":15,"guias_electorales":15,"tecnicos_informacion":5,"personal_limpieza":5,"efectivos_seguridad":10,"status":"A","created_at":"2022-08-11T19:43:59.000000Z","updated_at":"2022-08-11T19:43:59.000000Z"}', 1, 'C', 'A', '2022-08-11 15:43:59', NULL);
INSERT INTO public.le_history_data VALUES (72, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_padron_proyectado', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_eleccion":"E2025","id_ambito_eleccion":"Ambito de la eleccion - editado","id_proceso":321654,"descripcion":"Descripcion del padron proyectado (editado)","fecha_eleccion":"2025-08-10","habilitados_mesa":500,"jurados_mesa":50,"mesa_notarios":15,"guias_electorales":15,"tecnicos_informacion":5,"personal_limpieza":5,"efectivos_seguridad":10,"status":"A","created_at":"2022-08-11T19:43:59.000000Z","updated_at":"2022-08-11T20:02:21.000000Z"}', 1, 'U', 'A', '2022-08-11 16:02:21', NULL);
INSERT INTO public.le_history_data VALUES (73, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_material_electoral', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_padron_proyectado":"Descripcion del padron proyectado (editado)","id_proceso":321654,"id_ambito_eleccion":"Ambito de la eleccion - editado","descripcion":"Detalle del material electoral","status":"A","created_at":"2022-08-12T13:46:02.000000Z","updated_at":"2022-08-12T13:46:02.000000Z"}', 1, 'C', 'A', '2022-08-12 09:46:02', NULL);
INSERT INTO public.le_history_data VALUES (74, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_material_electoral', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_padron_proyectado":"Descripcion del padron proyectado (editado)","id_proceso":321654,"id_ambito_eleccion":"Ambito de la eleccion - editado","descripcion":"Detalle del material electoral (editado 11)","status":"A","created_at":"2022-08-12T13:46:02.000000Z","updated_at":"2022-08-12T15:29:11.000000Z"}', 1, 'U', 'A', '2022-08-12 11:29:11', NULL);
INSERT INTO public.le_history_data VALUES (75, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_det_material_electoral', '{"id":4,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_material_electoral":"Detalle del material electoral (editado 11)","id_material":"ANFORAS","utilidad_material":"Utilidad del material","id_partida":"1010","id_ambito_eleccion":"Ambito de la eleccion - editado","id_factor_distribucion":"DESTINO","id_responsable_adquisicion":"NOMBRE DEL RESPONSABLE NOSE","margen_seguridad":"15.25","id_tipo_material":"MATERIAL ANTI INCENDIO","cantidad_margen_seguridad":"900.00","cantidad_total":"9000.00","material_sensible":"Y","material_fungible":"Y","material_reutilizable":"Y","id_instancia_aprobacion_diseno":"PRE APROBADO","id_instancia_aprobacion_arte":"PRE APROBADO","tiempo_produccion_adquisicion":30,"id_lugar_recepcion":"NOSE QUE INFO VA ACA","costo_unitario":"50.00","costo_total":"450000.00","status":"A","created_at":"2022-08-15T13:13:58.000000Z","updated_at":"2022-08-15T13:13:58.000000Z"}', 4, 'C', 'A', '2022-08-15 09:13:59', NULL);
INSERT INTO public.le_history_data VALUES (76, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_det_material_electoral', '{"id":"4","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_material_electoral":"Detalle del material electoral (editado 11)","id_material":"ANFORAS","utilidad_material":"Utilidad del material (editado 1)","id_partida":"1010","id_ambito_eleccion":"Ambito de la eleccion - editado","id_factor_distribucion":"DESTINO","id_responsable_adquisicion":"NOMBRE DEL RESPONSABLE NOSE","margen_seguridad":"15.25","id_tipo_material":"MATERIAL ANTI INCENDIO","cantidad_margen_seguridad":"900.00","cantidad_total":"9000.00","material_sensible":"SI","material_fungible":"SI","material_reutilizable":"SI","id_instancia_aprobacion_diseno":"PRE APROBADO","id_instancia_aprobacion_arte":"PRE APROBADO","tiempo_produccion_adquisicion":30,"id_lugar_recepcion":"NOSE QUE INFO VA ACA","costo_unitario":"50.00","costo_total":"450000.00","status":"A","created_at":"2022-08-15T13:13:58.000000Z","updated_at":"2022-08-15T13:44:36.000000Z"}', 4, 'U', 'A', '2022-08-15 09:44:36', NULL);
INSERT INTO public.le_history_data VALUES (77, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_papeletas', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la papeleta o la region nose","cantidad":"20","status":"A","created_at":"2022-08-16T14:03:49.000000Z","updated_at":"2022-08-16T14:03:49.000000Z"}', 1, 'C', 'A', '2022-08-16 10:03:49', NULL);
INSERT INTO public.le_history_data VALUES (78, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_papeletas', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la papeleta o la region nose (editado 1)","cantidad":"20","status":"A","created_at":"2022-08-16T14:03:49.000000Z","updated_at":"2022-08-16T15:04:14.000000Z"}', 1, 'U', 'A', '2022-08-16 11:04:15', NULL);
INSERT INTO public.le_history_data VALUES (79, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_cerchas', '{"id":2,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones nacionales 2022","descripcion_region":"Descripcion de la cercha segun region","cantidad":"56","status":"A","created_at":"2022-08-16T15:37:05.000000Z","updated_at":"2022-08-16T15:37:05.000000Z"}', 2, 'C', 'A', '2022-08-16 11:37:05', NULL);
INSERT INTO public.le_history_data VALUES (80, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_cerchas', '{"id":3,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones 2025","descripcion_region":"Nueva descripcion","cantidad":"152","status":"A","created_at":"2022-08-16T15:37:21.000000Z","updated_at":"2022-08-16T15:37:21.000000Z"}', 3, 'C', 'A', '2022-08-16 11:37:21', NULL);
INSERT INTO public.le_history_data VALUES (81, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_cerchas', '{"id":"3","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_tipo_elecciones":"Elecciones 2025","descripcion_region":"Nueva descripcion (edicion 1)","cantidad":"152","status":"A","created_at":"2022-08-16T15:37:21.000000Z","updated_at":"2022-08-16T15:40:11.000000Z"}', 3, 'U', 'A', '2022-08-16 11:40:11', NULL);
INSERT INTO public.le_history_data VALUES (82, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_tecnicas', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","caracteristicas":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis dui hendrerit, placerat risus non, mattis dolor. Maecenas tempor enim metus, vitae tempor odio volutpat ac.","valor":"15","unidad":"unidades","cantidad_proyectada":"50000","status":"A","created_at":"2022-08-16T16:55:51.000000Z","updated_at":"2022-08-16T16:55:51.000000Z"}', 1, 'C', 'A', '2022-08-16 12:55:52', NULL);
INSERT INTO public.le_history_data VALUES (83, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_generales', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\u00edsticas t\u00e9cnicas","condiciones_complementarias":"Condiciones complementarias","embalaje_forma_entrega":"Forma de embalaje para entrega","tratamiento_material_defectuoso":"Tratamiento del material defectuoso","otras_condiciones_complementarias":"Otras condiciones complementarias","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:00:38.000000Z"}', 1, 'C', 'A', '2022-08-17 10:00:38', NULL);
INSERT INTO public.le_history_data VALUES (84, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_generales', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\u00edsticas t\u00e9cnicas (editado 1)","condiciones_complementarias":"Condiciones complementarias (editado 1)","embalaje_forma_entrega":"Forma de embalaje para entrega (editado 1)","tratamiento_material_defectuoso":"Tratamiento del material defectuoso (editado 1)","otras_condiciones_complementarias":"Otras condiciones complementarias (editado 1)","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:11:02.000000Z"}', 1, 'U', 'A', '2022-08-17 10:11:02', NULL);
INSERT INTO public.le_history_data VALUES (85, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_generales', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","requisitos_caracteristicas_tecnicas":"Requisitos caracter\u00edsticas t\u00e9cnicas","condiciones_complementarias":"Condiciones complementarias","embalaje_forma_entrega":"Forma de embalaje para entrega","tratamiento_material_defectuoso":"Tratamiento del material defectuoso","otras_condiciones_complementarias":"Otras condiciones complementarias","status":"A","created_at":"2022-08-17T14:00:38.000000Z","updated_at":"2022-08-17T14:18:44.000000Z"}', 1, 'U', 'A', '2022-08-17 10:18:44', NULL);
INSERT INTO public.le_history_data VALUES (86, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_tecnicas_compuestas', '{"id":1,"users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","id_papeletas":"Descripcion de la papeleta o la region nose (editado 1)","id_cerchas":"Descripcion de la cercha segun region","caracteristicas":"El pasaje \"Lorem ipsum...\" se ha extra\u00eddo del texto que dice \"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...","valor":"51","unidad":"Unidades","status":"A","created_at":"2022-08-17T15:21:38.000000Z","updated_at":"2022-08-17T15:21:38.000000Z"}', 1, 'C', 'A', '2022-08-17 11:21:38', NULL);
INSERT INTO public.le_history_data VALUES (87, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'le_caracteristicas_tecnicas_compuestas', '{"id":"1","users_sid":"69abe0de-7812-41bd-9124-6a7238aee7d1","id_det_material_electoral":"Utilidad del material (editado 1)","id_papeletas":"Descripcion de la papeleta o la region nose (editado 1)","id_cerchas":"Descripcion de la cercha segun region","caracteristicas":"El pasaje \"Lorem ipsum...\" se ha extra\u00eddo del texto que dice \"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... (editado 1)","valor":"51","unidad":"Unidades","status":"A","created_at":"2022-08-17T15:21:38.000000Z","updated_at":"2022-08-17T15:30:36.000000Z"}', 1, 'U', 'A', '2022-08-17 11:30:37', NULL);


--
-- TOC entry 3619 (class 0 OID 16738)
-- Dependencies: 243
-- Data for Name: le_material_electoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_material_electoral VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 2, 1, 'Detalle del material electoral (editado 11)', 'A', '09:46:02', '2022-08-12 11:29:11');


--
-- TOC entry 3633 (class 0 OID 16881)
-- Dependencies: 257
-- Data for Name: le_material_sensible; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3601 (class 0 OID 16578)
-- Dependencies: 225
-- Data for Name: le_materiales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_materiales VALUES (4, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 3, 1, 'ANFORAS', 'A', '2022-08-04 10:34:07', '2022-08-04 10:34:07');
INSERT INTO public.le_materiales VALUES (3, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 1, 1, 'TINTA INDIA PERMANENTE COLOR AZUL', 'A', '2022-08-04 10:26:55', '2022-08-04 15:40:32');
INSERT INTO public.le_materiales VALUES (5, '69abe0de-7812-41bd-9124-6a7238aee7d1', 3, 1, 2, 'BOLIGRAFOS AZULES CON TAPA', 'A', '2022-08-04 12:05:50', '2022-08-05 09:05:20');


--
-- TOC entry 3607 (class 0 OID 16605)
-- Dependencies: 231
-- Data for Name: le_modalidad_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3617 (class 0 OID 16701)
-- Dependencies: 241
-- Data for Name: le_padron_proyectado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_padron_proyectado VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 1, 2, 'Descripcion del padron proyectado (editado)', '2025-08-10', 500, 50, 15, 15, 5, 5, 10, 'A', '2022-08-11 15:43:59', '2022-08-11 16:02:21');


--
-- TOC entry 3635 (class 0 OID 16901)
-- Dependencies: 259
-- Data for Name: le_papeletas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_papeletas VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, 'Descripcion de la papeleta o la region nose (editado 1)', 20, 'A', '2022-08-16 10:03:49', '2022-08-16 11:04:14');


--
-- TOC entry 3593 (class 0 OID 16494)
-- Dependencies: 217
-- Data for Name: le_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_persona VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', '69abe0de-7812-41bd-9124-6a7238aee7d1', 'Jose Lenin', 'Aparicio', 'Loayza', '4807414 LP', 'Consultor en linea', 'A', '2022-07-27 11:10:11', NULL);


--
-- TOC entry 3625 (class 0 OID 16795)
-- Dependencies: 249
-- Data for Name: le_presupuesto_material; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3615 (class 0 OID 16676)
-- Dependencies: 239
-- Data for Name: le_procesos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_procesos VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 1, '2024-08-09', 321654, 'Proceso 1 (editado)', 'Modalidad del proceso 1 (editado)', 'A', '2022-08-11 14:47:02', '2022-08-11 14:50:54');
INSERT INTO public.le_procesos VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, '2022-08-31', 321654, 'Descripcion de este proceso 01 (editado)', 'Modalidad de este proceso', 'X', '2022-08-11 12:28:13', '2022-08-11 15:11:47');


--
-- TOC entry 3621 (class 0 OID 16772)
-- Dependencies: 245
-- Data for Name: le_proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3623 (class 0 OID 16781)
-- Dependencies: 247
-- Data for Name: le_representante_legal; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3589 (class 0 OID 16461)
-- Dependencies: 213
-- Data for Name: le_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_rol VALUES (3, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'Control general', '*', 'A', '2022-07-27 11:09:00', NULL);


--
-- TOC entry 3603 (class 0 OID 16587)
-- Dependencies: 227
-- Data for Name: le_tipo_elecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_tipo_elecciones VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'E2022', 'Elecciones nacionales 2022', 'Detalle de las elecciones nacionales 2022 editado 1', 'A', '2022-08-09 16:13:46', '2022-08-09 16:17:54');
INSERT INTO public.le_tipo_elecciones VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'E2025', 'Elecciones 2025', 'Elecciones 2025 ahora editado', 'A', '2022-08-09 16:19:46', '2022-08-09 16:19:56');


--
-- TOC entry 3609 (class 0 OID 16619)
-- Dependencies: 233
-- Data for Name: le_tipos_flujo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_tipos_flujo VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'Detalles de este flujo (editado 1)', 'A', '2022-08-10 09:40:13', '2022-08-10 09:44:33');
INSERT INTO public.le_tipos_flujo VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'Segundo flujo', 'A', '2022-08-10 09:44:43', '2022-08-10 09:44:43');


--
-- TOC entry 3613 (class 0 OID 16662)
-- Dependencies: 237
-- Data for Name: le_tipos_flujo_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_tipos_flujo_trabajo VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'Origen del proceso 1 (editado)', 'Destino del proceso 1 (editado)', 'X', '2022-08-10 15:41:28', '2022-08-10 16:33:13');
INSERT INTO public.le_tipos_flujo_trabajo VALUES (2, '69abe0de-7812-41bd-9124-6a7238aee7d1', 2, 'Origen del proceso 1', 'Destino del proceso 1', 'A', '2022-08-10 16:33:53', '2022-08-10 16:33:53');


--
-- TOC entry 3587 (class 0 OID 16442)
-- Dependencies: 211
-- Data for Name: le_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_usuarios VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'jose.aparicio', '$2y$10$b9LgZL6qoVZJpCD7REetU.SXsm6wceG65xl6onkjwTy6QMxB4iIOq', 'ohkmalganis@gmail.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMVwvYXBpXC9sb2dpbiIsImlhdCI6MTY2MDY1NTY3NiwiZXhwIjoxNjY1ODM5Njc2LCJuYmYiOjE2NjA2NTU2NzYsImp0aSI6IlB4dmxiSzBJODR1T1BqSXYiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.7UE2nvsBxe8DNdFyBqk0ubcrGWaD22xwQQ7ylZU_K4g', 5184000, 0, '2022-08-12', '127.0.0.1', NULL, 'A', '2022-07-26 15:48:25', '2022-08-16 09:14:36', NULL);


--
-- TOC entry 3595 (class 0 OID 16518)
-- Dependencies: 219
-- Data for Name: le_usuarios_passwords; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3591 (class 0 OID 16477)
-- Dependencies: 215
-- Data for Name: le_usuarios_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.le_usuarios_rol VALUES (1, '69abe0de-7812-41bd-9124-6a7238aee7d1', 3, '69abe0de-7812-41bd-9124-6a7238aee7d1', 'A', '2022-07-27 11:09:00', NULL);


--
-- TOC entry 3952 (class 0 OID 0)
-- Dependencies: 228
-- Name: le_ambito_elecciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_ambito_elecciones_id_seq', 1, true);


--
-- TOC entry 3953 (class 0 OID 0)
-- Dependencies: 252
-- Name: le_caracteristicas_generales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_generales_id_seq', 1, true);


--
-- TOC entry 3954 (class 0 OID 0)
-- Dependencies: 263
-- Name: le_caracteristicas_tecnicas_compuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_tecnicas_compuestas_id_seq', 1, true);


--
-- TOC entry 3955 (class 0 OID 0)
-- Dependencies: 261
-- Name: le_caracteristicas_tecnicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_caracteristicas_tecnicas_id_seq', 1, true);


--
-- TOC entry 3956 (class 0 OID 0)
-- Dependencies: 222
-- Name: le_catalogos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_catalogos_id_seq', 30, true);


--
-- TOC entry 3957 (class 0 OID 0)
-- Dependencies: 250
-- Name: le_det_material_electoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_det_material_electoral_id_seq', 4, true);


--
-- TOC entry 3958 (class 0 OID 0)
-- Dependencies: 234
-- Name: le_estados_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_estados_procesos_id_seq', 2, true);


--
-- TOC entry 3959 (class 0 OID 0)
-- Dependencies: 254
-- Name: le_factor_distribucion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_factor_distribucion_id_seq', 2, true);


--
-- TOC entry 3960 (class 0 OID 0)
-- Dependencies: 220
-- Name: le_history_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_history_data_id_seq', 87, true);


--
-- TOC entry 3961 (class 0 OID 0)
-- Dependencies: 242
-- Name: le_material_electoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_material_electoral_id_seq', 1, true);


--
-- TOC entry 3962 (class 0 OID 0)
-- Dependencies: 256
-- Name: le_material_sensible_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_material_sensible_id_seq', 1, false);


--
-- TOC entry 3963 (class 0 OID 0)
-- Dependencies: 224
-- Name: le_materiales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_materiales_id_seq', 5, true);


--
-- TOC entry 3964 (class 0 OID 0)
-- Dependencies: 230
-- Name: le_modalidad_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_modalidad_procesos_id_seq', 1, false);


--
-- TOC entry 3965 (class 0 OID 0)
-- Dependencies: 240
-- Name: le_padron_proyectado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_padron_proyectado_id_seq', 1, true);


--
-- TOC entry 3966 (class 0 OID 0)
-- Dependencies: 258
-- Name: le_papeletas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_papeletas_id_seq', 3, true);


--
-- TOC entry 3967 (class 0 OID 0)
-- Dependencies: 216
-- Name: le_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_persona_id_seq', 1, true);


--
-- TOC entry 3968 (class 0 OID 0)
-- Dependencies: 248
-- Name: le_presupuesto_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_presupuesto_material_id_seq', 1, false);


--
-- TOC entry 3969 (class 0 OID 0)
-- Dependencies: 238
-- Name: le_procesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_procesos_id_seq', 2, true);


--
-- TOC entry 3970 (class 0 OID 0)
-- Dependencies: 244
-- Name: le_proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_proveedores_id_seq', 1, false);


--
-- TOC entry 3971 (class 0 OID 0)
-- Dependencies: 246
-- Name: le_representante_legal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_representante_legal_id_seq', 1, false);


--
-- TOC entry 3972 (class 0 OID 0)
-- Dependencies: 212
-- Name: le_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_rol_id_seq', 3, true);


--
-- TOC entry 3973 (class 0 OID 0)
-- Dependencies: 226
-- Name: le_tipo_elecciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipo_elecciones_id_seq', 2, true);


--
-- TOC entry 3974 (class 0 OID 0)
-- Dependencies: 232
-- Name: le_tipos_flujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipos_flujo_id_seq', 2, true);


--
-- TOC entry 3975 (class 0 OID 0)
-- Dependencies: 236
-- Name: le_tipos_flujo_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_tipos_flujo_trabajo_id_seq', 2, true);


--
-- TOC entry 3976 (class 0 OID 0)
-- Dependencies: 210
-- Name: le_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_id_seq', 1, false);


--
-- TOC entry 3977 (class 0 OID 0)
-- Dependencies: 218
-- Name: le_usuarios_passwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_passwords_id_seq', 1, false);


--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 214
-- Name: le_usuarios_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.le_usuarios_rol_id_seq', 1, true);


--
-- TOC entry 3363 (class 2606 OID 16603)
-- Name: le_ambito_elecciones le_ambito_elecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones
    ADD CONSTRAINT le_ambito_elecciones_pkey PRIMARY KEY (id);


--
-- TOC entry 3387 (class 2606 OID 16850)
-- Name: le_caracteristicas_generales le_caracteristicas_generales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT le_caracteristicas_generales_pkey PRIMARY KEY (id);


--
-- TOC entry 3399 (class 2606 OID 16959)
-- Name: le_caracteristicas_tecnicas_compuestas le_caracteristicas_tecnicas_compuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT le_caracteristicas_tecnicas_compuestas_pkey PRIMARY KEY (id);


--
-- TOC entry 3397 (class 2606 OID 16939)
-- Name: le_caracteristicas_tecnicas le_caracteristicas_tecnicas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT le_caracteristicas_tecnicas_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 16563)
-- Name: le_catalogos le_catalogos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos
    ADD CONSTRAINT le_catalogos_pkey PRIMARY KEY (id);


--
-- TOC entry 3395 (class 2606 OID 16928)
-- Name: le_cerchas le_cerchas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_cerchas
    ADD CONSTRAINT le_cerchas_pkey PRIMARY KEY (id);


--
-- TOC entry 3385 (class 2606 OID 16821)
-- Name: le_det_material_electoral le_det_material_electoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT le_det_material_electoral_pkey PRIMARY KEY (id);


--
-- TOC entry 3369 (class 2606 OID 16640)
-- Name: le_estados_procesos le_estados_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos
    ADD CONSTRAINT le_estados_procesos_pkey PRIMARY KEY (id);


--
-- TOC entry 3389 (class 2606 OID 16869)
-- Name: le_factor_distribucion le_factor_distribucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion
    ADD CONSTRAINT le_factor_distribucion_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 16544)
-- Name: le_history_data le_history_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data
    ADD CONSTRAINT le_history_data_pkey PRIMARY KEY (id);


--
-- TOC entry 3377 (class 2606 OID 16745)
-- Name: le_material_electoral le_material_electoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT le_material_electoral_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 16888)
-- Name: le_material_sensible le_material_sensible_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT le_material_sensible_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 16585)
-- Name: le_materiales le_materiales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales
    ADD CONSTRAINT le_materiales_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 16612)
-- Name: le_modalidad_procesos le_modalidad_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos
    ADD CONSTRAINT le_modalidad_procesos_pkey PRIMARY KEY (id);


--
-- TOC entry 3375 (class 2606 OID 16715)
-- Name: le_padron_proyectado le_padron_proyectado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT le_padron_proyectado_pkey PRIMARY KEY (id);


--
-- TOC entry 3393 (class 2606 OID 16909)
-- Name: le_papeletas le_papeletas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT le_papeletas_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 16501)
-- Name: le_persona le_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT le_persona_pkey PRIMARY KEY (id);


--
-- TOC entry 3383 (class 2606 OID 16802)
-- Name: le_presupuesto_material le_presupuesto_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT le_presupuesto_material_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 16683)
-- Name: le_procesos le_procesos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT le_procesos_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 16779)
-- Name: le_proveedores le_proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_proveedores
    ADD CONSTRAINT le_proveedores_pkey PRIMARY KEY (id);


--
-- TOC entry 3381 (class 2606 OID 16788)
-- Name: le_representante_legal le_representante_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal
    ADD CONSTRAINT le_representante_legal_pkey PRIMARY KEY (id);


--
-- TOC entry 3347 (class 2606 OID 16468)
-- Name: le_rol le_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol
    ADD CONSTRAINT le_rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 16594)
-- Name: le_tipo_elecciones le_tipo_elecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones
    ADD CONSTRAINT le_tipo_elecciones_pkey PRIMARY KEY (id);


--
-- TOC entry 3367 (class 2606 OID 16626)
-- Name: le_tipos_flujo le_tipos_flujo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo
    ADD CONSTRAINT le_tipos_flujo_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 16669)
-- Name: le_tipos_flujo_trabajo le_tipos_flujo_trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo
    ADD CONSTRAINT le_tipos_flujo_trabajo_pkey PRIMARY KEY (id);


--
-- TOC entry 3353 (class 2606 OID 16523)
-- Name: le_usuarios_passwords le_usuarios_passwords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT le_usuarios_passwords_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 16452)
-- Name: le_usuarios le_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios
    ADD CONSTRAINT le_usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 16482)
-- Name: le_usuarios_rol le_usuarios_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT le_usuarios_rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 16470)
-- Name: le_usuarios le_usuarios_sid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios
    ADD CONSTRAINT le_usuarios_sid UNIQUE (sid);


--
-- TOC entry 3433 (class 2606 OID 16837)
-- Name: le_det_material_electoral id_ambito_eleccion_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_ambito_eleccion_le_det_material_electoral_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- TOC entry 3425 (class 2606 OID 16761)
-- Name: le_material_electoral id_ambito_eleccion_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_ambito_eleccion_le_material_electoral_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- TOC entry 3421 (class 2606 OID 16727)
-- Name: le_padron_proyectado id_ambito_eleccion_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_ambito_eleccion_le_padron_proyectado_fk FOREIGN KEY (id_ambito_eleccion) REFERENCES public.le_ambito_elecciones(id);


--
-- TOC entry 3443 (class 2606 OID 16976)
-- Name: le_caracteristicas_tecnicas_compuestas id_cerchas_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_cerchas_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_cerchas) REFERENCES public.le_cerchas(id);


--
-- TOC entry 3441 (class 2606 OID 16946)
-- Name: le_caracteristicas_tecnicas id_det_material_electoral_le_caracteristicas_tecnicas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT id_det_material_electoral_le_caracteristicas_tecnicas_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- TOC entry 3434 (class 2606 OID 16856)
-- Name: le_caracteristicas_generales id_det_material_electoral_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT id_det_material_electoral_le_det_material_electoral_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- TOC entry 3437 (class 2606 OID 16894)
-- Name: le_material_sensible id_det_material_electoral_le_materiales_sensible_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT id_det_material_electoral_le_materiales_sensible_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- TOC entry 3444 (class 2606 OID 16966)
-- Name: le_caracteristicas_tecnicas_compuestas id_material_electoral_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_material_electoral_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_det_material_electoral) REFERENCES public.le_det_material_electoral(id);


--
-- TOC entry 3431 (class 2606 OID 16827)
-- Name: le_det_material_electoral id_material_electoral_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_material_electoral_le_det_material_electoral_fk FOREIGN KEY (id_material_electoral) REFERENCES public.le_material_electoral(id);


--
-- TOC entry 3432 (class 2606 OID 16832)
-- Name: le_det_material_electoral id_material_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT id_material_le_det_material_electoral_fk FOREIGN KEY (id_material) REFERENCES public.le_materiales(id);


--
-- TOC entry 3429 (class 2606 OID 16808)
-- Name: le_presupuesto_material id_material_le_presupuesto_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT id_material_le_presupuesto_material_fk FOREIGN KEY (id_material) REFERENCES public.le_materiales(id);


--
-- TOC entry 3424 (class 2606 OID 16751)
-- Name: le_material_electoral id_padron_proyectado_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_padron_proyectado_le_material_electoral_fk FOREIGN KEY (id_padron_proyectado) REFERENCES public.le_padron_proyectado(id);


--
-- TOC entry 3445 (class 2606 OID 16971)
-- Name: le_caracteristicas_tecnicas_compuestas id_papeletas_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT id_papeletas_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (id_papeletas) REFERENCES public.le_papeletas(id);


--
-- TOC entry 3426 (class 2606 OID 16766)
-- Name: le_material_electoral id_proceso_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT id_proceso_le_material_electoral_fk FOREIGN KEY (id_proceso) REFERENCES public.le_procesos(id);


--
-- TOC entry 3422 (class 2606 OID 16732)
-- Name: le_padron_proyectado id_proceso_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_proceso_le_padron_proyectado_fk FOREIGN KEY (id_proceso) REFERENCES public.le_procesos(id);


--
-- TOC entry 3428 (class 2606 OID 16803)
-- Name: le_presupuesto_material id_proveedores_le_presupuesto_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_presupuesto_material
    ADD CONSTRAINT id_proveedores_le_presupuesto_material_fk FOREIGN KEY (id_proveedores) REFERENCES public.le_proveedores(id);


--
-- TOC entry 3427 (class 2606 OID 16789)
-- Name: le_representante_legal id_proveedores_le_representante_legal_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_representante_legal
    ADD CONSTRAINT id_proveedores_le_representante_legal_fk FOREIGN KEY (id_proveedores) REFERENCES public.le_proveedores(id);


--
-- TOC entry 3401 (class 2606 OID 16483)
-- Name: le_usuarios_rol id_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT id_rol_fk FOREIGN KEY (id_rol) REFERENCES public.le_rol(id);


--
-- TOC entry 3420 (class 2606 OID 16722)
-- Name: le_padron_proyectado id_tipo_eleccion_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT id_tipo_eleccion_le_padron_proyectado_fk FOREIGN KEY (id_tipo_eleccion) REFERENCES public.le_tipo_elecciones(id);


--
-- TOC entry 3439 (class 2606 OID 16915)
-- Name: le_papeletas id_tipo_elecciones_le_papeletas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT id_tipo_elecciones_le_papeletas_fk FOREIGN KEY (id_tipo_elecciones) REFERENCES public.le_tipo_elecciones(id);


--
-- TOC entry 3418 (class 2606 OID 16695)
-- Name: le_procesos id_tipos_flujo_le_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT id_tipos_flujo_le_procesos_fk FOREIGN KEY (id_tipos_flujo) REFERENCES public.le_tipos_flujo(id);


--
-- TOC entry 3405 (class 2606 OID 16507)
-- Name: le_persona id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3407 (class 2606 OID 16529)
-- Name: le_usuarios_passwords id_usuario_le_usuarios_passwords_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT id_usuario_le_usuarios_passwords_fk FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3403 (class 2606 OID 16512)
-- Name: le_usuarios_rol id_usuario_le_usuarios_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT id_usuario_le_usuarios_rol FOREIGN KEY (id_usuario) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3412 (class 2606 OID 16651)
-- Name: le_ambito_elecciones users_sid_le_ambito_elecciones_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_ambito_elecciones
    ADD CONSTRAINT users_sid_le_ambito_elecciones_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3446 (class 2606 OID 16961)
-- Name: le_caracteristicas_tecnicas_compuestas users_sid_le_caracteristicas_tecnicas_compuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas_compuestas
    ADD CONSTRAINT users_sid_le_caracteristicas_tecnicas_compuestas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3442 (class 2606 OID 16940)
-- Name: le_caracteristicas_tecnicas users_sid_le_caracteristicas_tecnicas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_tecnicas
    ADD CONSTRAINT users_sid_le_caracteristicas_tecnicas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3409 (class 2606 OID 16572)
-- Name: le_catalogos users_sid_le_caralogos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_catalogos
    ADD CONSTRAINT users_sid_le_caralogos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3430 (class 2606 OID 16822)
-- Name: le_det_material_electoral users_sid_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_det_material_electoral
    ADD CONSTRAINT users_sid_le_det_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3435 (class 2606 OID 16851)
-- Name: le_caracteristicas_generales users_sid_le_det_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_caracteristicas_generales
    ADD CONSTRAINT users_sid_le_det_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3415 (class 2606 OID 16641)
-- Name: le_estados_procesos users_sid_le_estados_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_estados_procesos
    ADD CONSTRAINT users_sid_le_estados_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3436 (class 2606 OID 16870)
-- Name: le_factor_distribucion users_sid_le_factor_distribucion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_factor_distribucion
    ADD CONSTRAINT users_sid_le_factor_distribucion_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3408 (class 2606 OID 16545)
-- Name: le_history_data users_sid_le_history_data_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_history_data
    ADD CONSTRAINT users_sid_le_history_data_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3423 (class 2606 OID 16746)
-- Name: le_material_electoral users_sid_le_material_electoral_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_electoral
    ADD CONSTRAINT users_sid_le_material_electoral_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3410 (class 2606 OID 16646)
-- Name: le_materiales users_sid_le_materiales_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_materiales
    ADD CONSTRAINT users_sid_le_materiales_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3438 (class 2606 OID 16889)
-- Name: le_material_sensible users_sid_le_materiales_sensible_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_material_sensible
    ADD CONSTRAINT users_sid_le_materiales_sensible_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3413 (class 2606 OID 16613)
-- Name: le_modalidad_procesos users_sid_le_modalidad_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_modalidad_procesos
    ADD CONSTRAINT users_sid_le_modalidad_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3419 (class 2606 OID 16717)
-- Name: le_padron_proyectado users_sid_le_padron_proyectado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_padron_proyectado
    ADD CONSTRAINT users_sid_le_padron_proyectado_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3440 (class 2606 OID 16910)
-- Name: le_papeletas users_sid_le_papeletas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_papeletas
    ADD CONSTRAINT users_sid_le_papeletas_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3404 (class 2606 OID 16502)
-- Name: le_persona users_sid_le_persona_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_persona
    ADD CONSTRAINT users_sid_le_persona_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3417 (class 2606 OID 16684)
-- Name: le_procesos users_sid_le_procesos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_procesos
    ADD CONSTRAINT users_sid_le_procesos_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3400 (class 2606 OID 16471)
-- Name: le_rol users_sid_le_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_rol
    ADD CONSTRAINT users_sid_le_rol_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3411 (class 2606 OID 16656)
-- Name: le_tipo_elecciones users_sid_le_tipo_elecciones_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipo_elecciones
    ADD CONSTRAINT users_sid_le_tipo_elecciones_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3414 (class 2606 OID 16627)
-- Name: le_tipos_flujo users_sid_le_tipos_flujo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo
    ADD CONSTRAINT users_sid_le_tipos_flujo_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3416 (class 2606 OID 16670)
-- Name: le_tipos_flujo_trabajo users_sid_le_tipos_flujo_trabajo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_tipos_flujo_trabajo
    ADD CONSTRAINT users_sid_le_tipos_flujo_trabajo_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3406 (class 2606 OID 16524)
-- Name: le_usuarios_passwords users_sid_le_usuarios_passwords_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_passwords
    ADD CONSTRAINT users_sid_le_usuarios_passwords_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


--
-- TOC entry 3402 (class 2606 OID 16488)
-- Name: le_usuarios_rol users_sid_le_usuarios_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.le_usuarios_rol
    ADD CONSTRAINT users_sid_le_usuarios_rol_fk FOREIGN KEY (users_sid) REFERENCES public.le_usuarios(sid);


-- Completed on 2022-08-17 15:00:12

--
-- PostgreSQL database dump complete
--

