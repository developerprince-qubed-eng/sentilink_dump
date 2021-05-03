--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customer_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_profile (
    id bigint NOT NULL,
    card_revision_date character varying(255),
    compliance_type character varying(255),
    country_territory_of_issuance character varying(255),
    date_of_birth character varying(255),
    document_discriminator character varying(255),
    eye_color character varying(255),
    family_name_truncation character varying(255),
    first_name character varying(255),
    first_names_truncation character varying(255),
    hair_color character varying(255),
    height_inftin character varying(255),
    inventory_control_number character varying(255),
    last_name character varying(255),
    license_expiration_date character varying(255),
    licenseidnumber character varying(255),
    license_oriddocument_issue_date character varying(255),
    mailing_city character varying(255),
    mailing_jurisdiction_code character varying(255),
    mailing_postal_code character varying(255),
    mailing_street_address1 character varying(255),
    middle_name character varying(255),
    organ_donor_indicator character varying(255),
    sex character varying(255),
    virginia_specific_class character varying(255),
    virginia_specific_endorsements character varying(255),
    virginia_specific_restrictions character varying(255),
    weight_inlbs character varying(255)
);


ALTER TABLE public.customer_profile OWNER TO postgres;

--
-- Name: customer_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_record (
    id bigint NOT NULL,
    customer_globalid character varying(255),
    eye_color character varying(255),
    hair_color character varying(255),
    height_incm character varying(255),
    height_in_ft_in character varying(255),
    sex character varying(255),
    weight_in_kg character varying(255),
    weight_in_lbs character varying(255),
    cell_phone character varying(255),
    city character varying(255),
    county character varying(255),
    email_preffered character varying(255),
    email_primary character varying(255),
    email_work character varying(255),
    email_secondary character varying(255),
    home_phone character varying(255),
    mailing_city character varying(255),
    mailing_jurisdiction_code character varying(255),
    mailingmsa character varying(255),
    mailingmsacode character varying(255),
    mailing_postal_code character varying(255),
    mailing_state character varying(255),
    mailing_street_address1 character varying(255),
    mailing_street_address2 character varying(255),
    msa character varying(255),
    msa_code character varying(255),
    postal_code character varying(255),
    rent_own character varying(255),
    res_type character varying(255),
    state character varying(255),
    street_name character varying(255),
    street_number character varying(255),
    time_at_present_address_mnths character varying(255),
    time_at_present_address_yrs character varying(255),
    unit_or_appt character varying(255),
    date_created character varying(255),
    date_of_birth character varying(255),
    educ_level character varying(255),
    family_name character varying(255),
    first_name character varying(255),
    given_name character varying(255),
    last_name character varying(255),
    license_expiration_date character varying(255),
    licenseidnumber character varying(255),
    license_state character varying(255),
    middle_initial character varying(255),
    middle_name character varying(255),
    name_prefix character varying(255),
    name_suffix character varying(255),
    non_resident_indicator character varying(255),
    privacy_indicator character varying(255),
    privacy_type character varying(255),
    social_security_number character varying(255),
    social_security_number_fraud1 character varying(255),
    social_security_number_fraud2 character varying(255),
    social_security_number_fraud3 character varying(255),
    status character varying(255),
    status_description character varying(255)
);


ALTER TABLE public.customer_record OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: senti_pay_load; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load (
    id bigint NOT NULL,
    address_line_1 character varying(255),
    address_line_2 character varying(255),
    alt_address_line_1 character varying(255),
    alt_address_line_2 character varying(255),
    alt_city character varying(255),
    alt_country_code character varying(255),
    alt_email character varying(255),
    alt_phone character varying(255),
    alt_state_code character varying(255),
    alt_zipcode character varying(255),
    application_created character varying(255),
    application_id character varying(255),
    business_name character varying(255),
    business_url character varying(255),
    city character varying(255),
    country_code character varying(255),
    device_id character varying(255),
    dob character varying(255),
    ein character varying(255),
    email character varying(255),
    first_name character varying(255),
    ip_address character varying(255),
    last_name character varying(255),
    lead_type character varying(255),
    loan_amount character varying(255),
    loan_currency character varying(255),
    any_additional_data character varying(255),
    phone character varying(255),
    ssn character varying(255),
    state_code character varying(255),
    user_created character varying(255),
    user_id character varying(255),
    zipcode character varying(255)
);


ALTER TABLE public.senti_pay_load OWNER TO postgres;

--
-- Name: senti_pay_load_complete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load_complete (
    id bigint NOT NULL,
    address_line_1 character varying(255),
    application_created character varying(255),
    application_id character varying(255),
    city character varying(255),
    dob character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    ssn character varying(255),
    state_code character varying(255),
    user_created character varying(255),
    user_id character varying(255),
    zipcode character varying(255)
);


ALTER TABLE public.senti_pay_load_complete OWNER TO postgres;

--
-- Name: senti_pay_load_complete_response; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load_complete_response (
    id bigint NOT NULL,
    address_line_1 character varying(255),
    application_created character varying(255),
    application_id character varying(255),
    city character varying(255),
    dob character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    ssn character varying(255),
    state_code character varying(255),
    user_created character varying(255),
    user_id character varying(255),
    zipcode character varying(255),
    confidence_level character varying(255),
    environment character varying(255),
    latency_ms character varying(255),
    notes character varying(255),
    "timestamp" character varying(255),
    transaction_id character varying(255)
);


ALTER TABLE public.senti_pay_load_complete_response OWNER TO postgres;

--
-- Name: senti_pay_load_complete_response_updated_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load_complete_response_updated_fields (
    senti_pay_load_complete_response_id bigint NOT NULL,
    updated_fields character varying(255)
);


ALTER TABLE public.senti_pay_load_complete_response_updated_fields OWNER TO postgres;

--
-- Name: senti_pay_load_response; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load_response (
    id bigint NOT NULL,
    application_id character varying(255),
    customer_id character varying(255),
    environment character varying(255),
    latency_ms character varying(255),
    notes character varying(255),
    "timestamp" character varying(255),
    transaction_id character varying(255)
);


ALTER TABLE public.senti_pay_load_response OWNER TO postgres;

--
-- Name: senti_pay_load_response_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.senti_pay_load_response_scores (
    senti_pay_load_response_id bigint NOT NULL,
    name character varying(255),
    score character varying(255),
    version character varying(255)
);


ALTER TABLE public.senti_pay_load_response_scores OWNER TO postgres;

--
-- Name: customer_profile customer_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_profile
    ADD CONSTRAINT customer_profile_pkey PRIMARY KEY (id);


--
-- Name: customer_record customer_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_record
    ADD CONSTRAINT customer_record_pkey PRIMARY KEY (id);


--
-- Name: senti_pay_load_complete senti_pay_load_complete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load_complete
    ADD CONSTRAINT senti_pay_load_complete_pkey PRIMARY KEY (id);


--
-- Name: senti_pay_load_complete_response senti_pay_load_complete_response_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load_complete_response
    ADD CONSTRAINT senti_pay_load_complete_response_pkey PRIMARY KEY (id);


--
-- Name: senti_pay_load senti_pay_load_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load
    ADD CONSTRAINT senti_pay_load_pkey PRIMARY KEY (id);


--
-- Name: senti_pay_load_response senti_pay_load_response_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load_response
    ADD CONSTRAINT senti_pay_load_response_pkey PRIMARY KEY (id);


--
-- Name: senti_pay_load_complete_response_updated_fields fk5cm5w0ay7rujqku1af0nm54hu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load_complete_response_updated_fields
    ADD CONSTRAINT fk5cm5w0ay7rujqku1af0nm54hu FOREIGN KEY (senti_pay_load_complete_response_id) REFERENCES public.senti_pay_load_complete_response(id);


--
-- Name: senti_pay_load_response_scores fkbu2w88eqv5mewxjw9dopfi7n6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.senti_pay_load_response_scores
    ADD CONSTRAINT fkbu2w88eqv5mewxjw9dopfi7n6 FOREIGN KEY (senti_pay_load_response_id) REFERENCES public.senti_pay_load_response(id);


--
-- PostgreSQL database dump complete
--

