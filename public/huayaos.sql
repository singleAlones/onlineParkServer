-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-12-20 04:08:21
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `huayao`
--

-- --------------------------------------------------------

--
-- 表的结构 `advantage`
--

CREATE TABLE `advantage` (
  `adid` int(11) NOT NULL,
  `adName` varchar(32) DEFAULT NULL,
  `adcontent` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `advantage`
--

INSERT INTO `advantage` (`adid`, `adName`, `adcontent`) VALUES
(1, ' ', '位于陕甘边照金革命根据地所在地，西安半小时经济圈，总投资10亿元，占地3.43平方千米，7.5万平米的创业孵化大厦，配置定制行业扶持政策，特殊行业资质审批、危化品专用仓储和物流场地、行业人员招聘和培训、社区化生活配案。'),
(2, '区域最佳', '药王故里，红色照金，丝绸之路起点，距西安机场40分钟车程，陕甘南照金革命根据地所在地。'),
(3, '高效物流', '城市工业品产业聚集高效物流网状物流体系、城市内具备工业铁流、城市内外公路和高铁网状全面覆盖。'),
(4, '政策保障', '西部大开发优惠政策，市，区两级共建重点项目'),
(5, '配套发展', '打造电子商务平台企业为核心的产业聚集发展电子商务平台企业，构建工业品电子商务平台西北发展生态圈。'),
(6, '落户服务', '全托管异地经营，跑动异地注册、0门槛资质办理，无抵押20-500万，低至基准利率1年贷款。'),
(7, '产业聚集', '聚焦陕西省铜川市优势产业：化工品、工业品、煤炭、水泥、钢材、个人安全防护、地方特色产品、仓储物流。');

-- --------------------------------------------------------

--
-- 表的结构 `application`
--

CREATE TABLE `application` (
  `appid` int(11) NOT NULL,
  `appName` varchar(36) DEFAULT NULL,
  `appImg` varchar(36) DEFAULT NULL,
  `appcid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `application`
--

INSERT INTO `application` (`appid`, `appName`, `appImg`, `appcid`) VALUES
(1, '零售电商', '/images/index/service/1.png', 0),
(2, '社交电商', '/images/index/service/2.png', 1),
(3, '直播电商', '/images/index/service/3.png', 2),
(4, 'B2B电商', '/images/index/service/4.png', 3),
(5, '消费品', '/images/index/service/5.png', 4),
(6, '工业化工', '/images/index/service/6.png', 5),
(7, '仓储物流', '/images/index/service/7.png', 6),
(8, '现代服务', '/images/index/service/8.png', 7);

-- --------------------------------------------------------

--
-- 表的结构 `application_content`
--

CREATE TABLE `application_content` (
  `appcid` int(11) NOT NULL,
  `appcName` varchar(64) DEFAULT NULL,
  `appcimg1` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `application_content`
--

INSERT INTO `application_content` (`appcid`, `appcName`, `appcimg1`) VALUES
(1, '零售电商', '/images/industry/lingshou.jpg'),
(2, '社交电商', '/images/industry/shejiao.jpg'),
(3, '直播电商', '/images/industry/zhibo.jpg'),
(4, 'B2B电商', '/images/industry/b2b.jpg'),
(5, '消费品', '/images/industry/xiaofei.jpg'),
(6, '工业化工', '/images/industry/gongye.jpg'),
(7, '仓储物流', '/images/industry/wuliu.jpg'),
(8, '现代服务', '/images/industry/xiandai.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `big_img`
--

CREATE TABLE `big_img` (
  `biid` tinyint(4) NOT NULL,
  `biimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `big_img`
--

INSERT INTO `big_img` (`biid`, `biimg`) VALUES
(1, '/images/aboutUs/aboutUs1.jpg'),
(2, '/images/policy/policy0.jpg'),
(3, '/images/garden/into.jpg'),
(4, '/images/news/new.jpg'),
(5, '/images/introduce/introduce00.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `company`
--

CREATE TABLE `company` (
  `comid` tinyint(4) NOT NULL,
  `comimg` varchar(128) DEFAULT NULL,
  `comName` varchar(128) DEFAULT NULL,
  `comcid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `company`
--

INSERT INTO `company` (`comid`, `comimg`, `comName`, `comcid`) VALUES
(1, '/images/company/company1.png', '陕西摩贝网供应链管理有限公司', 0),
(2, '/images/company/company2.png', '山东海科化工集团', 1),
(3, '/images/company/company3.png', '山东信敏惠集团', 2),
(4, '/images/company/company4.gif', '裕华能源集团有限公司', 3),
(5, '/images/company/company5.png', '每日优鲜', 4),
(6, '/images/company/company6.png', '找罐罐', 5),
(7, '/images/company/company7.png', '陕西创客互联网络科技有限公司', 6),
(8, '/images/company/company8.png', '陕西原池新能源科技有限公司', 7),
(9, '/images/company/company9.png', '陕西精化快车生物科技有限公司', 8),
(10, '/images/company/company10.png', '澳隆供应链（陕西）有限公司', 9);

-- --------------------------------------------------------

--
-- 表的结构 `company_content`
--

CREATE TABLE `company_content` (
  `comcid` tinyint(4) NOT NULL,
  `comcName` varchar(128) DEFAULT NULL,
  `comccontent` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `company_content`
--

INSERT INTO `company_content` (`comcid`, `comcName`, `comccontent`) VALUES
(1, '陕西摩贝网供应链管理有限公司', 'MOLBASE摩贝，全球领先的化学品电商综合服务平台。致力于打造集化合物数据枢纽、化学品现货交易、支付结算、供应链金融、专业物流和仓储、专业化学品进出口服务为一体的产业生态体系，使全球化学品交易变得透明、简单、高效。'),
(2, '山东海科化工集团', '海科集团汇链供应链管理有限公司属山东海科集团子公司，成立于2019年2月20日，注册资金5000万元，目前办公地址在锦阳新城创艺术中心东裙楼二楼。主营业务：网络科技技术开发、技术咨询、技术服务、技术转让；互联网信息服务；计算机软件开发；企业管理咨询；市场营销策划；广告设计、制作、代理及发布；企业以自有资金对商业、工业、服务业进行投资；供应链管理；普通道路货物运输；经营性道路危险货物运输（1-9类危险化学品包括集装箱、罐式容器）；内陆江河、海上危化货物运输代理；航空国际货物运输代理；公路、铁路国际货物运输代理；从事货物进出口及技术进出口业务；国内货物运输代理；危化品装卸服务；打包服务；电子商务；化工原料及产品销售（除监控化学品、烟花爆竹、民用爆炸物品）；计算机软件开发及维护；第三方物流信息服务；汽车租赁。'),
(3, '山东信敏惠集团', '信敏惠集团，是以山东庆云长信化学科技有限公司为根基，经相关多元化发展于2014年3月份正式组建成立的集团公司。\r\n信敏惠集团拥有山东庆云长信化学科技有限公司、庆云信远化学科技有限公司、山东诚合新材料有限公司、山东信敏惠供应链管理有限公司、山东信敏惠工程技术有限公司、安徽信敏惠新材料有限公司等12家全资子公司，现有职工500余人。\r\n信敏惠集团是国内专注研发生产经营吡咯烷酮系列产品的大型化工新材料企业。经过多年的发展，已经形成了以基础化学品、精细化学品、新能源材料为主导的三大系列产品：一是环已胺（CHA/DCHA）、糠醇(FA)加氢系列产品年综合产能11万吨；二是γ-丁内酯（GBL）、N-甲基吡咯烷酮（NMP）、2-吡咯烷酮（2-P）系列产品联产装置年产能19万吨；三是微电级NMP及高纯电子化学品、纳米碳管（CNT）及科琴黑（ECP）复合导电剂系列产品年综合产能9万吨。\r\n信敏惠集团在基础化学品、精细化学品、新能源材料三大实体产业基础上实现转型升级，打造供应链管理服务、工程技术服务、设计研发服务三大服务产业。面向新能源电池、半导体、石油化工、医药中间体、绝缘材料、工程塑料、芳纶纤维、轮胎橡胶、食品添加剂、工业铸造等领域提供优质产品和一体化服务。\r\n未来，信敏惠集团将持续推进安全生产、循环经济、绿色化工，快速转换新动能，加快发展新材料产业和供应链平台服务业，积极探索新领域、新技术、新产品、新业态，实现集团规模化、多元化、产业化发展，持续增强“信敏惠”品牌影响力，愿与国内外各界朋友真诚合作、互惠共赢、共创辉煌。'),
(4, '裕华能源集团有限公司', '裕华能源控股有限公司（以下简称“裕华能源”）是一家投资控股公司，该公司与2005年07月14日在香港联合交易所主板上市（HK2728），当前实际控制人陈金乐先生（控股58.85%），注册地址Cricket Square Hutchins Driwe P.O.Box2681 Grand Cayman KY1-1111 Cayman Isoands。公司致力于打造具有竞争力优势的石化产业生态体系，并构建“石化产业+上市公司”的产业与资本相结合的双翼发展模式。公司主要从事石化产业生态体系，包括但不限于：油气开采、炼化、仓储、物流运输、分销和零售等六大业务版块，为石化产业链上下游客户提供服务和行业解决方案。'),
(5, '每日优鲜', '每日优鲜是一个围绕着老百姓餐桌的生鲜 O2O 电商平台。覆盖了水果蔬菜、海鲜肉禽、牛奶零食等全品类，每日优鲜在主要城市建立起 “城市分选中心 + 社区配送中心” 的极速达冷链物流体系，为用户提供全球生鲜产品 “2 小时送货上门” 的极速达冷链配送服务。2019年9月，入选2018年零售百强名单。2019年10月21日，胡润研究院发布《2019胡润全球独角兽榜》，每日优鲜排名第84位。 '),
(6, '找罐罐', '成立于2017年3月，专注于危化品物流的车货匹配平台，致力于通过大数据与互联网把人、车、货链接在一起，精准的在线智能匹配与专业的撮合团队最大限度的实现危化品物流车货匹配，提供完善的危化品运输解决方案。专注于危化品物流的车货匹配平台，致力于通过大数据与互联网把人、车、货链接在一起，精准的在线智能匹配与专业的撮合团队最大限度的实现危化品物流车货匹配，提供完善的危化品运输解决方案。'),
(7, '陕西创客互联网络科技有限公司', ' 陕西创客互联网络科技有限公司由陕西玖贤瀛道企业管理有限公司联合西安金保互联网科技有限公司共同发起成立，公司坐落在中国（西部）数字港耀州区大数据产业园；公司凭借专业的技术背景及多年的社保、财税、金融等行业服务经验为依托，创建“共享经济双创支撑平台---共享创客云平台”以为企业和个人提供综合专业的一站式灵活用工服务平台。'),
(8, '陕西原池新能源科技有限公司', '陕西原池物流科技有限公司成立于2018年08月13日。   陕西原池新能源科技有限公司为“找化客”大宗基础原料化工电商平台旗下交易业务公司，以变革化工产品流通贸易模式、助力化工行业转型升级为愿景，通过全国丰富的线下石化、煤化工产品贸易与物流体系，打造全国一流的大宗基础原料化工产品交易电子商务平台，'),
(9, '陕西精华快车生物科技有限公司', '陕西嘉融生物科技有限公司于2018年5月在陕西省铜川市耀州区锦阳新城创业大厦成立，主要是依托上海嘉融生物科技有限公司的业务基础，旨在整合全球资源，打造一站式精细化学品赋能服务平台，广泛服务医药、农药、新材料等下游行业，为相关参与方提供资源精准匹配，项目产业化落地，先进技术的孵化创投，担保交易、产业咨询、金融资本等服务。'),
(10, '澳隆供应链（陕西）有限公司', ' 澳隆供应链（陕西）有限公司是澳隆集团铜川独立分公司。澳隆集团成立于2004年，是一家从事危险品公路运输、危险品集装箱（罐）、危险品工业气体运输、海关监管运输、包装散货运输、制冷加热运输、罐装清洗、堆存、货运代理、无车承运人、安全顾问、租赁、商业贸易、新型能源科技应用的综合性物流集团。');

-- --------------------------------------------------------

--
-- 表的结构 `h_user`
--

CREATE TABLE `h_user` (
  `hid` tinyint(4) NOT NULL,
  `hname` varchar(8) DEFAULT NULL,
  `hphone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `h_user`
--

INSERT INTO `h_user` (`hid`, `hname`, `hphone`) VALUES
(1, 'sdf', 'sddfds'),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, 'sdfsdf', '13319191328'),
(7, '屈天气', '13319191328'),
(8, 'ququ ', '13319191328'),
(9, 'sdf', '13319191328'),
(10, 'sdf', '13319191328'),
(11, '', '13319191328'),
(12, '', '13319193287'),
(13, 'sdf', '13319193283'),
(14, 'sdfsdf', '13313131313'),
(15, 'sdfsdf', '13313131313'),
(16, 'sdfsdf', '13313131313'),
(17, 'sdf', '13315151515'),
(18, 'lihi ', '13319191328'),
(19, 'qer', '13319191328'),
(20, 'sdf', '13319191392'),
(21, '123', '13319191328'),
(22, '1331919', '13319191328'),
(23, 'df', '13319191328'),
(24, '1231', '13319191328'),
(25, '123', '13319191328'),
(26, 'sdf', '13319191328'),
(27, 'sd', '13319191128'),
(28, 'sd', '13319191128'),
(29, '13319191', '13319191328'),
(30, 'sdf', '13319191328'),
(31, 'we', '13319191328'),
(32, 'sdf', '13319191587'),
(33, '124', '13319191328'),
(34, '屈天琦', '13319191328'),
(35, '屈天琦', '13319191328'),
(36, '12', '13319191328'),
(37, '屈', '13319191254'),
(38, '屈', '13319191254'),
(39, '12', '13319191328'),
(40, '屈', '13319191628'),
(41, 'asd', '13319191328'),
(42, '感觉', '13319191328'),
(43, '婚礼', '13319191328'),
(44, '婚礼', '13319191328'),
(45, '婚礼', '13319191328'),
(46, 'sdf', '13319191328'),
(47, '23', '13319191328'),
(48, '1216', '13319191328'),
(49, '1264', '13319191628');

-- --------------------------------------------------------

--
-- 表的结构 `industry`
--

CREATE TABLE `industry` (
  `inid` int(11) NOT NULL,
  `inName` varchar(200) DEFAULT NULL,
  `inName1` varchar(200) DEFAULT NULL,
  `inName2` varchar(200) DEFAULT NULL,
  `inName3` varchar(200) DEFAULT NULL,
  `inContent1` varchar(200) DEFAULT NULL,
  `inContent2` varchar(200) DEFAULT NULL,
  `inContent3` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `industry`
--

INSERT INTO `industry` (`inid`, `inName`, `inName1`, `inName2`, `inName3`, `inContent1`, `inContent2`, `inContent3`) VALUES
(1, '行业入准', '资质审批', '行业配套', NULL, '普通道路运输许可、\r\n危化品经营许可、\r\n危化品运输许可\r\n、易制毒经营审批、\r\n易制爆经营审批、\r\n成品油经营资质审批、\r\n食品流通许可', '危化品标准停车场、危化品车辆挂牌年审、\r\n化学品存储、\r\n油品存储', NULL),
(2, '行业入准', '资质审批', '行业配套', '人力配套', '普通道路运输许可、\r\n危化品运输许可', '危化品标准停车场、\r\n危化品车辆挂牌年审、\r\n化学品存储、\r\n油品存储\r\n、其他标准化仓储物流配套\r\n', '司机、\r\n押运员、\r\n危化品安全员、\r\n库管\r\n停车场管理、\r\n园区全程招聘、培训、组织考证'),
(3, '行业入准', '资质审批', '行业配套', NULL, '普通道路运输许可、\r\n危化品经营许可\r\n、危化品运输许可、\r\n易制毒经营审批\r\n、易制爆经营审批、\r\n成品油经营资质审批', '危化品标准停车场、\r\n危化品车辆挂牌年审、\r\n化学品存储、\r\n油品存储\r\n', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `introduce`
--

CREATE TABLE `introduce` (
  `inid` int(11) NOT NULL,
  `inName` varchar(32) DEFAULT NULL,
  `inimg` varchar(128) DEFAULT NULL,
  `incontent` varchar(2000) DEFAULT NULL,
  `inciid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `introduce`
--

INSERT INTO `introduce` (`inid`, `inName`, `inimg`, `incontent`, `inciid`) VALUES
(1, '园区简介', '/images/introduce/introduce0.png', '规划聚焦数字经济产业，着力打造一园五中心', 0),
(2, '园区规划', '/images/introduce/introduce1.png', '打造千亿工业品电商枢纽，形成一枢纽五中心两体系发展格局', 1),
(3, '基本区情', '/images/introduce/introduce2.png', '西部大开发，红色照金，丝绸之路起点', 2),
(4, '区位交通', '/images/introduce/introduce3.png', '已经融入西安大都市半小时经济圈，距离西安机场40分钟车程', 3);

-- --------------------------------------------------------

--
-- 表的结构 `introduce_content`
--

CREATE TABLE `introduce_content` (
  `incid` int(11) NOT NULL,
  `incimg` varchar(128) DEFAULT NULL,
  `inccontent` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `introduce_content`
--

INSERT INTO `introduce_content` (`incid`, `incimg`, `inccontent`) VALUES
(1, '/images/introduce/introduce.jpg', '位于铜川市耀州区锦阳新城的大数据产业园是耀州区“2342”工程规划的“两个新兴产业园”之一，项目总投资达10亿元，占地3.43平方千米。主要以锦阳新城创业孵化大厦为核心，聚焦数字经济产业，吸引国内外大数据企业、创新创业企业、电商企业入驻，促进实体经济与数字经济融合发展。 大数据产业园着力打造“一园五中心”（西北地区重要的工业品电商产业园区、结算中心、双创示范中心、智慧物流中心、人才孵化中心、区域金融中心），促进实体经济与数字经济融合发展。 \r\n园区建设以各行业头部电子商务平台的影响力、号召力完成产业链上下游企业的聚集，建立了西部地区服务最完善、效率最高、成本最低的线上化营商服务环境。以铜川原有的优势工业产业为基础，园区入驻企业覆盖了化学品、石化、工业建材、安全防护、智慧物流、人工智能、数据服务、数字文化、消费品、金融服务等相关行业领域，形成了多维、立体的行业生态。'),
(2, '/images/introduce/introduces.jpg', '耀州区大数据产业园围绕中国（西部）工业品数字港总体定位，打造千亿工业品电商枢纽 ，配套建设智慧物流中心、千亿结算中心、区域金融中心、双标师范中心和人才孵化中心， 推动建设产业电商以及数字经济带体系、数字经济政务服务体系，形成“一枢纽五中心两体系 发展格局”。'),
(3, '/images/introduce/introduce.jpg', '耀州置县历史2170年，2002年10月撤县设区。总面积1617平方公里，总人口33万， 117个行政村。耀州区先后获得全国文化先进区 、全国文物先进区、全国绿化模范城市、国家卫生城市、全国休闲农业与 乡村旅游示范点、全国绿化模范城市、国家卫生城市、全国休闲农业与乡村旅游示范点、 全国中医药文化宣传教育基地、国家义务教育发展基本均衡区、中国城市文化科技创新 年度奖等荣誉称号。');

-- --------------------------------------------------------

--
-- 表的结构 `i_carousel`
--

CREATE TABLE `i_carousel` (
  `iid` tinyint(4) NOT NULL,
  `iimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `i_carousel`
--

INSERT INTO `i_carousel` (`iid`, `iimg`) VALUES
(1, '/images/carousel/carousel1.jpg'),
(2, '/images/carousel/carousel2.jpg'),
(3, '/images/carousel/carousel3.jpg'),
(4, '/images/carousel/carousel4.jpg'),
(5, '/images/carousel/carousel0.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `merit1`
--

CREATE TABLE `merit1` (
  `mid` int(11) NOT NULL,
  `mName` varchar(64) DEFAULT NULL,
  `mContent` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `merit1`
--

INSERT INTO `merit1` (`mid`, `mName`, `mContent`) VALUES
(1, '省运营成本50%+', '财税统筹、人力架构统筹、社保统筹，支持“工作室”0门槛注册经营'),
(2, '提经营利润30%+', '经营税收奖励最高100%、贷款贴息最高100万、个人所得税补贴最高100%'),
(3, '聚平台流量增速10倍+', '为平台及上下游企业定制产业配套和扶持政策增加合作粘性'),
(4, '异地注册0跑动', '最快4小时出照、2天办结银行开户、3天正常经营，提供注册地址'),
(5, '合规经营有依据', '工商、税务等监管单位上门服务指导，各行业国家级税、法专家顾问团'),
(6, '官方服务有保障', '运营中心统一管理服务，规范安全可放心、绿色通道最快捷'),
(7, '成本全网最低价', '0元注册、500万1年期无抵押贷款利息低至基准利率、免费资源对接');

-- --------------------------------------------------------

--
-- 表的结构 `merit2`
--

CREATE TABLE `merit2` (
  `mid` int(11) NOT NULL,
  `mName` varchar(64) DEFAULT NULL,
  `mContent` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `merit2`
--

INSERT INTO `merit2` (`mid`, `mName`, `mContent`) VALUES
(1, 'B2B电商平台', '上下游企业落户园区可获得特殊资质办理、扶持政策、产业配套'),
(2, '社交电商平台', '平台分销商结算合规、个人结算个税低至0'),
(3, '外包服务平台', '支持“工作室”万户级大批量入驻，个人服务劳动关系合规处理'),
(4, '企业服务平台', '服务产品提供、本地化运营服务、人员招聘和培训、平台推广');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `nid` tinyint(4) NOT NULL,
  `nimg` varchar(128) DEFAULT NULL,
  `ncontent` varchar(1028) DEFAULT NULL,
  `ncid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`nid`, `nimg`, `ncontent`, `ncid`) VALUES
(1, '/images/news/news01.jpg', '国家商务部电子商务司司长骞芳莉调研大数据产业园', 0),
(2, '/images/news/news02.jpg', '陕西省省委书记胡和平在铜川市调研时强调 全力做好稳增长促转型工作 如期高质量打赢脱贫攻坚战', 1),
(3, '/images/news/news03.jpg', '省人大常委会副主任、省总工会主席郭大为一行视察大数据产业园建设', 2),
(4, '/images/news/news04.jpg', '陕西省政协副主席杨冠军率省政协优化营商环境专题民主监督调研组一行到访世纪华耀调研', 3),
(5, '/images/news/news05.jpg', '局长徐强为组长的省统计局调研组来大数据产业园调研指导工作', 4),
(6, '/images/news/news06.jpg', '省委网信办调研组莅临大数据产业园开展数字经济工作专题调研', 5),
(7, '/images/news/news07.jpg', '热烈欢迎鑫方盛控股集团有限公司考察团莅临大数据产业园考察', 6),
(8, '/images/news/news08.jpg', '庆祖国70华诞国富民强，愿中华繁荣昌盛，大数据产业园企业职工代表参加庆祝新中国成立70周年文艺汇演', 7),
(9, '/images/news/news09.jpg', '六年磨一剑！摩贝在沪首发“摩立方2.0”新品！', 8),
(10, '/images/news/news10.jpg', '省委联合督察组来大数据产业园督查稳增长工作', 9);

-- --------------------------------------------------------

--
-- 表的结构 `news_img`
--

CREATE TABLE `news_img` (
  `niid` tinyint(4) NOT NULL,
  `niimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news_img`
--

INSERT INTO `news_img` (`niid`, `niimg`) VALUES
(1, '/images/news/new.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `new_content`
--

CREATE TABLE `new_content` (
  `ncid` tinyint(4) NOT NULL,
  `ncimg` varchar(128) DEFAULT NULL,
  `nccontent` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `new_content`
--

INSERT INTO `new_content` (`ncid`, `ncimg`, `nccontent`) VALUES
(1, '/images/news/new/news1.jpg', '9月5日，商务部电子商务司司长骞芳莉来我市调研电子商务工作。省商务厅巡视员王国龙，市长李智远，副市长刘西林陪同。骞芳莉先后查看了耀州区石柱镇西古村电商扶贫项目、耀州区电商公共服务中心、耀州区锦阳新城大数据产业园和铜川市大学生创业孵化园。在西古村，听说村上成功打造了“电商企业+加工企业+生产基地+贫困户”的产业扶贫模式，骞芳莉十分高兴。她指出，要做好产品的深加工，加快进行有机认证，积极拓宽销售渠道，带动更多的贫困群众脱贫致富。在耀州区电商公共服务中心，骞芳莉了解了电商运营服务、创业孵化、扶贫等情况。她强调，要加大政府推动力度，整合资源，积极培育多种类型、多种功能的县域电子商务经营合作主体，形成县域电子商务服务带动城乡协调发展的局面。在锦阳新城大数据产业园，骞芳莉查看了陕西安易电子商务有限公司、陕西摩贝生物科技有限公司、陕西照金世纪华耀科技有限公司等电商平台的运营情况。她指出，要努力实现线上线下融合发展，培育产品品牌，提升物流条件，促进实体经济与数字经济融合发展。在铜川市大学生创业孵化园，骞芳莉了解了入园企业的发展和销售情况，并与大学生创业者进行了亲切交谈，勉励他们增强创新意识，提升经营水平，带动更多的大学生实现就业创业。'),
(2, '/images/news/new/news2.jpg', '8月6日至7日，省委书记胡和平到铜川市宜君县、王益区、耀州区和新区调研。他强调，要深入学习贯彻习近平新时代中国特色社会主义思想，认真落实省委十三届五次全会部署，全力做好稳增长工作，全面贯彻高质量发展要求，坚决打赢脱贫攻坚战，深化扫黑除恶专项斗争，加强基层党组织建设，推动新时代追赶超越迈出新步伐。'),
(3, '/images/news/new/news3.jpg', '5月8日，省人大常委会副主任、省总工会主席郭大为一行来到大数据产业园视察项目建设情况，省人大视察团、铜川市委副书记、铜川市市长李智远、耀州区区委书记杨宏伟、耀州区人大常委会主任杨满收陪同调研。郭大为主任一行在园区运营中心视察了企业服务机构及结算中心，园区运营中心世纪华耀副总经理王春向考察团详细介绍了园区的产业招商策略、企业服务效率、结算中心的工作模式，郭大为主任对于产业园区的运营管理成果给予了肯定和期待，希望我们要持续研究出台更多优惠政策，不断优化营商环境，服务好项目建设，通过结算中心快速发展产业聚集，推动新经济转型发展。视察后，郭大为主任现场办公，对视察过程中了解到的问题和发展需要的支持现场指示，给予解决意见和后续工作安排。郭大为主任的视察以及给予的发展支持和指导意见，给我们未来建设大数据产业园、打造西部大数据产业新生态、推动铜川市新经济建设、助力城市发展转型带来强大的信心，我们将一如既往，拼搏向前。'),
(4, '/images/news/new/news4.jpg', '7月25日，省委网信办调研组一行5人深入耀州区大数据产业园开展数字经济工作专题调研。调研组由省委网信办副巡视员王创带队，市委网信办主任李中林、市委网信办副主任庞永平、区委常委、宣传部部长杨梅、区委网信办主任马勇民、区经贸局局长冯继荣等相关单位负责同志陪同调研。7月25日，省委网信办调研组一行5人深入耀州区大数据产业园开展数字经济工作专题调研。调研组由省委网信办副巡视员王创带队，市委网信办主任李中林、市委网信办副主任庞永平、区委常委、宣传部部长杨梅、区委网信办主任马勇民、区经贸局局长冯继荣等相关单位负责同志陪同调研。世纪华耀副总经理王春陪同调查组参观了公司办公环境、安易个人安全防护用品交易平台产品展厅，向调查组领导汇报了公司自2017年落户耀州区以来发展和运营的情况。大数据产业园已经相继落户10多家行业龙头型平台企业，截止11月实现园区16.3亿产值，2018年突破20亿，给建设千亿级结算中心开了个好头，2019年，相信我们会有更精彩的答卷。'),
(5, '/images/news/new/news5.jpg', '9月17日，以省统计局党组书记、局长徐强为组长的省统计局调研组来大数据产业园调研指导工作。铜川市人民政府市长李智远，市发改委主任王晓刚、市统计局局长杨琨、区委副书记、区长张大军，区发改局局长李浩宁，区统计局局长封耀斌及耀州区大数据产业园运营中心负责人刘振宇陪同调研。  调研结束后，调研组对园区取得的成绩给予充分肯定。他鼓励企业要加大项目推进力度，要求相关部门要进一步提高认识，全面提升统计工作水平，为铜川经济发展作出更大贡献。'),
(6, '/images/news/new/news6.jpg', '7月25日，省委网信办调研组一行5人深入耀州区大数据产业园开展数字经济工作专题调研。调研组由省委网信办副巡视员王创带队，市委网信办主任李中林、市委网信办副主任庞永平、区委常委、宣传部部长杨梅、区委网信办主任马勇民、区经贸局局长冯继荣等相关单位负责同志陪同调研。7月25日，省委网信办调研组一行5人深入耀州区大数据产业园开展数字经济工作专题调研。调研组由省委网信办副巡视员王创带队，市委网信办主任李中林、市委网信办副主任庞永平、区委常委、宣传部部长杨梅、区委网信办主任马勇民、区经贸局局长冯继荣等相关单位负责同志陪同调研。'),
(7, '/images/news/new/news7.jpg', ' 为了了解、入驻铜川市大数据产业园，进行更加精进的合作，鑫方盛控股集团近日派出考察团，在园区运营中心总经理王春的带领下来大数据产业园参观考察。 考察团一行先后参观了园区创业大厦、世纪华耀、铜人科技、大数据学院、摩贝等入园企业，认真了解了耀州区的区位优势及园区的扶持政策、企业培育等情况。参观结束后，鑫方盛控股集团财务总经理李庆生对园区的发展和园区企业的创新创业成果及展出的展品表示肯定，对于和园区以后的合作也表现出浓厚的兴趣与信心。'),
(8, '/images/news/new/news8.jpg', '  9月23日，由市委组织部、市委非公和社会组织工委、市市场监管局、市民政局联合主办的铜川市非公企业和社会组织庆祝新中国成立70周年文艺汇演在市图书馆报告大厅举行。市委书记杨长亚，省委组织部部务会成员、省委非公和社会组织工委书记赵亚莉，省委“不忘初心、牢记使命”主题教育第二巡回指导组副组长侯艳丽，省市场监督管理局二级巡视员陈永亮，市委常委崔歆、刘丽、黄勇，市人大常委会副主任刘厚安，市政协副主席路一民等与广大党员干部职工一同观看演出。'),
(9, '/images/news/new/news9.jpg', '摩立方涵盖化学品全产业链，旨在帮助全球化学品企业建立健全营销渠道，精准推广和获客，实现交易在线化，并提供供应链及金融服务等，助力企业提高运营效率，降低运营成本。摩贝全新升级的“摩立方2.0”是基于大数据、云计算和供应链金融等新技术迭代为应用基础的高效赋能产品，与原有产品相比，“摩立方2.0”能为客户提供针对不同市场、性质和需求的灵活化、定制式服务，同时，在获客渠道、引流和客服体系方面，丰富了社交型属性，在支付通道、融资保理等方面实现了协同，形成了金融闭环。'),
(10, '/images/news/new/news10.jpg', '近期，省政府督察专员吴鹏翔、省政府督查室副主任刘宏凯，省发改委评估督导处调研员权巨峰一行来大数据产业园考察稳增长工作。市政府副秘书长郑升明、市政府督查室主任白永琦、市发改委副主任何育宁、区委常委 常务副区长高岗、区委办、区政府办、区发改局相关领导陪同考察。大数据产业园运营中心总经理王春陪同介绍园区中心建设情况及运营情况。 产业园企业包括国内化学品交易第一大平台摩贝网，将于12月在纳斯达克上市；全国500强百名内企业山东海科化工集团；全球最大的NMP生产企业山东信敏惠集团；石化香港上市公司裕华能源集团有限公司；国内最大罐车物流平台找罐车；国内最大的生鲜和食品交易平台每日优鲜等国内一线标杆企业。2019年截至11月，预计完成交易额79亿元，共带动就业超过300人。 考察结束后，督查组对园区取得的工作成效表示肯定。督查指出，铜川有着优越的产业环境，希望地方加大基础建设投入，扩大发展园区，坚定地发展新兴产业，引进扶持培育优质企业，全力以赴，在新形势下抓住新机遇，以更多的举措和保障做好稳增长工作。');

-- --------------------------------------------------------

--
-- 表的结构 `policy`
--

CREATE TABLE `policy` (
  `poid` tinyint(4) NOT NULL,
  `poName` varchar(128) DEFAULT NULL,
  `poImg` varchar(128) DEFAULT NULL,
  `pocid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `policy`
--

INSERT INTO `policy` (`poid`, `poName`, `poImg`, `pocid`) VALUES
(1, '产业优惠政策', '/images/policy/policy1.jpg', 0),
(2, '公共服务优惠政策', '/images/policy/policy2.jpg', 1),
(3, '科技人才激励政策', '/images/policy/policy3.jpg', 2),
(4, '资金扶持政策', '/images/policy/policy4.jpg', 3),
(5, '招商扶持政策', '/images/policy/policy5.jpg', 4),
(6, '实施叠加扶持政策', '/images/policy/policy6.jpg', 6);

-- --------------------------------------------------------

--
-- 表的结构 `policy_content`
--

CREATE TABLE `policy_content` (
  `pocid` tinyint(4) NOT NULL,
  `pocName` varchar(128) DEFAULT NULL,
  `poc1` varchar(2000) DEFAULT NULL,
  `poc2` varchar(2000) DEFAULT NULL,
  `poc3` varchar(2000) DEFAULT NULL,
  `poc4` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `policy_content`
--

INSERT INTO `policy_content` (`pocid`, `pocName`, `poc1`, `poc2`, `poc3`, `poc4`) VALUES
(1, '产业优惠政策', '在耀州区注册并纳税的大数据企业，根据纳税情况实施阶梯型税收地方留成部分产业奖励政策。企业前三年\r\n                上缴税收区级留成部分（不含个人所得税区级留成部分）予以全额产业奖励，第四、第五年按区级留成部分的\r\n                85%予以产业奖励。奖励资金逐月兑现。', '在耀州区注册并纳税的大数据企业聘用的高管、特殊人才，实行个人所得税区级留成部分人才奖励政策。个人所得税\r\n                五年内区级留成部分全额奖励。', NULL, NULL),
(2, '公共服务优惠政策', '在耀州区注册并纳税的大数据企业，第一、二年入园办公场所租金全部补贴、第三、第四、五年办公场所\r\n                租金补贴50%。采取先交后补的办法，每半年兑现一次。', '在耀州区注册并纳税的大数据企业聘用的缴纳社保的全日制大学本科（含本科）以上学历毕业生，与企业签订\r\n                劳动合同后，每月给予500元的住房补贴。补贴期限为5年。', NULL, NULL),
(3, '科技人才激励政策', '鼓励入驻耀州区大数据产业园的大数据企业引进高科技人才。对取得省重大科技成果转化的科技创业人才，给予20\r\n                万元一次性奖励。对获得省级及以上重大科技成果转化的科技创业团队，给予一次性奖励50万元。', '支持科技成果转化。对获得省级重大科技成果转化项目的企业，给予一次性奖励50万元', NULL, NULL),
(4, '资金扶持政策', '在耀州区注册并纳税的大数据企业在泸深两市主板、中小板上市的经历企业100万元，在创业板上市的奖励企业50万', '对获得私募股权投资、创业投资机构投资的园区内企业，按照年度实际到位投资额的5%，给予不超过50万元的奖励', '鼓励企业主动引入其上下游实体企业集聚发展，每吸引一家具有独立法人资格的实体企业落户，且达到规上企业要求\r\n                的落地项目，给予入园大数据企业和实体企业各50万元奖励政策', '对通过金融机构借款筹集资金的项目，根据项目贷款实际发生额和同期金融贷款基准利率给予30%，贴息期限最多\r\n                不超过两年，单个项目的贴息额度不超过100万元。'),
(5, '招商扶持政策', '耀州区大数据产业园采取以商招商、委托招商等模式，企业通过招商入驻大数据产业园，达到线上企业要求，连续3个月\r\n            运营正常，一次性奖励招商企业或个人20万元。', '大数据企业、创新创业企业、电商企业招商引进由区经贸局进行认定。入驻大数据产业园的必要条件为在耀州区设立结算中心。', NULL, NULL),
(6, '实施叠加扶持政策', '《耀州区关于加快商贸服务业发展的实施意见》（铜耀字[2017]84号）与本优惠政策可以叠加享受。', '优惠持政策的实施范围为在耀州区注册纳税并入驻大数据产业园的大数据企业。优惠扶持政策的兑现实行申报制，\r\n                由企业向区经贸局提出申请，区经贸局组织税务、财政、人社等相关部门审核认定后，予以兑现奖励，奖励资金由\r\n                区财政列支。', '该优惠扶持政策从2018年执行，有效期5年（2018-2022年）', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `service`
--

CREATE TABLE `service` (
  `sid` tinyint(4) NOT NULL,
  `simg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `service`
--

INSERT INTO `service` (`sid`, `simg`) VALUES
(1, '/images/index/function1.jpg'),
(2, '/images/index/function2.jpg'),
(3, '/images/index/function3.jpg'),
(4, '/images/index/function4.jpg'),
(5, '/images/index/function5.jpg'),
(6, '/images/index/function6.jpg'),
(7, '/images/index/function7.jpg');

--
-- 转储表的索引
--

--
-- 表的索引 `advantage`
--
ALTER TABLE `advantage`
  ADD PRIMARY KEY (`adid`);

--
-- 表的索引 `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`);

--
-- 表的索引 `application_content`
--
ALTER TABLE `application_content`
  ADD PRIMARY KEY (`appcid`);

--
-- 表的索引 `big_img`
--
ALTER TABLE `big_img`
  ADD PRIMARY KEY (`biid`);

--
-- 表的索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comid`);

--
-- 表的索引 `company_content`
--
ALTER TABLE `company_content`
  ADD PRIMARY KEY (`comcid`);

--
-- 表的索引 `h_user`
--
ALTER TABLE `h_user`
  ADD PRIMARY KEY (`hid`);

--
-- 表的索引 `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`inid`);

--
-- 表的索引 `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`inid`);

--
-- 表的索引 `introduce_content`
--
ALTER TABLE `introduce_content`
  ADD PRIMARY KEY (`incid`);

--
-- 表的索引 `i_carousel`
--
ALTER TABLE `i_carousel`
  ADD PRIMARY KEY (`iid`);

--
-- 表的索引 `merit1`
--
ALTER TABLE `merit1`
  ADD PRIMARY KEY (`mid`);

--
-- 表的索引 `merit2`
--
ALTER TABLE `merit2`
  ADD PRIMARY KEY (`mid`);

--
-- 表的索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`nid`);

--
-- 表的索引 `news_img`
--
ALTER TABLE `news_img`
  ADD PRIMARY KEY (`niid`);

--
-- 表的索引 `new_content`
--
ALTER TABLE `new_content`
  ADD PRIMARY KEY (`ncid`);

--
-- 表的索引 `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`poid`);

--
-- 表的索引 `policy_content`
--
ALTER TABLE `policy_content`
  ADD PRIMARY KEY (`pocid`);

--
-- 表的索引 `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`sid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `advantage`
--
ALTER TABLE `advantage`
  MODIFY `adid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `application_content`
--
ALTER TABLE `application_content`
  MODIFY `appcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `big_img`
--
ALTER TABLE `big_img`
  MODIFY `biid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `company`
--
ALTER TABLE `company`
  MODIFY `comid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `company_content`
--
ALTER TABLE `company_content`
  MODIFY `comcid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `h_user`
--
ALTER TABLE `h_user`
  MODIFY `hid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用表AUTO_INCREMENT `industry`
--
ALTER TABLE `industry`
  MODIFY `inid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `introduce`
--
ALTER TABLE `introduce`
  MODIFY `inid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `introduce_content`
--
ALTER TABLE `introduce_content`
  MODIFY `incid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `i_carousel`
--
ALTER TABLE `i_carousel`
  MODIFY `iid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `merit1`
--
ALTER TABLE `merit1`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `merit2`
--
ALTER TABLE `merit2`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `nid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `news_img`
--
ALTER TABLE `news_img`
  MODIFY `niid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `new_content`
--
ALTER TABLE `new_content`
  MODIFY `ncid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `policy`
--
ALTER TABLE `policy`
  MODIFY `poid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `policy_content`
--
ALTER TABLE `policy_content`
  MODIFY `pocid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `service`
--
ALTER TABLE `service`
  MODIFY `sid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
