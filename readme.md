## CarRentalSystem ##
## APP STRUCTURE##
* 1.Home page creation
* 2.login form
* 3.Registration
* 4.After login, 3 types UserRoles and Privileges:
   # 1.Admin
	    Manage Users
        Manage Cars
        Manage Categories
        Manage Make/Brand
        Manage Models
        Manage Roles
        Check Feedbacks
   # 2.Dealer
	    Cars
        New Car
        New Category
        New Make/Brand
        New Model
        Damaged
        History
        Feedbacks
   # 3.User
	    Avaiable Cars
        Booked Cars
        Detail of Bookings
        Detail of Cars Rented
        Return Car

## COMMON BUGS AND FIXES ##
# DATABASE RECOVERY PENDING FIX #
* Run this as new query to recover SQL Server database
* NOTE: Have a backup restore point of the database before trying this query
ALTER DATABASE [Databasename] SET EMERGENCY;
GO
ALTER DATABASE [Databasename] set single_user
GO
DBCC CHECKDB ([Databasename], REPAIR_ALLOW_DATA_LOSS) WITH ALL_ERRORMSGS;
GO
ALTER DATABASE [Databasename] set multi_user
GO

# IMAGE NOT SHOWING IN BROWSER AFTER UPLOAD FIX #
* Clear browser cache and restart app on IIS
