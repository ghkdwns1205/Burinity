package bu.main;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexCtr {

	@Autowired
	private IndexSvc indexSvc;

	@RequestMapping(value = "index")
	public String Index() {

		return "main/index";
	}

	@RequestMapping(value = "bunyangUpdate")
	public String crolling(BunyangVO bvo) {

		String[] city = {"부산광역시", "울산광역시", "경기도", "대구광역시", "대전광역시", "광주광역시", "인천광역시", "강원도", "제주도" };  // "서울특별시"
		String[] buillding = { "아파트", "오피스텔" };

		JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject;
		try {
			for (int x = 0; x < city.length; x++) {
				for (int y = 0; y < buillding.length; y++) {
			 Document doc = Jsoup.connect("https://m.r114.com/?_c=research&_m=bunyang&_a=ajax")
	                    .header("Origin", "https://m.r114.com")
	                    .header("Referer", "https://m.r114.com/?_c=research&_m=bunyang")
	                    .data("mode", "bunyang_search_list")
	                    .data("cal_type", "m")
	                    .data("txt_area", city[x])
	                    .data("building_type", buillding[y])
	                    .post();

					System.out.println(doc);
					jsonObject = (JSONObject) jsonParser.parse(doc.text());

					JSONArray jsonArray = (JSONArray) jsonObject.get("rows");

					for (int z = 0; z < jsonArray.size(); z++) {
						JSONObject objectInArray = (JSONObject) jsonArray.get(z);

						bvo.setBusinessSC(objectInArray.get("사업단계구분").toString());
						bvo.setProductType(objectInArray.get("상품유형").toString());
						bvo.setBusinessStage(objectInArray.get("사업단계").toString());
						bvo.setApartmentName(objectInArray.get("단지명").toString());
						bvo.setCity(objectInArray.get("도시").toString());
						bvo.setCounty(objectInArray.get("구시군").toString());
						bvo.setDong(objectInArray.get("읍면동").toString());
						bvo.setTotalNoH(objectInArray.get("총세대수").toString());
						bvo.setSalesTime(objectInArray.get("분양시기").toString());
						bvo.setMoveInTime(objectInArray.get("입주시기").toString());
						bvo.setSubscriptionAP(objectInArray.get("청약접수기간").toString());
						bvo.setContractPeriod(objectInArray.get("계약기간").toString());
						bvo.setAnnouncementDoW(objectInArray.get("당첨자발표일").toString());
						bvo.setMinimumArea(objectInArray.get("최소면적").toString());
						bvo.setMinimumAreaT(objectInArray.get("최소면적타입").toString());
						bvo.setMaximumArea(objectInArray.get("최대면적").toString());
						bvo.setMaximumAreaT(objectInArray.get("최대면적타입").toString());
						bvo.setMinimumSP(objectInArray.get("최소분양가").toString());
						bvo.setMaximumSP(objectInArray.get("최대분양가").toString());
						bvo.setAnnouncementDate(objectInArray.get("공고일").toString());
						bvo.setResalePeriod(objectInArray.get("전매기간").toString());

						indexSvc.InsertBunyang(bvo);

						System.out.println("크롤링한거 DB 넣기 끝@@@@@@@@@");

					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/index";
	}

	@RequestMapping(value = "jiyukSearch")
	public String jiyukSearch(BunyangVO bvo,ModelMap modelmap) {

		
		if(bvo.getAllJiyuk()==null||bvo.getAllJiyuk().equals("")) {
		System.out.println("여기시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
			
			int jiyuknum = bvo.getJiyuk()[0].length();
			System.out.println("겟 지역 0번째 @@@ 길이는 = " +jiyuknum);
			if(jiyuknum == 5) {
				 jiyuknum = 10000;
				 
//				 bvo.getAllJiyuk()[0] = Integer.toString(jiyuknum);
			}else {
				String jiyuknum_ = bvo.getJiyuk()[0].substring(0,1) +"000";
//				jiyuknum = Integer.parseInt(jiyuknum_);
//				bvo.getAllJiyuk()[0] = jiyuknum_;
				
//				bvo.setAllJiyuk(jiyuknum_);
				
			}
			
			int num = bvo.getJiyuk().length;
			
			switch(num){
				
				case 1:
					List<?> list1 = indexSvc.getPartJiyuk1(bvo);
					modelmap.addAttribute("list",list1);
					break;
					
				case 2:
					List<?> list2 = indexSvc.getPartJiyuk2(bvo);
					modelmap.addAttribute("list",list2);
					break;
					
					
				case 3:
					List<?> list3 = indexSvc.getPartJiyuk3(bvo);
					modelmap.addAttribute("list",list3);
					break;
			}
			
			
		}else {
			bvo = indexSvc.getAJiyuk(bvo);
			List<?> list = indexSvc.getAJiyukList(bvo);
			modelmap.addAttribute("list",list);
			return "main/index";
		}
		
		return "main/index";
	}
	
	@RequestMapping(value="bunyanInfo")
	public String bunyangInfo(BunyangVO bvo,ModelMap modelmap) {
		
			bvo = indexSvc.getbunyangInfo(bvo);
			
			modelmap.addAttribute("bvo",bvo);
			
		return "main/bunyangInfo";
	}
	
}
