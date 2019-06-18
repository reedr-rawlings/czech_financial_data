view: order {
  sql_table_name: czech_financial_data.`order` ;;

  dimension: birth_number {
    type: number
    sql: ${TABLE}.birth_number ;;
  }

  dimension: client_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.client_id ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  measure: count {
    type: count
    drill_fields: [district.district_id, client.client_id]
  }
}
