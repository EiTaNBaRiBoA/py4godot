from godot_api.binding cimport *


cdef extern from "binding.h":
    ctypedef struct godot_string:
        pass
    ctypedef struct uint8_t:
        pass
    ctypedef struct int64_t:
        pass
    ctypedef struct godot_char_string:
        pass
    ctypedef struct godot_string_name:
        pass

    struct godot_gdnative_core_api_struct:
        void (*godot_string_new)(godot_string *r_dest);
        void (*godot_string_new_copy)(godot_string *r_dest, const godot_string *p_src);
        void (*godot_string_new_with_wide_string)(godot_string *r_dest, const wchar_t *p_contents, const int p_size);
        const wchar_t *(*godot_string_operator_index)(godot_string *p_self, const godot_int p_idx);
        wchar_t (*godot_string_operator_index_const)(const godot_string *p_self, const godot_int p_idx);
        const wchar_t *(*godot_string_wide_str)(const godot_string *p_self);
        godot_bool (*godot_string_operator_equal)(const godot_string *p_self, const godot_string *p_b);
        godot_bool (*godot_string_operator_less)(const godot_string *p_self, const godot_string *p_b);
        godot_string (*godot_string_operator_plus)(const godot_string *p_self, const godot_string *p_b);
        godot_int (*godot_string_length)(const godot_string *p_self);
        signed char (*godot_string_casecmp_to)(const godot_string *p_self, const godot_string *p_str);
        signed char (*godot_string_nocasecmp_to)(const godot_string *p_self, const godot_string *p_str);
        signed char (*godot_string_naturalnocasecmp_to)(const godot_string *p_self, const godot_string *p_str);
        godot_bool (*godot_string_begins_with)(const godot_string *p_self, const godot_string *p_string);
        godot_bool (*godot_string_begins_with_char_array)(const godot_string *p_self, const char *p_char_array);
        godot_array (*godot_string_bigrams)(const godot_string *p_self);
        godot_string (*godot_string_chr)(wchar_t p_character);
        godot_bool (*godot_string_ends_with)(const godot_string *p_self, const godot_string *p_string);
        godot_int (*godot_string_find)(const godot_string *p_self, godot_string p_what);
        godot_int (*godot_string_find_from)(const godot_string *p_self, godot_string p_what, godot_int p_from);
        godot_int (*godot_string_findmk)(const godot_string *p_self, const godot_array *p_keys);
        godot_int (*godot_string_findmk_from)(const godot_string *p_self, const godot_array *p_keys, godot_int p_from);
        godot_int (*godot_string_findmk_from_in_place)(const godot_string *p_self, const godot_array *p_keys, godot_int p_from, godot_int *r_key);
        godot_int (*godot_string_findn)(const godot_string *p_self, godot_string p_what);
        godot_int (*godot_string_findn_from)(const godot_string *p_self, godot_string p_what, godot_int p_from);
        godot_int (*godot_string_find_last)(const godot_string *p_self, godot_string p_what);
        godot_string (*godot_string_format)(const godot_string *p_self, const godot_variant *p_values);
        godot_string (*godot_string_format_with_custom_placeholder)(const godot_string *p_self, const godot_variant *p_values, const char *p_placeholder);
        godot_string (*godot_string_hex_encode_buffer)(const uint8_t *p_buffer, godot_int p_len);
        godot_int (*godot_string_hex_to_int)(const godot_string *p_self);
        godot_int (*godot_string_hex_to_int_without_prefix)(const godot_string *p_self);
        godot_string (*godot_string_insert)(const godot_string *p_self, godot_int p_at_pos, godot_string p_string);
        godot_bool (*godot_string_is_numeric)(const godot_string *p_self);
        godot_bool (*godot_string_is_subsequence_of)(const godot_string *p_self, const godot_string *p_string);
        godot_bool (*godot_string_is_subsequence_ofi)(const godot_string *p_self, const godot_string *p_string);
        godot_string (*godot_string_lpad)(const godot_string *p_self, godot_int p_min_length);
        godot_string (*godot_string_lpad_with_custom_character)(const godot_string *p_self, godot_int p_min_length, const godot_string *p_character);
        godot_bool (*godot_string_match)(const godot_string *p_self, const godot_string *p_wildcard);
        godot_bool (*godot_string_matchn)(const godot_string *p_self, const godot_string *p_wildcard);
        godot_string (*godot_string_md5)(const uint8_t *p_md5);
        godot_string (*godot_string_num)(double p_num);
        godot_string (*godot_string_num_int64)(int64_t p_num, godot_int p_base);
        godot_string (*godot_string_num_int64_capitalized)(int64_t p_num, godot_int p_base, godot_bool p_capitalize_hex);
        godot_string (*godot_string_num_real)(double p_num);
        godot_string (*godot_string_num_scientific)(double p_num);
        godot_string (*godot_string_num_with_decimals)(double p_num, godot_int p_decimals);
        godot_string (*godot_string_pad_decimals)(const godot_string *p_self, godot_int p_digits);
        godot_string (*godot_string_pad_zeros)(const godot_string *p_self, godot_int p_digits);
        godot_string (*godot_string_replace_first)(const godot_string *p_self, godot_string p_key, godot_string p_with);
        godot_string (*godot_string_replace)(const godot_string *p_self, godot_string p_key, godot_string p_with);
        godot_string (*godot_string_replacen)(const godot_string *p_self, godot_string p_key, godot_string p_with);
        godot_int (*godot_string_rfind)(const godot_string *p_self, godot_string p_what);
        godot_int (*godot_string_rfindn)(const godot_string *p_self, godot_string p_what);
        godot_int (*godot_string_rfind_from)(const godot_string *p_self, godot_string p_what, godot_int p_from);
        godot_int (*godot_string_rfindn_from)(const godot_string *p_self, godot_string p_what, godot_int p_from);
        godot_string (*godot_string_rpad)(const godot_string *p_self, godot_int p_min_length);
        godot_string (*godot_string_rpad_with_custom_character)(const godot_string *p_self, godot_int p_min_length, const godot_string *p_character);
        godot_real (*godot_string_similarity)(const godot_string *p_self, const godot_string *p_string);
        godot_string (*godot_string_sprintf)(const godot_string *p_self, const godot_array *p_values, godot_bool *p_error);
        godot_string (*godot_string_substr)(const godot_string *p_self, godot_int p_from, godot_int p_chars);
        double (*godot_string_to_double)(const godot_string *p_self);
        godot_real (*godot_string_to_float)(const godot_string *p_self);
        godot_int (*godot_string_to_int)(const godot_string *p_self);
        godot_string (*godot_string_camelcase_to_underscore)(const godot_string *p_self);
        godot_string (*godot_string_camelcase_to_underscore_lowercased)(const godot_string *p_self);
        godot_string (*godot_string_capitalize)(const godot_string *p_self);
        double (*godot_string_char_to_double)(const char *p_what);
        godot_int (*godot_string_char_to_int)(const char *p_what);
        int64_t (*godot_string_wchar_to_int)(const wchar_t *p_str);
        godot_int (*godot_string_char_to_int_with_len)(const char *p_what, godot_int p_len);
        int64_t (*godot_string_char_to_int64_with_len)(const wchar_t *p_str, int p_len);
        int64_t (*godot_string_hex_to_int64)(const godot_string *p_self);
        int64_t (*godot_string_hex_to_int64_with_prefix)(const godot_string *p_self);
        int64_t (*godot_string_to_int64)(const godot_string *p_self);
        double (*godot_string_unicode_char_to_double)(const wchar_t *p_str, const wchar_t **r_end);
        godot_int (*godot_string_get_slice_count)(const godot_string *p_self, godot_string p_splitter);
        godot_string (*godot_string_get_slice)(const godot_string *p_self, godot_string p_splitter, godot_int p_slice);
        godot_string (*godot_string_get_slicec)(const godot_string *p_self, wchar_t p_splitter, godot_int p_slice);
        godot_array (*godot_string_split)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_allow_empty)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_floats)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_floats_allows_empty)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_floats_mk)(const godot_string *p_self, const godot_array *p_splitters);
        godot_array (*godot_string_split_floats_mk_allows_empty)(const godot_string *p_self, const godot_array *p_splitters);
        godot_array (*godot_string_split_ints)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_ints_allows_empty)(const godot_string *p_self, const godot_string *p_splitter);
        godot_array (*godot_string_split_ints_mk)(const godot_string *p_self, const godot_array *p_splitters);
        godot_array (*godot_string_split_ints_mk_allows_empty)(const godot_string *p_self, const godot_array *p_splitters);
        godot_array (*godot_string_split_spaces)(const godot_string *p_self);
        wchar_t (*godot_string_char_lowercase)(wchar_t p_char);
        wchar_t (*godot_string_char_uppercase)(wchar_t p_char);
        godot_string (*godot_string_to_lower)(const godot_string *p_self);
        godot_string (*godot_string_to_upper)(const godot_string *p_self);
        godot_string (*godot_string_get_basename)(const godot_string *p_self);
        godot_string (*godot_string_get_extension)(const godot_string *p_self);
        godot_string (*godot_string_left)(const godot_string *p_self, godot_int p_pos);
        wchar_t (*godot_string_ord_at)(const godot_string *p_self, godot_int p_idx);
        godot_string (*godot_string_plus_file)(const godot_string *p_self, const godot_string *p_file);
        godot_string (*godot_string_right)(const godot_string *p_self, godot_int p_pos);
        godot_string (*godot_string_strip_edges)(const godot_string *p_self, godot_bool p_left, godot_bool p_right);
        godot_string (*godot_string_strip_escapes)(const godot_string *p_self);
        void (*godot_string_erase)(godot_string *p_self, godot_int p_pos, godot_int p_chars);
        godot_char_string (*godot_string_ascii)(const godot_string *p_self);
        godot_char_string (*godot_string_ascii_extended)(const godot_string *p_self);
        godot_char_string (*godot_string_utf8)(const godot_string *p_self);
        godot_bool (*godot_string_parse_utf8)(godot_string *p_self, const char *p_utf8);
        godot_bool (*godot_string_parse_utf8_with_len)(godot_string *p_self, const char *p_utf8, godot_int p_len);
        godot_string (*godot_string_chars_to_utf8)(const char *p_utf8);
        godot_string (*godot_string_chars_to_utf8_with_len)(const char *p_utf8, godot_int p_len);
        uint32_t (*godot_string_hash)(const godot_string *p_self);
        uint64_t (*godot_string_hash64)(const godot_string *p_self);
        uint32_t (*godot_string_hash_chars)(const char *p_cstr);
        uint32_t (*godot_string_hash_chars_with_len)(const char *p_cstr, godot_int p_len);
        uint32_t (*godot_string_hash_utf8_chars)(const wchar_t *p_str);
        uint32_t (*godot_string_hash_utf8_chars_with_len)(const wchar_t *p_str, godot_int p_len);
        godot_pool_byte_array (*godot_string_md5_buffer)(const godot_string *p_self);
        godot_string (*godot_string_md5_text)(const godot_string *p_self);
        godot_pool_byte_array (*godot_string_sha256_buffer)(const godot_string *p_self);
        godot_string (*godot_string_sha256_text)(const godot_string *p_self);
        godot_bool (*godot_string_empty)(const godot_string *p_self);
        godot_string (*godot_string_get_base_dir)(const godot_string *p_self);
        godot_string (*godot_string_get_file)(const godot_string *p_self);
        godot_string (*godot_string_humanize_size)(size_t p_size);
        godot_bool (*godot_string_is_abs_path)(const godot_string *p_self);
        godot_bool (*godot_string_is_rel_path)(const godot_string *p_self);
        godot_bool (*godot_string_is_resource_file)(const godot_string *p_self);
        godot_string (*godot_string_path_to)(const godot_string *p_self, const godot_string *p_path);
        godot_string (*godot_string_path_to_file)(const godot_string *p_self, const godot_string *p_path);
        godot_string (*godot_string_simplify_path)(const godot_string *p_self);
        godot_string (*godot_string_c_escape)(const godot_string *p_self);
        godot_string (*godot_string_c_escape_multiline)(const godot_string *p_self);
        godot_string (*godot_string_c_unescape)(const godot_string *p_self);
        godot_string (*godot_string_http_escape)(const godot_string *p_self);
        godot_string (*godot_string_http_unescape)(const godot_string *p_self);
        godot_string (*godot_string_json_escape)(const godot_string *p_self);
        godot_string (*godot_string_word_wrap)(const godot_string *p_self, godot_int p_chars_per_line);
        godot_string (*godot_string_xml_escape)(const godot_string *p_self);
        godot_string (*godot_string_xml_escape_with_quotes)(const godot_string *p_self);
        godot_string (*godot_string_xml_unescape)(const godot_string *p_self);
        godot_string (*godot_string_percent_decode)(const godot_string *p_self);
        godot_string (*godot_string_percent_encode)(const godot_string *p_self);
        godot_bool (*godot_string_is_valid_float)(const godot_string *p_self);
        godot_bool (*godot_string_is_valid_hex_number)(const godot_string *p_self, godot_bool p_with_prefix);
        godot_bool (*godot_string_is_valid_html_color)(const godot_string *p_self);
        godot_bool (*godot_string_is_valid_identifier)(const godot_string *p_self);
        godot_bool (*godot_string_is_valid_integer)(const godot_string *p_self);
        godot_bool (*godot_string_is_valid_ip_address)(const godot_string *p_self);
        void (*godot_string_destroy)(godot_string *p_self);
        void (*godot_string_name_new)(godot_string_name *r_dest, const godot_string *p_name);
        void (*godot_string_name_new_data)(godot_string_name *r_dest, const char *p_name);
        godot_string (*godot_string_name_get_name)(const godot_string_name *p_self);
        uint32_t (*godot_string_name_get_hash)(const godot_string_name *p_self);
        const void *(*godot_string_name_get_data_unique_pointer)(const godot_string_name *p_self);
        godot_bool (*godot_string_name_operator_equal)(const godot_string_name *p_self, const godot_string_name *p_other);
        godot_bool (*godot_string_name_operator_less)(const godot_string_name *p_self, const godot_string_name *p_other);
        void (*godot_string_name_destroy)(godot_string_name *p_self);