package com.devmaster.Library.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingCartItemDto {

	private int shoppingCartID;
	private int productID;
	private String color;
	private String size;
	private int quantity;
	
	
}
