view: transactions {
  sql_table_name: czech_financial_data.transactions ;;

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
