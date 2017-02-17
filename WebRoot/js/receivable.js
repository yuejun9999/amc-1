/**
 * 
 */

$(".receivableDetail").click(
		function(e) {

			var tr = $(this).parent().parent();
			var receivableID = tr.find(".receivableid").text();
			var date = tr.find(".drawBillDate").text();
			var account = tr.find(".totalAccount").text();
			var status = tr.find(".payState").text();
			console.log("Receivable Detail Click Function - receivableID: "
					+ receivableID);
			$.get({
				url : "receivableDetail.do",
				data : "receivableId=" + receivableID + "&receivableDate="
						+ date + "&totalAccount=" + account
						+ "&receivableStatus=" + status,
				success : function(data) {
					$.ajax({
						url : "financial/receivabledetail.html",
						async : false,
						method : "POST",
						success : function(receivableDHtml) {
							$("#modal-div").html(receivableDHtml);
						}
					});

					$("#receivableIDH2").text(receivableID);
					$("#dateH2").text(date);
					$("#totalAmountH2").text(account);
					$("#stateH2").text(status);

					htmltxt = "";
					$.each(data, function(i, item) {
						var receivableDetailID = item.receivableDetailID;
						htmltxt += '<tr><td>' + receivableDetailID + '</td>';
						var productID = item.productID;
						htmltxt += '<td>' + productID + '</td>';
						var productName = item.productName;
						htmltxt += '<td>' + productName + '</td>';
						var salePrice = item.salePrice;
						htmltxt += '<td>' + salePrice + '</td>';
						var saleAmount = item.saleAmount;
						htmltxt += '<td>' + saleAmount + '</td>';
						var totalAccount = item.totalAccount;
						htmltxt += '<td>' + totalAccount + '</td></tr>';
					});

					$("#receivableDetailTbody").html(htmltxt);
					$("#receivalbelDetailModel").modal("show");
				}
			});

		});

$(".sign-reminder").click(function(e) {
	$(this).text("查看催款单");
});

$(".confirmReceive").click(function(e) {
	console.log("Button Clicked - Confirm Receive");
	$.ajax({
		url: "financial/confirmReceiveAlert.html",
		async: false,
		method: "POST",
		success:function(msg){
			$("#modal-div").html(msg);
		}
	});
	
	var tr = $(this).parent().parent();
	var receivableID = tr.find(".receivableid").text();
	var totalAccount = tr.find(".totalAccount").text();
	currentUser=$("#userID").text();
	console.log("Button ConfirmReceive Function - CurrentUserID: "+currentUser);
	
	$("#totalAccountSpan").text(totalAccount);
	$("#confirmMoneyReceived").click(function(e){
		$.ajax({
			url: "confirmReceive.do",
			method: "POST",
			data: "receivableID="+receivableID+"&currentUser="+currentUser+"&totalAccount="+totalAccount,
			success: function(msg) {
				if (msg=="SUCCESS"){
					tr.find(".payState").text("已付款");
					tr.find(".confirmReceive").addClass("hidden");
					tr.find(".reminder").addClass("hidden");
					htmltxt = '<div class="alert alert-success">操作成功！<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>';
					$("message-box").html(htmltxt);
				}
				
				else {
					htmltxt = '<div class="alert alert-danger">ERROR: 操作未成功，数据库错误。<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>';
				}
				
				$("#message-box").html(htmltxt);
			}
		});
	});
	
	$("#confirmReceiveModel").modal("show");
});