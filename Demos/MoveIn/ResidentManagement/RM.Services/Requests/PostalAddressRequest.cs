﻿namespace SLS.RM.Services.Requests;

public class PostalAddressRequest
{
	public string? StreetAddress1 { get; set; }
	public string? StreetAddress2 { get; set; }
	public string? City { get; set; }
	public string? CountryDivision { get; set; }
	public string? Country { get; set; }
	public string? PostalCode { get; set; }
}