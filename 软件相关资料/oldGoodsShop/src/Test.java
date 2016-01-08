import java.util.List;

import com.dkkj.absct.Model;
import com.dkkj.ogs.db.MyAppointDao;
import com.dkkj.ogs.db.ProvinceDAO;
import com.dkkj.ogs.model.MyApointmentModel;




public class Test {
	/**
	 * @param args
	 */
	public static void main(String args[]){
		//DataAccessObject dc=new UserDAO();
		//		Model md=new UserModel("测试用户","dsad87y8asd6as9dsafgdddddddddddddddd","8213123");
		//		System.out.println(dc.add(md));//添加一个新用户
		//		System.out.println(dc.updateById("23", "user_name", "2323@qq.com"));//更改一个用户的资料
		//		dc.updateById("23", "user_email", "82123@qq.com");//
		//		List list=((UserDAO) dc).queryAll();//获取所有用户
		//		for(int i=0;i<list.size();i++){
		//			System.out.println(((UserModel)list.get(i)).getInrol_time());
		//		}
		//		//		dc.deleteById("23");//删除一个用户
		//System.out.println(((UserModel)dc.getModelById("23")).getUser_name());//获取一个用户

		//DataAccessObject dc=new GoodsDAO();
		//Model md=new GoodsModel("二手自行车", "1230.2", "1", "/images/001.jpg", "使用了2个月");
		//System.out.println(dc.add(md));
		//System.out.println(dc.updateById("2", "goods_name", "遛弯呢"));
		//		List list=((GoodsDAO) dc).queryAll();//获取所有二手货
		//		for(int i=0;i<list.size();i++){
		//			System.out.println(((GoodsModel)list.get(i)).getGoods_name());
		//		}
		//System.out.println(((GoodsModel)dc.getModelById("1")).getGoods_name());
		//UserGoodsDAO d1=new UserGoodsDAO();
		//GoodsModel g=new GoodsModel("二手女朋友", "2.9", "2", "c:\23.jpg", "用了0天");
		//System.out.println(d1.addGoods("9", g, "3"));
		//d1.addGoods("8", "10", "1");
		//d1.modifyGoodsState("9", "6", "1");
		//d1.removeGoods("9", "10");
		//		DataAccessObject dc=new UserDAO();
		//		Model md=new UserModel("测试用户","dsad87y8asd6as9dsafgdddddddddddddddd","8213123");
		//		System.out.println(dc.add(md));//添加一个新用户
		//		MessageDAO dao=new MessageDAO();
		//		MessageModel msg=new MessageModel("10", "9", "你好，有货吗？");
		//		System.out.println(dao.add(msg));
		//		System.out.println(dao.updateById("1", "user_msg", "您好，这个卖吗？"));
		//		MessageDAO mdao=new MessageDAO();
		//		MessageModel msg=new MessageModel("10","8","您好？");
		//		mdao.add(msg);
		//		
		//		List<MessageModel> list=new ArrayList();
		//		list=mdao.queryAll();
		//		for(int i=0;i<list.size();i++){
		//			System.out.println(((MessageModel)list.get(i)).getUser_msg());
		//		}
		//		
		//		CommentDAO cd=new CommentDAO();
		//		CommentModel cm=new CommentModel("20", "9", "2", "不错的二手货");
		//		System.out.println(cd.add(cm));
		//		MD5Encryption md5=new MD5Encryption();
		//		String user_pwd="123";
		//		user_pwd=md5.getEncryptionString(user_pwd);
		//		System.out.println(user_pwd);

		//		LoginDao ld=new LoginDao();
		//		System.out.println(ld.login("1231", "66"));


		//		Seller seller=new Seller("8");
		//		System.out.println(seller.acceptAppointment("2", "明天验货"));
		//		Buyer buyer=new Buyer("9");
		//		System.out.println(buyer.addAppointment("2", "武昌区", "2012-08-26 05:14", "2012-09-26 05:14", "8", "20.3", "买这个"));
		//	seller.agreeSell("3");
		//		UserGoodsDAO ud=new UserGoodsDAO(); 
		//		
		//		 List<GoodsModel> list=ud.queryTop9OnlineGoods();
		//		 for(int i=0;i<list.size();i++){
		//			 GoodsModel goods=(GoodsModel)list.get(i);
		//			 System.out.println(goods.getGoods_name());
		//		 }
		//		String buyer_id="127";
		//		String goods_id="2";
		//		String apt_place="北门";
		//		String apt_timeS="0022-02-02T02:02";
		//		String host_id="8";
		//		String apt_price="20";
		//		String exMsg="ssss";
		//Buyer buy=new Buyer(buyer_id);



		//		
		//		int flag=0;
		//		flag=buy.addAppointment(
		//				goods_id,
		//				apt_place,
		//				apt_timeS,
		//
		//				host_id,
		//				apt_price,
		//				exMsg
		//
		//		);
		//		System.out.println(flag);
		//		DemandDAO d=new DemandDAO();
		//		
		//		d.queryNew14();
		//		
		//		UserModel userdemand=new UserDAO().getModelById("");
		//		userdemand.getUser_image();
		//		List<AppointmentModel2> list=new AppointmentDAO().getAppointList("9");
		//		for(int i=0;i<list.size();i++){
		//			System.out.println(((AppointmentModel2)list.get(i)).getApt_place());
		//		}
		//		

		//		DbConnection dc=new DbConnection();
		//         try {
		//			System.out.println(dc.getConnection());
		//			
		//		} catch (SQLException e) {
		//			// TODO Auto-generated catch block
		//			e.printStackTrace();
		//		}

		//		SearchModel sm;
		//		
		//		SearchDAO sd=new SearchDAO();
		//		List<SearchModel> list=sd.getAllSearchByKeyWord("二手");
		//		for(int i=0;i<list.size();i++){
		//			System.out.println(((SearchModel)list.get(i)).getGoods_price());
		//		}

		ProvinceDAO pd=new ProvinceDAO();

//		List<ProvinceModel>list=pd.getAllProvince();
//		for(int i=0;i<list.size();i++){
//
//			System.out.println(((ProvinceModel)list.get(i)).getProvince_id());
//		}
//		List<SchoolModel> list=new ProvinceDAO().getAllSchoolByProvinceId("14");
//		for(int i=0;i<list.size();i++)
//		System.out.println(((SchoolModel)list.get(i)).getSchool_name());



		//		SchoolDAO pd=new SchoolDAO();
		//		
		//		List<SchoolModel>list=pd.getAllSchool();
		//		for(int i=0;i<list.size();i++){
		//			
		//			System.out.println(((SchoolModel)list.get(i)).getSchool_name());
		//	}	
//		ProvinceDAO pDAO=new ProvinceDAO();
//		SchoolModel schoolModel;
//		List<SchoolModel> schoolList;
//		SchoolDAO schoolDAO=new SchoolDAO();
//		List<ProvinceModel>listp=pDAO.getAllProvince();
//		ProvinceModel pmodel;
//		for(int i=0;i<listp.size();i++){
//			pmodel=(ProvinceModel)listp.get(i);
//		System.out.println(pmodel.getProvince_name());
//		schoolList =pDAO.getAllSchoolByProvinceId(pmodel.getProvince_id());
//		for(int j=0;j<schoolList.size();j++){
//			schoolModel=(SchoolModel)schoolList.get(j);
//			System.out.print(schoolModel.getSchool_name());
//		}
//		
//		GoodsTypeDAO goodsType=new GoodsTypeDAO();
//		List fatherTypeList=goodsType.getAllFatherTypes();
//		for(int i=0;i<fatherTypeList.size();i++){
//			System.out.println(((GoodsTypeModel)fatherTypeList.get(i)).getType_name());
//		}
//		UserGoodsDAO userGoodsDao=new UserGoodsDAO();
//		int
//		result=userGoodsDao.removeGoods("8", "55");
//		System.out.println(result);
		
		MyAppointDao md=new MyAppointDao();
		List<Model> list=md.getMyAppointment("8");
		for(int i=0;i<list.size();i++){
			System.out.println(((MyApointmentModel)list.get(i)).getApt_place());
		}
		
		 

	}
}
