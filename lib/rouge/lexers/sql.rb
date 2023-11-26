# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class SQL < RegexLexer
      title "SQL"
      desc "Structured Query Language, for relational databases"
      tag 'sql'
      filenames '*.sql'
      mimetypes 'text/x-sql'

      # list is taken from https://github.com/szarnyasg/duckdb/tree/main/third_party/libpg_query/grammar/keywords
      def self.keywords
        @keywords ||= Set.new(%w(
          ABORT
          ABS
          ABSOLUTE
          ACCESS
          ACTION
          ADA
          ADD
          ADMIN
          AFTER
          AGGREGATE
          ALIAS
          ALL
          ALLOCATE
          ALSO
          ALTER
          ALWAYS
          ANALYSE
          ANALYZE
          AND
          ANTI
          ANY
          ARE
          ARRAY
          AS
          ASC
          ASENSITIVE
          ASOF
          ASSERTION
          ASSIGNMENT
          ASYMMETRIC
          AT
          ATOMIC
          ATTACH
          ATTRIBUTE
          AUTHORIZATION
          AVG
          BACKWARD
          BEFORE
          BEGIN
          BETWEEN
          BIGINT
          BINARY
          BIT
          BIT_LENGTH
          BITVAR
          BOOLEAN
          BOTH
          BREADTH
          BY
          C
          CACHE
          CALL
          CALLED
          CARDINALITY
          CASCADE
          CASCADED
          CASE
          CAST
          CATALOG
          CATALOG_NAME
          CHAIN
          CHAR
          CHAR_LENGTH
          CHARACTER
          CHARACTER_LENGTH
          CHARACTER_SET_CATALOG
          CHARACTER_SET_NAME
          CHARACTER_SET_SCHEMA
          CHARACTERISTICS
          CHECK
          CHECKED
          CHECKPOINT
          CLASS
          CLASS_ORIGIN
          CLOB
          CLOSE
          CLUSTER
          COALESCE
          COBOL
          COLLATE
          COLLATION
          COLLATION_CATALOG
          COLLATION_NAME
          COLLATION_SCHEMA
          COLUMN
          COLUMN_NAME
          COLUMNS
          COMMAND_FUNCTION
          COMMAND_FUNCTION_CODE
          COMMENT
          COMMENTS
          COMMIT
          COMMITTED
          COMPLETION
          COMPRESSION
          CONCURRENTLY
          CONDITION_NUMBER
          CONFIGURATION
          CONFLICT
          CONNECT
          CONNECTION
          CONNECTION_NAME
          CONSTRAINT
          CONSTRAINT_CATALOG
          CONSTRAINT_NAME
          CONSTRAINT_SCHEMA
          CONSTRAINTS
          CONSTRUCTOR
          CONTAINS
          CONTENT
          CONTINUE
          CONVERSION
          CONVERT
          COPY
          CORRESPONTING
          COST
          COUNT
          CREATE
          CREATEDB
          CREATEUSER
          CROSS
          CSV
          CUBE
          CURRENT
          CURRENT_DATE
          CURRENT_PATH
          CURRENT_ROLE
          CURRENT_TIME
          CURRENT_TIMESTAMP
          CURRENT_USER
          CURSOR
          CURSOR_NAME
          CYCLE
          DATA
          DATABASE
          DATABASES
          DATETIME_INTERVAL_CODE
          DATETIME_INTERVAL_PRECISION
          DAY
          DAYS
          DEALLOCATE
          DEC
          DECIMAL
          DECLARE
          DEFAULT
          DEFAULTS
          DEFERRABLE
          DEFERRED
          DEFINED
          DEFINER
          DELETE
          DELIMITER
          DELIMITERS
          DEPENDS
          DEREF
          DESC
          DESCRIBE
          DESCRIPTOR
          DESTROY
          DESTRUCTOR
          DETACH
          DETERMINISTIC
          DIAGNOSTICS
          DICTIONARY
          DISABLE
          DISCARD
          DISCONNECT
          DISPATCH
          DISTINCT
          DO
          DOCUMENT
          DOMAIN
          DOUBLE
          DROP
          DYNAMIC
          DYNAMIC_FUNCTION
          DYNAMIC_FUNCTION_CODE
          EACH
          ELSE
          ENABLE
          ENCODING
          ENCRYPTED
          END
          END-EXEC
          ENUM
          EQUALS
          ESCAPE
          ESCEPTION
          EVENT
          EVERY
          EXCEPT
          EXCLUDE
          EXCLUDING
          EXCLUSIVE
          EXEC
          EXECUTE
          EXISTING
          EXISTS
          EXPLAIN
          EXPORT
          EXPORT_STATE
          EXTENSION
          EXTERNAL
          EXTRACT
          false
          FALSE
          FAMILY
          FETCH
          FILTER
          FINAL
          FIRST
          FLOAT
          FOLLOWING
          FOR
          FORCE
          FOREIGN
          FORTRAN
          FORWARD
          FOUND
          FREE
          FREEZE
          FROM
          FULL
          FUNCTION
          FUNCTIONS
          G
          GENERAL
          GENERATED
          GET
          GLOB
          GLOBAL
          GO
          GOTO
          GRANT
          GRANTED
          GROUP
          GROUPING
          GROUPING_ID
          HANDLER
          HAVING
          HEADER
          HIERARCHY
          HOLD
          HOST
          HOUR
          HOURS
          IDENTITY
          IF
          IGNORE
          ILIKE
          IMMEDIATE
          IMMUTABLE
          IMPLEMENTATION
          IMPLICIT
          IMPORT
          IN
          INCLUDE
          INCLUDING
          INCREMENT
          INDEX
          INDEXES
          INDITCATOR
          INFIX
          INHERIT
          INHERITS
          INITIALIZE
          INITIALLY
          INLINE
          INNER
          INOUT
          INPUT
          INSENSITIVE
          INSERT
          INSTALL
          INSTANTIABLE
          INSTEAD
          INT
          INTEGER
          INTERSECT
          INTERVAL
          INTO
          INVOKER
          IS
          ISNULL
          ISOLATION
          ITERATE
          JOIN
          JSON
          KEY
          KEY_MEMBER
          KEY_TYPE
          LABEL
          LANCOMPILER
          LANGUAGE
          LARGE
          LAST
          LATERAL
          LEADING
          LEAKPROOF
          LEFT
          LENGTH
          LESS
          LEVEL
          LIKE
          LIMIT
          LISTEN
          LOAD
          LOCAL
          LOCALTIME
          LOCALTIMESTAMP
          LOCATION
          LOCATOR
          LOCK
          LOCKED
          LOGGED
          LOWER
          MACRO
          MAP
          MAPPING
          MATCH
          MATERIALIZED
          MAX
          MAXVALUE
          MESSAGE_LENGTH
          MESSAGE_OCTET_LENGTH
          MESSAGE_TEXT
          METHOD
          MICROSECOND
          MICROSECONDS
          MILLISECOND
          MILLISECONDS
          MIN
          MINUTE
          MINUTES
          MINVALUE
          MOD
          MODE
          MODIFIES
          MODIFY
          MONTH
          MONTHS
          MORE
          MOVE
          MUMPS
          NAME
          NAMES
          NATIONAL
          NATURAL
          NCHAR
          NCLOB
          NEW
          NEXT
          NO
          NOCREATEDB
          NOCREATEUSER
          NONE
          NOT
          NOTHING
          NOTIFY
          NOTNULL
          NOWAIT
          NULL
          NULLABLE
          NULLIF
          NULLS
          NUMERIC
          OBJECT
          OCTET_LENGTH
          OF
          OFF
          OFFSET
          OIDS
          OLD
          ON
          ONLY
          OPEN
          OPERATION
          OPERATOR
          OPTION
          OPTIONS
          OR
          ORDER
          ORDINALITY
          OUT
          OUTER
          OUTPUT
          OVER
          OVERLAPS
          OVERLAY
          OVERRIDING
          OWNED
          OWNER
          PAD
          PARALLEL
          PARAMATER_NAME
          PARAMATER_ORDINAL_POSITION
          PARAMATER_SPECIFIC_SCHEMA
          PARAMETER
          PARAMETER_MODE
          PARAMETER_SPECIFIC_CATALOG
          PARAMETER_SPECIFIC_NAME
          PARAMETERS
          PARSER
          PARTIAL
          PARTITION
          PASCAL
          PASSING
          PASSWORD
          PENDANT
          PERCENT
          PIVOT
          PIVOT_LONGER
          PIVOT_WIDER
          PLACING
          PLANS
          PLI
          POLICY
          POSITION
          POSITIONAL
          POSTFIX
          PRAGMA
          PRECEDING
          PRECISION
          PREFIX
          PREORDER
          PREPARE
          PREPARED
          PRESERVE
          PRIMARY
          PRIOR
          PRIVILEGES
          PROCEDURAL
          PROCEDURE
          PROGRAM
          PUBLIC
          PUBLICATION
          QUALIFY
          QUOTE
          RANGE
          READ
          READS
          REAL
          REASSIGN
          RECHECK
          RECURSIVE
          REF
          REFERENCES
          REFERENCING
          REFRESH
          REINDEX
          RELATIVE
          RELEASE
          RENAME
          REPEATABLE
          REPLACE
          REPLICA
          RESET
          RESPECT
          RESTART
          RESTRICT
          RESULT
          RETURN
          RETURNED_LENGTH
          RETURNED_OCTET_LENGTH
          RETURNED_SQLSTATE
          RETURNING
          RETURNS
          REVOKE
          RIGHT
          ROLE
          ROLLBACK
          ROLLUP
          ROUTINE
          ROUTINE_CATALOG
          ROUTINE_NAME
          ROUTINE_SCHEMA
          ROW
          ROW_COUNT
          ROWS
          RULE
          SAMPLE
          SAVE_POINT
          SAVEPOINT
          SCALE
          SCHEMA
          SCHEMA_NAME
          SCHEMAS
          SCOPE
          SCROLL
          SEARCH
          SECOND
          SECONDS
          SECURITY
          SELECT
          SELF
          SEMI
          SENSITIVE
          SEQUENCE
          SEQUENCES
          SERIALIZABLE
          SERVER
          SERVER_NAME
          SESSION
          SESSION_USER
          SET
          SETOF
          SETS
          SHARE
          SHOW
          SIMILAR
          SIMPLE
          SIZE
          SKIP
          SMALLINT
          SNAPSHOT
          SOME
          SOURCE
          SPACE
          SPECIFIC
          SPECIFIC_NAME
          SPECIFICTYPE
          SQL
          SQLCODE
          SQLERROR
          SQLEXCEPTION
          SQLSTATE
          SQLWARNINIG
          STABLE
          STANDALONE
          START
          STATE
          STATEMENT
          STATIC
          STATISTICS
          STDIN
          STDOUT
          STORAGE
          STORED
          STRICT
          STRIP
          STRUCT
          STRUCTURE
          STYPE
          SUBCLASS_ORIGIN
          SUBLIST
          SUBSCRIPTION
          SUBSTRING
          SUM
          SUMMARIZE
          SYMMETRIC
          SYSID
          SYSTEM
          SYSTEM_USER
          TABLE
          TABLE_NAME
          TABLES
          TABLESAMPLE
          TABLESPACE
          TEMP
          TEMPLATE
          TEMPORARY
          TERMINATE
          TEXT
          THAN
          THEN
          TIME
          TIMESTAMP
          TIMEZONE_HOUR
          TIMEZONE_MINUTE
          TO
          TOAST
          TRAILING
          TRANSACTION
          TRANSACTIONS_COMMITTED
          TRANSACTIONS_ROLLED_BACK
          TRANSATION
          TRANSATION_ACTIVE
          TRANSFORM
          TRANSFORMS
          TRANSLATE
          TRANSLATION
          TREAT
          TRIGGER
          TRIGGER_CATALOG
          TRIGGER_NAME
          TRIGGER_SCHEMA
          TRIM
          true
          TRUE
          TRUNCATE
          TRUSTED
          TRY_CAST
          TYPE
          TYPES
          UNBOUNDED
          UNCOMMITTED
          UNDER
          UNENCRYPTED
          UNION
          UNIQUE
          UNKNOWN
          UNLISTEN
          UNLOGGED
          UNNAMED
          UNNEST
          UNPIVOT
          UNTIL
          UPDATE
          UPPER
          USAGE
          USE
          USER
          USER_DEFINED_TYPE_CATALOG
          USER_DEFINED_TYPE_NAME
          USER_DEFINED_TYPE_SCHEMA
          USING
          VACUUM
          VALID
          VALIDATE
          VALIDATOR
          VALUE
          VALUES
          VARCHAR
          VARIABLE
          VARIADIC
          VARYING
          VERBOSE
          VERSION
          VIEW
          VIEWS
          VIRTUAL
          VOLATILE
          WHEN
          WHENEVER
          WHERE
          WHITESPACE
          WINDOW
          WITH
          WITHIN
          WITHOUT
          WORK
          WRAPPER
          WRITE
          XML
          XMLATTRIBUTES
          XMLCONCAT
          XMLELEMENT
          XMLEXISTS
          XMLFOREST
          XMLNAMESPACES
          XMLPARSE
          XMLPI
          XMLROOT
          XMLSERIALIZE
          XMLTABLE
          YEAR
          YEARS
          YES
          ZONE
          AUTO_DETECT
          FORMAT
          READ_ONLY
          PARQUET
          UNCOMPRESSED
          SNAPPY
          GZIP
          LZO
          BROTLI
          LZ4
          ZSTD
          FIELD_IDS
          ROW_GROUP_SIZE
          PARTITION_BY
          OVERWRITE_OR_IGNORE
          FILENAME_PATTERN
          USE_TMP_FILE
          AUTO
          UNSTRUCTURED
          NEWLINE_DELIMITED
          GDAL
          DRIVER
          LAYER_CREATION_OPTIONS
          ALLOW_MOVED_PATHS
      ))
      end

      def self.keywords_type
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @keywords_type ||= Set.new(%w(
          BIGINT
          BINARY
          BIT
          BITSTRING
          BLOB
          BOOL
          BOOLEAN
          BPCHAR
          BYTEA
          CHAR
          DATE
          DATETIME
          DEC
          DECIMAL
          DOUBLE
          ENUM
          FLOAT
          FLOAT4
          FLOAT8
          GUID
          HUGEINT
          INT
          INT1
          INT128
          INT16
          INT2
          INT32
          INT4
          INT64
          INT8
          INTEGER
          INTEGRAL
          INTERVAL
          LIST
          LOGICAL
          LONG
          MAP
          NULL
          NUMERIC
          NVARCHAR
          OID
          REAL
          ROW
          SHORT
          SIGNED
          SMALLINT
          SQLNULL
          STRING
          STRUCT
          TEXT
          TIME
          TIMESTAMP
          TIMESTAMPTZ
          TIMESTAMP_MS
          TIMESTAMP_NS
          TIMESTAMP_S
          TIMESTAMP_SEC
          TIMESTAMP_TZ
          TIMESTAMP_US
          TIMETZ
          TIME_TZ
          TINYINT
          UBIGINT
          UINT16
          UINT32
          UINT64
          UINT8
          UINTEGER
          UNION
          USMALLINT
          UTINYINT
          UUID
          VARBINARY
          VARCHAR
          ARRAY
          GEOMETRY
          POINT
          LINESTRING
          POLYGON
          MULTIPOINT
          MULTILINESTRING
          MULTIPOLYGON
          GEOMETRYCOLLECTION
          POINT_2D
          LINESTRING_2D
          POLYGON_2D
          BOX_2D
          WKB_BLOB
          GeometryType
        ))
      end

      def self.function_names
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @function_names ||= Set.new(%w(
          __internal_compress_integral_ubigint
          __internal_compress_integral_uinteger
          __internal_compress_integral_usmallint
          __internal_compress_integral_utinyint
          __internal_compress_string_hugeint
          __internal_compress_string_ubigint
          __internal_compress_string_uinteger
          __internal_compress_string_usmallint
          __internal_compress_string_utinyint
          __internal_decompress_integral_bigint
          __internal_decompress_integral_hugeint
          __internal_decompress_integral_integer
          __internal_decompress_integral_smallint
          __internal_decompress_integral_ubigint
          __internal_decompress_integral_uinteger
          __internal_decompress_integral_usmallint
          __internal_decompress_string
          !__postfix
          @
          **
          ^@
          <<
          >>
          |
          ~
          abs
          acos
          add
          add_parquet_key
          age
          aggregate
          alias
          all_profiling_output
          any_value
          apply
          approx_count_distinct
          approx_quantile
          arbitrary
          arg_max
          arg_min
          argmax
          argmin
          array_agg
          array_aggr
          array_aggregate
          array_any_value
          array_append
          array_apply
          array_cat
          array_concat
          array_contains
          array_cosine_similarity
          array_cross_product
          array_distance
          array_distinct
          array_dot_product
          array_extract
          array_filter
          array_grade_up
          array_has
          array_has_all
          array_has_any
          array_indexof
          array_inner_product
          array_intersect
          array_length
          array_pop_back
          array_pop_front
          array_position
          array_prepend
          array_push_back
          array_push_front
          array_resize
          array_reverse
          array_reverse_sort
          array_select
          array_slice
          array_sort
          array_to_json
          array_to_string
          array_transform
          array_unique
          array_value
          array_where
          array_zip
          arrow_scan
          arrow_scan_dumb
          ascii
          asin
          atan
          atan2
          avg
          bar
          base64
          bernoulli
          bin
          bit_and
          bit_count
          bit_length
          bit_or
          bit_position
          bit_xor
          bitstring
          bitstring_agg
          bool_and
          bool_or
          cardinality
          cbrt
          ceil
          ceiling
          century
          checkpoint
          chr
          coalesce
          col_description
          collations
          combine
          concat
          concat_ws
          constant_or_null
          contains
          corr
          cos
          cot
          count
          count_if
          count_star
          covar_pop
          covar_samp
          create_fts_index
          cume_dist
          current_catalog
          current_database
          current_date
          current_localtime
          current_localtimestamp
          current_query
          current_role
          current_schema
          current_schemas
          current_setting
          current_user
          currval
          damerau_levenshtein
          database_list
          database_size
          date_add
          date_diff
          date_part
          date_sub
          date_trunc
          datediff
          datepart
          datesub
          datetrunc
          day
          dayname
          dayofmonth
          dayofweek
          dayofyear
          dbgen
          decade
          decimal
          decimal_add
          decimal_cmp
          decimal_mul
          decimal_sub
          decode
          degrees
          disable_checkpoint_on_shutdown
          disable_object_cache
          disable_optimizer
          disable_print_progress_bar
          disable_profile
          disable_profiling
          disable_progress_bar
          disable_verification
          disable_verify_external
          disable_verify_parallelism
          disable_verify_serializer
          divide
          drop_fts_index
          dsdgen
          duckdb_columns
          duckdb_constraints
          duckdb_databases
          duckdb_dependencies
          duckdb_extensions
          duckdb_functions
          duckdb_indexes
          duckdb_keywords
          duckdb_schemas
          duckdb_sequences
          duckdb_settings
          duckdb_tables
          duckdb_temporary_files
          duckdb_types
          duckdb_views
          edit
          editdist3
          element_at
          enable_checkpoint_on_shutdown
          enable_index_join
          enable_object_cache
          enable_optimizer
          enable_print_progress_bar
          enable_profile
          enable_profiling
          enable_progress_bar
          enable_verification
          encode
          ends_with
          entropy
          enum_code
          enum_first
          enum_last
          enum_range
          enum_range_boundary
          epoch
          epoch_ms
          epoch_ns
          epoch_us
          era
          error
          even
          excel_text
          exp
          factorial
          favg
          fdiv
          filter
          finalize
          first
          first_value
          flatten
          floor
          fmod
          force_checkpoint
          force_index_join
          format
          format_bytes
          format_pg_type
          format_type
          formatReadableDecimalSize
          from_base64
          from_binary
          from_hex
          from_json
          from_json_strict
          from_substrait
          from_substrait_json
          fsum
          fts_main_documents
          function_name
          functions
          fuzz_all_functions
          fuzzyduck
          gamma
          gcd
          gen_random_uuid
          generate_series
          generate_subscripts
          geomean
          geometric_mean
          get_bit
          get_current_time
          get_current_timestamp
          get_substrait
          get_substrait_json
          glob
          greatest
          greatest_common_divisor
          group_concat
          hamming
          has_any_column_privilege
          has_column_privilege
          has_database_privilege
          has_foreign_data_wrapper_privilege
          has_function_privilege
          has_language_privilege
          has_schema_privilege
          has_sequence_privilege
          has_server_privilege
          has_table_privilege
          has_tablespace_privilege
          hash
          hex
          histogram
          host
          hour
          iceberg_metadata
          iceberg_scan
          iceberg_snapshots
          icu_calendar_names
          icu_sort_key
          ieee754
          ieee754_exponent
          ieee754_from_blob
          ieee754_mantissa
          ieee754_to_blob
          ifnull
          ilike_escape
          import_database
          in_search_path
          index_scan
          inet_client_addr
          inet_client_port
          inet_server_addr
          inet_server_port
          instr
          isfinite
          isinf
          isnan
          isodow
          isoyear
          jaccard
          jaro_similarity
          jaro_winkler_similarity
          json
          json_array
          json_array_length
          json_contains
          json_deserialize_sql
          json_execute_serialized_sql
          json_extract
          json_extract_path
          json_extract_path_text
          json_extract_string
          json_group_array
          json_group_object
          json_group_structure
          json_keys
          json_merge_patch
          json_object
          json_quote
          json_serialize_plan
          json_serialize_sql
          json_structure
          json_transform
          json_transform_strict
          json_type
          json_valid
          julian
          kahan_sum
          kurtosis
          lag
          last
          last_day
          last_value
          lcase
          lcm
          lead
          least
          least_common_multiple
          left
          left_grapheme
          len
          length
          length_grapheme
          levenshtein
          lgamma
          like_escape
          list
          list_aggr
          list_aggregate
          list_any_value
          list_append
          list_apply
          list_approx_count_distinct
          list_avg
          list_bit_and
          list_bit_or
          list_bit_xor
          list_bool_and
          list_bool_or
          list_cat
          list_concat
          list_contains
          list_cosine_similarity
          list_count
          list_distance
          list_distinct
          list_dot_product
          list_element
          list_entropy
          list_extract
          list_filter
          list_first
          list_grade_up
          list_has
          list_has_all
          list_has_any
          list_histogram
          list_indexof
          list_inner_product
          list_intersect
          list_kurtosis
          list_last
          list_mad
          list_max
          list_median
          list_min
          list_mode
          list_pack
          list_position
          list_prepend
          list_product
          list_resize
          list_reverse
          list_reverse_sort
          list_select
          list_sem
          list_skewness
          list_slice
          list_sort
          list_stddev_pop
          list_stddev_samp
          list_string_agg
          list_sum
          list_transform
          list_unique
          list_value
          list_var_pop
          list_var_samp
          list_where
          list_zip
          listagg
          ln
          load_aws_credentials
          log
          log10
          log2
          lower
          lpad
          lsmode
          ltrim
          mad
          make_date
          make_time
          make_timestamp
          make_timestamptz
          map
          map_concat
          map_entries
          map_extract
          map_from_entries
          map_keys
          map_values
          match_bm25
          max
          max_by
          md5
          md5_number
          md5_number_lower
          md5_number_upper
          mean
          median
          metadata_info
          microsecond
          millennium
          millisecond
          min
          min_by
          minute
          mismatches
          mod
          mode
          month
          monthname
          multiply
          nextafter
          nextval
          nfc_normalize
          not_ilike_escape
          not_like_escape
          now
          nth_value
          ntile
          nullif
          obj_description
          octet_length
          ord
          parquet_kv_metadata
          parquet_metadata
          parquet_scan
          parquet_schema
          percent_rank
          pg_clear_cache
          pg_collation_is_visible
          pg_conf_load_time
          pg_conversion_is_visible
          pg_function_is_visible
          pg_get_constraintdef
          pg_get_expr
          pg_get_viewdef
          pg_has_role
          pg_is_other_temp_schema
          pg_my_temp_schema
          pg_opclass_is_visible
          pg_operator_is_visible
          pg_opfamily_is_visible
          pg_postmaster_start_time
          pg_size_pretty
          pg_table_is_visible
          pg_timezone_names
          pg_ts_config_is_visible
          pg_ts_dict_is_visible
          pg_ts_parser_is_visible
          pg_ts_template_is_visible
          pg_type_is_visible
          pg_typeof
          pi
          platform
          position
          postgres_attach
          postgres_query
          postgres_scan
          postgres_scan_pushdown
          pow
          power
          pragma_collations
          pragma_database_size
          pragma_detailed_profiling_output
          pragma_last_profiling_output
          pragma_metadata_info
          pragma_platform
          pragma_storage_info
          pragma_table_info
          pragma_user_agent
          pragma_version
          prefix
          printf
          product
          quantile
          quantile_cont
          quantile_disc
          quarter
          radians
          random
          range
          rank
          rank_dense
          read_csv
          read_csv_auto
          read_json
          read_json_auto
          read_json_objects
          read_json_objects_auto
          read_ndjson
          read_ndjson_auto
          read_ndjson_objects
          read_parquet
          readfile
          reduce_sql_statement
          regexp_extract
          regexp_extract_all
          regexp_full_match
          regexp_matches
          regexp_replace
          regexp_split_to_array
          regr_avgx
          regr_avgy
          regr_count
          regr_intercept
          regr_r2
          regr_slope
          regr_sxx
          regr_sxy
          regr_syy
          repeat
          repeat_row
          replace
          reservoir
          reservoir_quantile
          reverse
          right
          right_grapheme
          round
          round_even
          roundbankers
          row
          row_number
          row_to_json
          rpad
          rtrim
          scan_arrow_ipc
          second
          sem
          seq_scan
          session_user
          set_bit
          setseed
          sha256
          sha3
          sha3_query
          shell_add_schema
          shell_escape_crnl
          shell_idquote
          shell_int32
          shell_module_schema
          shell_putsnl
          shobj_description
          show
          show_databases
          show_tables
          show_tables_expanded
          sign
          signbit
          sin
          skewness
          split
          split_part
          sql_auto_complete
          sqlite_attach
          sqlite_scan
          sqlsmith
          sqrt
          st_area
          ST_Area
          st_area_spheroid
          ST_Area_Spheroid
          st_asgeojson
          ST_AsGeoJSON
          st_ashexwkb
          st_astext
          ST_AsText
          st_aswkb
          ST_AsWKB
          st_boundary
          ST_Boundary
          st_buffer
          ST_Buffer
          st_centroid
          ST_Centroid
          st_collect
          ST_Collect
          st_collectionextract
          ST_CollectionExtract
          st_contains
          ST_Contains
          st_containsproperly
          ST_ContainsProperly
          st_convexhull
          ST_ConvexHull
          st_coveredby
          ST_CoveredBy
          st_covers
          ST_Covers
          st_crosses
          ST_Crosses
          st_difference
          ST_Difference
          st_dimension
          ST_Dimension
          st_disjoint
          ST_Disjoint
          st_distance
          ST_Distance
          st_distance_spheroid
          ST_Distance_Spheroid
          st_drivers
          st_dump
          st_dwithin
          ST_DWithin
          st_dwithin_spheroid
          ST_DWithin_Spheroid
          st_endpoint
          st_envelope
          ST_Envelope
          st_envelope_agg
          st_equals
          ST_Equals
          st_extent
          ST_Extent
          st_exteriorring
          ST_ExteriorRing
          st_flipcoordinates
          ST_FlipCoordinates
          st_geometrytype
          ST_GeometryType
          st_geomfromgeojson
          ST_GeomFromGeoJSON
          st_geomfromhexewkb
          st_geomfromhexwkb
          st_geomfromtext
          ST_GeomFromText
          st_geomfromwkb
          ST_GeomFromWKB
          st_intersection
          ST_Intersection
          st_intersection_agg
          st_intersects
          ST_Intersects
          st_intersects_extent
          st_isclosed
          ST_IsClosed
          st_isempty
          ST_IsEmpty
          st_isring
          ST_IsRing
          st_issimple
          ST_IsSimple
          st_isvalid
          ST_IsValid
          st_length
          ST_Length
          st_length_spheroid
          ST_Length_Spheroid
          st_linemerge
          st_linestring2dfromwkb
          st_list_proj_crs
          st_makeenvelope
          st_makeline
          ST_MakeLine
          st_makepolygon
          st_ngeometries
          st_ninteriorrings
          st_normalize
          ST_Normalize
          st_npoints
          st_numgeometries
          st_numinteriorrings
          st_numpoints
          st_overlaps
          ST_Overlaps
          st_perimeter
          ST_Perimeter
          st_perimeter_spheroid
          ST_Perimeter_Spheroid
          st_point
          st_point2d
          st_point2dfromwkb
          st_point3d
          st_point4d
          st_pointn
          ST_PointN
          st_pointonsurface
          ST_PointOnSurface
          st_polygon2dfromwkb
          st_read
          st_readosm
          st_reduceprecision
          ST_ReducePrecision
          st_removerepeatedpoints
          ST_RemoveRepeatedPoints
          st_reverse
          st_simplify
          ST_Simplify
          st_simplifypreservetopology
          ST_SimplifyPreserveTopology
          st_startpoint
          st_touches
          ST_Touches
          st_transform
          ST_Transform
          st_union
          ST_Union
          st_union_agg
          st_within
          ST_Within
          st_x
          ST_X
          st_xmax
          ST_Xmax
          st_xmin
          ST_Xmin
          st_y
          ST_Y
          st_ymax
          ST_Ymax
          st_ymin
          ST_Ymin
          starts_with
          stats
          stddev
          stddev_pop
          stddev_samp
          stem
          storage_info
          str_split
          str_split_regex
          strftime
          string_agg
          string_split
          string_split_regex
          string_to_array
          strip_accents
          strlen
          strpos
          strptime
          struct_extract
          struct_insert
          struct_pack
          substr
          substring
          substring_grapheme
          subtract
          suffix
          sum
          sum_no_overflow
          sumkahan
          summary
          system
          table_info
          tan
          test_all_types
          test_vector_types
          text
          time_bucket
          timezone
          timezone_hour
          timezone_minute
          to_arrow_ipc
          to_base
          to_base64
          to_binary
          to_days
          to_hex
          to_hours
          to_json
          to_microseconds
          to_milliseconds
          to_minutes
          to_months
          to_seconds
          to_timestamp
          to_years
          today
          tpcds
          tpcds_answers
          tpcds_queries
          tpch
          tpch_answers
          tpch_queries
          transaction_timestamp
          translate
          trim
          trunc
          try_strptime
          txid_current
          typeof
          ucase
          unbin
          unhex
          unicode
          union_extract
          union_tag
          union_value
          unnest
          upper
          user
          user_agent
          uuid
          var_pop
          var_samp
          variance
          vector_type
          verify_external
          verify_parallelism
          verify_serializer
          version
          week
          weekday
          weekofyear
          writefile
          xor
          year
          yearweek
          add_default
          arr_append
          dynamic_table
          get_users
          ifelse
          one
          plus_one
          static_table
          triple_add
        ))
      end

      state :root do
        rule %r/\s+/m, Text
        rule %r/--.*/, Comment::Single
        rule %r(/\*), Comment::Multiline, :multiline_comments
        rule %r/\d+/, Num::Integer
        rule %r/'/, Str::Single, :single_string
        # A double-quoted string refers to a database object in our default SQL
        # dialect, which is appropriate for e.g. PostgreSQL and DuckDB.
        rule %r/"/, Name::Variable, :double_string
        rule %r/`/, Name::Variable, :backtick

        # Strings 'something(' are candidates to be treated as function names
        rule %r/(\w[\w\d]*)(\()/ do |m|
          if self.class.function_names.include? m[1]
            token Name::Function, m[1]
            token Punctuation, m[2]
          elsif self.class.keywords_type.include? m[1]
            token Name::Builtin, m[1]
            token Punctuation, m[2]
          elsif self.class.keywords.include? m[1]
            token Keyword, m[1]
            token Punctuation, m[2]
          else
            token Name, m[1]
            token Punctuation, m[2]
          end
        end

        # Strings 'something' are not candidates to be treated as function names
        # The rationale behind this is that many function names are common words
        # (e.g., version, month, year), and we do *not* want these to be highlighted
        # as function names.
        rule %r/\w[\w\d]*/ do |m|
          if self.class.keywords_type.include? m[0]
            token Name::Builtin
          elsif self.class.keywords.include? m[0]
            token Keyword
          else
            token Name
          end
        end

        rule %r([+*/<>=~!@#%&|?^-]), Operator
        rule %r/[;:()\[\]\{\},.]/, Punctuation
      end

      state :multiline_comments do
        rule %r(/[*]), Comment::Multiline, :multiline_comments
        rule %r([*]/), Comment::Multiline, :pop!
        rule %r([^/*]+), Comment::Multiline
        rule %r([/*]), Comment::Multiline
      end

      state :backtick do
        rule %r/\\./, Str::Escape
        rule %r/``/, Str::Escape
        rule %r/`/, Name::Variable, :pop!
        rule %r/[^\\`]+/, Name::Variable
      end

      state :single_string do
        rule %r/\\./, Str::Escape
        rule %r/''/, Str::Escape
        rule %r/'/, Str::Single, :pop!
        rule %r/[^\\']+/, Str::Single
      end

      state :double_string do
        rule %r/\\./, Str::Escape
        rule %r/""/, Str::Escape
        rule %r/"/, Name::Variable, :pop!
        rule %r/[^\\"]+/, Name::Variable
      end
    end
  end
end
