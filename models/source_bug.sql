{{ config(
    pre_hook = create_index(source('public', 'sample'), ['country_code'])) }}

select * from
  {{ source('public', 'sample') }}