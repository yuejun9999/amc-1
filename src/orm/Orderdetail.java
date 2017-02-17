package orm;

/**
 * Orderdetail entity. @author MyEclipse Persistence Tools
 */

public class Orderdetail implements java.io.Serializable {

	// Fields

	private Integer orderDetailId;
	private Product product;
	private Order order;
	private Float amount;
	private String orderDetailState;

	// Constructors

	/** default constructor */
	public Orderdetail() {
	}

	/** full constructor */
	public Orderdetail(Product product, Order order, Float amount,
			String orderDetailState) {
		this.product = product;
		this.order = order;
		this.amount = amount;
		this.orderDetailState = orderDetailState;
	}

	// Property accessors

	public Integer getOrderDetailId() {
		return this.orderDetailId;
	}

	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Float getAmount() {
		return this.amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public String getOrderDetailState() {
		return this.orderDetailState;
	}

	public void setOrderDetailState(String orderDetailState) {
		this.orderDetailState = orderDetailState;
	}

}