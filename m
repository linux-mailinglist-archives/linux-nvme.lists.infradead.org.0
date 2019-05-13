Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85841BB07
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 18:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nu5B5DGiWn7MOfDTKegGKUKKsFXdgeJGYDB3sc5Pnvw=; b=qTOtDk108AismJ
	u3ysitSPZEjf3crQYLoZKddAjNDSqQDFLivoimGeTkPRn3IMDF8ZBarT+aySGnzeVvCWn/NkwHIP+
	Xc4pSCYVLqmCNLN/wHDAXkLPrwTkRl4ltIFxqglYtjo450LClD/KUQASTM/nd2qi62QhO4lVzI/EV
	NsOCg3zL/TPT3Lhf1l51vMDtOGRHDSUtdpbDFlZJqT4P20dnNAL+q4SNR9Wk0hO6YGWFq7c5SJGui
	uQ64P2b76W5agkkGR69zVA1AjPO1i0AB3dlYmG+8UCXUpuSaG+iROKsOnf6LGxIhqbWOvk6t4I3fB
	x4cADV3VdCV2qyy7qMWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDs2-0007uw-Nx; Mon, 13 May 2019 16:32:10 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDrx-0007uS-Lu
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 16:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557765126; x=1589301126;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=z05y7gDPYvy9u8Il2WQ+pu974BAnSYJWGHLb42vS2tY=;
 b=U5J9hKvBycDi4kClO9KS/n56/Bm61nc7zcjwj1akKZ7wNWzeTisj9FA3
 gAhX9pEcmj8tOyt4bjVxO+wLKSm1lhOKXpeLylVoyfcapSupiCbCTyzma
 hoEftQ0pJVzc39Hh6vDIi5MTFgvEOLp3DxX5QH0YXtKxe0FWQVA1AOPyL
 KZyCKP1wZGG+czD1uZWiDnTul1J9HC/JWuJyORypI01m5GgGQKrC2g8nt
 Jeuu60Ih+q16pxB4htbtxJjsY4n99KcmiCyGHUNN5j5Ob3DZj9a1tNtV5
 73GQ1S3jHke6brpaq8fy2879ijHGMTe8n8lZfEeuKbVqPCC11zTMlRKpV Q==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="108159259"
Received: from mail-bl2nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.54])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 00:32:04 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gMN1UB5Cl9Gv0NdbJxJDdn++o/48uwT4o4bmn/HUEU=;
 b=m7HeYY1g2WpwqaVsMvmZ++dtILywc1DejaI9W1Q87Nonftfm6StPcRBm8G2O2gBkkeVE4115fUC11wGhmo6S7aJILwZ71LyIKmcTXToM0puPOLcgV8aNRcg8jV2fIecvGqFwrRqyGKu7qYlCuoYy6dz8YVexthD38v044kaKTa0=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5312.namprd04.prod.outlook.com (20.177.255.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Mon, 13 May 2019 16:32:02 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:32:02 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] nvme-core: trace discovery log change AEN
Thread-Topic: [PATCH] nvme-core: trace discovery log change AEN
Thread-Index: AQHVBEKV1KqUHgm350OO7R3IAUlU/A==
Date: Mon, 13 May 2019 16:32:01 +0000
Message-ID: <SN6PR04MB452729CE574409342C30978F860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
 <20190513132401.GA2661@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e79ac21-2560-4574-2c7d-08d6d7c08737
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5312; 
x-ms-traffictypediagnostic: SN6PR04MB5312:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5312D9996B095D86B5D2CAFF860F0@SN6PR04MB5312.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(136003)(366004)(396003)(346002)(376002)(39860400002)(189003)(199004)(53936002)(9686003)(33656002)(2906002)(25786009)(4744005)(6246003)(55016002)(81156014)(81166006)(8676002)(4326008)(6916009)(186003)(8936002)(6116002)(99286004)(52536014)(76176011)(3846002)(446003)(68736007)(476003)(486006)(76116006)(6436002)(66946007)(91956017)(64756008)(66556008)(66476007)(73956011)(66446008)(7696005)(5660300002)(229853002)(74316002)(86362001)(316002)(478600001)(26005)(102836004)(6506007)(53546011)(71200400001)(305945005)(14454004)(7736002)(71190400001)(14444005)(66066001)(256004)(72206003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5312;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tx6JVlDNNEKFKDG6Chphae+CA4o0/shoseZ4/1qZxSKlIDYx6C72d9khgVvHnhJ43zVRn7qpnfGi5PRnI6WnaX4P9mMrhJ6UiEkdkNOwbAk9xNvMXevuC9HPOglNG8nXr5Yxi5wxwiYWZvkEjvn0tfF2DutqWHWmblm7Pj9sJELw9Qnfasx+OCVII8hFBJrCBGclLIMVEiXYZZGzVKEw305cNxk0FdEpFzlq1Sf/OeZ52D+f2Cw92jAj8ucXC8XhmYgFrOwKOAtKW2KQkGzp8lNDu0tYyrlgmsG3E9WTk+LxqThqIhPHZ5mTUSqXlAdq4jmk28uy5YCyjEFOdcKDZlNDYvLvBf751YyZQEPUjqli/XUWe2o2xJXEVj2Fl8E6oBALGGZtoeD4wPo6qax+T+GnecoGShtX+7fV8WsWkC4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e79ac21-2560-4574-2c7d-08d6d7c08737
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:32:02.0065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_093205_845432_1B6E88C8 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/13/2019 06:24 AM, Christoph Hellwig wrote:
>>   		trace_nvme_async_event(ctrl, aer_notice_type);
>>   		queue_work(nvme_wq, &ctrl->fw_act_work);
>>   		break;
>> +	case NVME_AER_NOTICE_DISC_CHANGED:
>> +		trace_nvme_async_event(ctrl, aer_notice_type);
>> +		break;
>>   #ifdef CONFIG_NVME_MULTIPATH
>>   	case NVME_AER_NOTICE_ANA:
>>   		trace_nvme_async_event(ctrl, aer_notice_type);
>
> What about just moving the trace_nvme_async_event call before the
> switch statement?
>

That is something I avoided since for default case we don't want to 
trace but dev_warn.

But seems like we are okay with trace and dev_warn I'll send a V2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
