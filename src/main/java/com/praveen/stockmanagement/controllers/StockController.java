/**
 * 
 */
package com.praveen.stockmanagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.praveen.stockmanagement.domains.Stock;
import com.praveen.stockmanagement.services.StockService;

/**
 * @author Madan
 *
 */
@Controller
@RequestMapping("/stocks")
public class StockController {


	@Autowired
	private StockService service;
	
	@GetMapping({ "/", "" })
	public String index(Model model) {
		List<Stock> stocks=service.findAll();
		model.addAttribute("stocks", stocks);
		return "stocks/index";
		
	}
	
	@GetMapping("/create")
	public String create(Model model) {
		model.addAttribute("stock", new Stock());
		return "stocks/add";
	}
	
	
	@PostMapping("/save")
	public String save(@ModelAttribute("stock") Stock stock) {
		stock=service.save(stock);
		return "redirect:/stocks";
		
	}
	
	@GetMapping("/{id}")
	public String getStocks(Model model, @PathVariable("id") Long id) {
		Stock stock=service.findById(id);
		model.addAttribute("stock", service.findById(id));
		return "stocks/detail";
	}
	
	@GetMapping("/{id}/edit")
	public String edit(@PathVariable("id")Long id,Model model) {
		Stock stock=service.findById(id);
		model.addAttribute("stock", stock);
		return "stocks/edit";	
	}
	
	@PostMapping("/{id}/update")
	public String update(@ModelAttribute Stock stock,@PathVariable("id") Long id) {
		stock.setId(id);
		service.save(stock);
		return "redirect:/stocks/" + id;
		
	}
	
	@GetMapping("/{id}/delete")
	public String delete(@PathVariable("id") Long id) {
		Stock stock=service.findById(id);
		service.delete(stock);
		return "redirect:/stocks";
		
	}
}
