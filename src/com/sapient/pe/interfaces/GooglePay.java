package com.sapient.pe.interfaces;

public class GooglePay implements Payment {
		@Override
		public void pay(String from, String to, double money) {
			// TODO Auto-generated method stub
			System.out.println("Payment from"+from+"to"+to+"amount"+money);
			
		}

}
