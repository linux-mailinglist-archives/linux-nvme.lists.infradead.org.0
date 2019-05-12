Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8111ACC5
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=MxxOC7E15xuj5ZnRRmb9IL7Yi7yRcGtoi87I3kDwcbA=; b=bbi9Omqn7MPtK3
	1iBPevhDZdGxR2ol3WkQP7ztL2tEaXwJ++n2rhm+sB78hWIp+3lxhERkjdTu/lSaNbby/ug8AgiWk
	5wbIH6jsyUNhoMMxt5mLK3BCrb9nCxUNdPTJX16qjRu8FD6T3P2fcjJy/9SHEDhL8kf/VozjujBnO
	vcz4jsb1uyGHXHvYD70lHOMwELJ2FBgOJaX+zuiNJmjOp8CJUamZSk8pGbTYhuPJ+RiczyrH0ko4Q
	4cNdpQOkcDAzNRK8vnA/yTtPrzRpCUOuXGKg1BCsy/cSXQDKufP9QtNtfi1l/hyQDcZwuxpfXhP2Q
	PCxTIbKVqQQvtEhEMZzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqK0-0004HP-N3; Sun, 12 May 2019 15:23:28 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqJu-0004H2-Tk
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557674609; x=1589210609;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=73DJezd5GpZrNBS6CupZa1V+7eebdonoVVdnA9Fzhkc=;
 b=eWmS/vhXctldOxLowaEOoEloD/bZBzb7im0zut2igo0BKlM8mEU05hoM
 51A9hslsHo0M99/I/uC2GJidKtCiiKvw8QNFEjFXipVVyOG3qzsxR9Drb
 WFA4vp1Lqxux3uZWHhXsP3Oi0Bo7h/Rur8E1cdAkvovqlP+AnUSAwNfG5
 oC+UYrX2mReDVYf67HueoN0O0tnaJxla7By8t7N9yF8VkfqGvEoz44ZC8
 Wc1J/ny1nvgZ1C3XxMjZROvis4e0C9TcqVvCpa9hyC2gnaMP3zPFoMwQa
 E4SZVqFmXIeXm01ptcUkQ/MIa38Hb5MK0zA6NJvM6Xw+PUl8InHd+UX4P g==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207445927"
Received: from mail-sn1nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.54])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 23:23:28 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0JGtMdO3hxl6jHj2xakoPNpIHx0Yu1UxelfArcKXol4=;
 b=czD+mU9VjcFI98dd0Fa3lgFOe4DQcFk0yXXKMRiF3iNkw+DC0ybnKfo0baeOwNzWhnRrAoegRBtrSuC0cZ3JBImouaR4T6oKzXMu3xbpiJyHTtctG04K+Tikt06O+m2jBZGk/rJbyRW3p/U2FqUsMHoPmrGyJ0W6yPAtcYRgTZY=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5422.namprd04.prod.outlook.com (20.177.254.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Sun, 12 May 2019 15:23:20 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Sun, 12 May 2019
 15:23:20 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/2] nvme-fabrics: Remove unused argument
Thread-Topic: [PATCH 2/2] nvme-fabrics: Remove unused argument
Thread-Index: AQHVB/+IHbli+LEaWkKsxL03w3YExA==
Date: Sun, 12 May 2019 15:23:20 +0000
Message-ID: <SN6PR04MB4527A2971F94EA912B5214A6860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-3-minwoo.im.dev@gmail.com>
 <SN6PR04MB4527A361940ECE60AFE846E5860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
 <35242331-5597-0cb5-e72b-4ceedca71f4c@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:f0c0:87f3:c23f:eddc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94eb9b35-3d55-443e-8986-08d6d6edc45d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5422; 
x-ms-traffictypediagnostic: SN6PR04MB5422:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5422B62F219F645113309131860E0@SN6PR04MB5422.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(39860400002)(346002)(136003)(376002)(199004)(189003)(8936002)(7736002)(229853002)(25786009)(6116002)(6436002)(76116006)(91956017)(73956011)(66946007)(305945005)(86362001)(52536014)(6246003)(316002)(256004)(5660300002)(4744005)(53936002)(4326008)(71190400001)(71200400001)(99286004)(478600001)(486006)(7696005)(76176011)(74316002)(102836004)(186003)(68736007)(14454004)(55016002)(2501003)(9686003)(2906002)(66446008)(64756008)(66556008)(66476007)(6506007)(54906003)(446003)(33656002)(46003)(476003)(53546011)(81166006)(8676002)(81156014)(72206003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5422;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: B03W7ZuclQ38J0+5ZsE9faPTPOyrYCmriRMEx3BkgE6mkxn0XmGyRmdBgezFL+KNHoBQwCrjzAT/2/2KaMjerBGs5cL7yBc2HFUXLcAXlOE9SwsyaMvk9Go40WB1KMWdW1VvarPo6O3g16SH94Tra8j3O29WolkpoNZG9LFcoofU3KkVqyIfQw2KRiHGPf+YRLo+fdGv00COFmyF2qQS+dvHi7Onf9dbNR0HEpZJGs1H/cYXKtqXge/LoxyV3JItfCKALCSxYzCJggl2LlGliZkGQbEMoWvnrGJUpKV+8xwl4nSjNGNv35a5cfJ4qoXtNR/MNKorLrzsjsGJOMdaaOBwIYvNjFHUjERaP86ugG6iqfRJbdPcY8H9Wtz/4EAwuKIpHUmBA7Bi6CJgFxIja0+NCebwXLeOPlLTsG50IfA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94eb9b35-3d55-443e-8986-08d6d6edc45d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 15:23:20.8430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082323_021592_ABD77948 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>


On 5/11/19 3:05 PM, Minwoo Im wrote:
>> Variable "count" use removed by  any commit ?
>>
>> Or it is been like that since the introduction of this function ?
> If you do "blame" with the first line of this function, you can see the 
> count has been introduced without being used at all.
>
> Commit 07bfcd09a ("nvme-fabrics: add a generic NVMe over Fabrics library")
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
