view: client {
  sql_table_name: czech_financial_data.client ;;

  dimension: client_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: birth_number {
    type: number
    sql: ${TABLE}.birth_number ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      client_id,
      district.district_id,
      loan.count,
      district.count,
      disp.count,
      account.count,
      card.count,
      order.count
    ]
  }
}
