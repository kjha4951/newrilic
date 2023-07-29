resource "newrelic_one_dashboard" "kjha4951" {
  name        = "first dashboard"
  permissions = "public_read_only"

  page {
    name = "first dashboard"

    widget_billboard {
      title  = "Requests per minute"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = var.acc_id
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    } 
     widget_line {
      title  = "Average transaction duration and the request per minute, by application"
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = var.acc_id
        query      = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
  }
   widget_bar {
      title  = "Average transaction duration, by application"
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = var.acc_id
        query      = "FROM Transaction SELECT average(duration) FACET appName"
      }
     
   }

  }
}