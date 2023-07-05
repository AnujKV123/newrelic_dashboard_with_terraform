
resource "newrelic_one_dashboard" "newDashboard" {
    count = length(var.dashboardData)
  name        = "${lookup(var.dashboardData[count.index], "dashboardname")}"
  permissions = "${lookup(var.dashboardData[count.index], "permissions")}"

  page {
    name = "${lookup(var.dashboardData[count.index], "pagename")}"

    widget_billboard {
      title  = "${lookup(var.dashboardData[count.index], "widgetititle")}"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "${lookup(var.dashboardData[count.index], "widgetinrql")}"
      }
    }

    widget_bar {
      title  = "${lookup(var.dashboardData[count.index], "widget2title")}"
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = 4000874
        query      = "${lookup(var.dashboardData[count.index], "widget2nrql")}"
      }
    }
  }
}
