dashboardData = [ 
    {
        dashboardname = "dashboard-1",
        permissions = "public_read_only",
        pagename = "Dashboard page 1", 
        widgetititle = "Requests per minute", 
        widgetinrql = "FROM Transaction SELECT rate(count(*), 1 minute)", 
        widget2title = "Total-Pageviews", 
        widget2nrql = "SELECT Count(*) FROM Pageview",
    },
    {
        dashboardname="dashboard-2", 
        permissions="public_read_only", 
        pagename="Dashboard page 2",
        widgetititle="Requests per minute", 
        widgetinrql="FROM Transaction SELECT rate (count(*), 1 minute)",
        widget2title="Total-Pageviews",
        widget2nrql="SELECT Count (*) FROM Pageview",
    }
 ]