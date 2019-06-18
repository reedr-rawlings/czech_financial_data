connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"

datagroup: reedsy_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: reedsy_thesis_default_datagroup

explore: account {
  join: district {
    type: left_outer
    sql_on: ${account.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${account.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: card {
  join: district {
    type: left_outer
    sql_on: ${card.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${card.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: client {
  join: district {
    type: left_outer
    sql_on: ${client.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }
}

explore: disp {
  join: district {
    type: left_outer
    sql_on: ${disp.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${disp.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: district {
  join: client {
    type: left_outer
    sql_on: ${district.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: loan {
  join: district {
    type: left_outer
    sql_on: ${loan.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${loan.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: order {
  join: district {
    type: left_outer
    sql_on: ${order.district_id} = ${district.district_id} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${order.client_id} = ${client.client_id} ;;
    relationship: many_to_one
  }
}

explore: transactions {}
