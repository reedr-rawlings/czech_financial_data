view: district {
  sql_table_name: czech_financial_data.district ;;

  dimension: district_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.district_id ;;
  }

  dimension: birth_number {
    type: number
    sql: ${TABLE}.birth_number ;;
  }

  dimension: client_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.client_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_id,
      client.client_id,
      loan.count,
      client.count,
      disp.count,
      account.count,
      card.count,
      order.count
    ]
  }
}
