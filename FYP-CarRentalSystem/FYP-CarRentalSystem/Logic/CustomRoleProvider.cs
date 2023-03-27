using System;
using System.Collections.Generic;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace FYP_CarRentalSystem.Logic
{
	public class CustomRoleProvider: RoleProvider 
	{

		public override void AddUsersToRoles(string[] usernames, string[] roleNames)
		{
			string userName = usernames[0];
			string roleName = roleNames[0];
			int userNameKey = getPrimaryKey("Id", "Users", "UserName", userName);

			int userRoleKey = getPrimaryKey("Id", "Roles", "Roles", roleName);

			//string userName = null;
			//int userNameKey = 0;
			//foreach (var username in usernames)
			//{
			//    userName = username;
			//    userNameKey = getPrimaryKey("Id", "Users", "UserName", "Dastgeer");
			//}

			//string roleName = null;
			//int userRoleKey = 0;
			//foreach (var rolename in roleNames)
			//{
			//    roleName = rolename;
			//    userRoleKey = getPrimaryKey("Id", "Roles", "Roles", "admin");
			//}

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlCommand cmd = new SqlCommand("INSERT INTO UserInRoles " +" (UserId, RoleId) " +" Values(@userid, @roleid)", conn);

			cmd.Parameters.AddWithValue("@userid", userNameKey);
			cmd.Parameters.AddWithValue("@roleid", userRoleKey);
			conn.Open();
			int result =cmd.ExecuteNonQuery();
			conn.Close();

			//try
			//{
			//    conn.Open();

			//    foreach (string username in usernames)
			//    {
			//        foreach (string rolename in roleNames)
			//        {
			//            cmd.ExecuteNonQuery();
			//        }
			//    }
			//}
			//catch (SqlException ex)
			//{

			//}
		}

		public override string ApplicationName
		{
			get
			{
				throw new NotImplementedException();
			}
			set
			{
				throw new NotImplementedException();
			}
		}

		public override void CreateRole(string roleName)
		{
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlCommand cmd = new SqlCommand("INSERT INTO Roles (Roles) VALUES  (@role)", conn);

			cmd.Parameters.AddWithValue("@role", roleName);
			try
			{
				conn.Open();

				int returnValue = cmd.ExecuteNonQuery();
				if (returnValue == 1)
					return;
				throw new ProviderException("Unknown provider failure");
			}
			catch (SqlException ex)
			{
				
			}
			
		}

		public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
		{
			throw new NotImplementedException();
		}

		public override string[] FindUsersInRole(string roleName, string usernameToMatch)
		{
			throw new NotImplementedException();
		}

		public override string[] GetAllRoles()
		{
			throw new NotImplementedException();
		}

		public override string[] GetRolesForUser(string username)
		{
			if (username == null || username == "")
				throw new ProviderException("User name cannot be empty or null.");

			int userNameKey = getPrimaryKey("Id", "Users", "UserName", username);

			string[] roles = null;
			List<string> rolesList = new List<string>();

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			//SqlCommand cmd = new SqlCommand("select * from UserInRoles where UserId "+userNameKey);
			SqlDataAdapter da = new SqlDataAdapter("select RoleId from UserInRoles where UserId= " +"'"+ userNameKey+"'", conn);
			DataSet ds = new DataSet();
			da.Fill(ds);
			DataTable dt = new DataTable();
			dt = ds.Tables[0];

			foreach (DataRow rows in dt.Rows)
			{


				string list = getRoleName(Convert.ToInt32(rows["RoleId"]));
				rolesList.Add(list);
			}
			roles = rolesList.ToArray();
			
			return roles;

		}

		public override string[] GetUsersInRole(string roleName)
		{
			throw new NotImplementedException();
		}

		public override bool IsUserInRole(string username, string roleName)
		{
			string list = null;
			int userNameKey = getPrimaryKey("Id", "Users", "UserName", username);
			int userRoleKey = getPrimaryKey("Id", "Roles", "Roles", roleName);
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlDataAdapter da = new SqlDataAdapter("select UserId, RoleId from UserInRoles where UserId= " + "'" + userNameKey + "'" + "and RoleId= " + "'" + userRoleKey + "'", conn);
			DataSet ds = new DataSet();
			da.Fill(ds);
			DataTable dt = new DataTable();
			dt = ds.Tables[0];

			foreach (DataRow rows in dt.Rows)
			{


				list = getRoleName(Convert.ToInt32(rows["RoleId"]));
				
			}
			if (list != null)
			{
				return true;
			}
			else
			{
				return false;
			}

		}

		public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
		{
			string userName = usernames[0];
			string roleName = roleNames[0];
			int userNameKey = getPrimaryKey("Id", "Users", "UserName", userName);
			int userRoleKey = getPrimaryKey("Id", "Roles", "Roles", roleName);
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlCommand cmd = new SqlCommand("Delete from UserInRoles where UserId= " + "'" + userNameKey + "'" + "and RoleId= " + "'" + userRoleKey + "'", conn);
			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
		}

		public override bool RoleExists(string roleName)
		{
			throw new NotImplementedException();
		}


		//helping methods
		public static int getPrimaryKey(string primarykey,string tableName, string columnname, string value)
		{

			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlCommand cmd = new SqlCommand("select " + primarykey + " from " + tableName + " where " + columnname + "=" + "'" + value + "'", conn);
			//SqlDataAdapter da =new  SqlDataAdapter("select " + primarykey + " from " + tableName + " where " + columnname + "=" + value, conn);
			//DataTable dt = new DataTable(da);
			conn.Open();
			SqlDataReader dr = cmd.ExecuteReader();
			int id = 0;
			if (dr.HasRows)
			{
				 while (dr.Read())
					{
						id =Convert.ToInt32(dr[primarykey]);
					}
				 
			}
			else
			{
				id = 0;
			}
			conn.Close();
			return id;
			
		}
		public static string getRoleName(int RoleId)
		{
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
			SqlCommand cmd = new SqlCommand("select Roles from Roles  where Id=" +"'" + RoleId + "'", conn);
			//SqlDataAdapter da =new  SqlDataAdapter("select " + primarykey + " from " + tableName + " where " + columnname + "=" + value, conn);
			//DataTable dt = new DataTable(da);
			conn.Open();
			SqlDataReader dr = cmd.ExecuteReader();
			string Role = null;
			if (dr.HasRows)
			{
				while (dr.Read())
				{
					Role = dr["Roles"].ToString();
				}

			}
			else
			{
				Role = null;
			}
			conn.Close();
			return Role;

		}
	}
}