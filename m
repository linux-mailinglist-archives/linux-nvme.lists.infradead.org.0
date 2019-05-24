Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA4329EE8
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 21:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7P74bRqw00ocfYTgDwPZ1h54+Q/GJDcj9syGCttHuAs=; b=bk41DrPQY63aZQVlC3fZS6tiX
	0V0jUSAIPFNobhx29XVfRidcqwlfLeiBtaNZrlex9ufnTP3lqBtG7yRHQUlBE36/MuFLKgtzSGyFU
	HNAle+Or28IGET+yDcTLi5mETbVBmaUPzi6eojSGg2jtsaaJYxDVEcGUImA6y1uUW7MEXxVW983Us
	DBcpOGT+etuxixucC6/Jci+g2yl+bRLhPdw+Hb6OTMbiZpPGco85ArmgCBBQHx8za2VEglMqpN3rs
	dKwe5kkkjhSoH9ngUNRVnmCsMHvwrNTzyXs7hQwcTtUemYLCbvOK37s/TbMD4yyujyklivvdsrQzA
	wxuGmg2TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFef-0006xt-HD; Fri, 24 May 2019 19:15:01 +0000
Received: from mail-eopbgr20062.outbound.protection.outlook.com ([40.107.2.62]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFeY-0006wt-Rs
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 19:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4efLNZyZEb7dGNeYkQ+EGq7E97zmjiT2VXihwUsi0aI=;
 b=hlNyTbR5GYlilR+xkTDJBPPZF2do1g4aJqY5rLcJILBDLputfRMzcJthAAXnIXnUfqGFFwzBbywdD6nA2LZx7WtvwjQGjfep82AGmQB2BR97jpS+LqN61G0jnV9uwDhFl5PTVwBIQ4TJjg8PVDlQUStERRjEoyXawp11EwNCjWo=
Received: from HE1PR05CA0232.eurprd05.prod.outlook.com (2603:10a6:3:fa::32) by
 VI1PR0502MB4061.eurprd05.prod.outlook.com (2603:10a6:803:25::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.18; Fri, 24 May
 2019 19:14:50 +0000
Received: from VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by HE1PR05CA0232.outlook.office365.com
 (2603:10a6:3:fa::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Fri, 24 May 2019 19:14:49 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT041.mail.protection.outlook.com (10.152.19.163) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 19:14:49 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 24 May 2019 22:14:48
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 24 May 2019 22:14:48 +0300
Received: from [172.16.0.59] (172.16.0.59) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 24 May 2019 22:14:26
 +0300
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
 <20190524140753.GC15192@localhost.localdomain>
 <fe7bd12e-99ac-e038-f096-7697186051d7@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <ae685e0e-8ae2-dca3-844f-fd3147847447@mellanox.com>
Date: Fri, 24 May 2019 22:14:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <fe7bd12e-99ac-e038-f096-7697186051d7@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.59]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39850400004)(396003)(136003)(346002)(2980300002)(54534003)(189003)(199004)(65826007)(186003)(16576012)(6116002)(229853002)(2616005)(26005)(77096007)(54906003)(126002)(478600001)(316002)(50466002)(58126008)(110136005)(31686004)(6246003)(16526019)(11346002)(336012)(446003)(305945005)(476003)(5024004)(14444005)(53546011)(64126003)(2486003)(23676004)(67846002)(106002)(76176011)(47776003)(4326008)(65956001)(65806001)(70206006)(3846002)(70586007)(7736002)(2906002)(86362001)(81166006)(81156014)(36756003)(2870700001)(8676002)(31696002)(8936002)(356004)(486006)(5660300002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB4061; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 679efae1-5423-44f9-bbcb-08d6e07c178f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4061; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB4061:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB406170079A5869BCCBB254F7B6020@VI1PR0502MB4061.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: g69Vx/Il3GirrFSXtSt/96e+PI2y6X+i6yiXs2D5WPsMOCOaT9Bh2842+dKYzjChrD4h+ykVfNwudDx/Tl9ND+pqwvhYrH2U4S916HJCJBUzXeFmsj0SMDVvdyL1AQkH+UQ4KPyiimIvqgouya0riZ0MBzfp/brKU6D6VuoTMK85GV/NoZ+AxqXNjQFxVYVbnJw5qDfPf6v/ZU0400QeAmqbcl8sLhmdsTcK2uReKBMibyNDVwEnIkdLm6ITdfr63k3f4bG3fpoOfLJAZ+6TZkAuGl7QRUrinH7c+g1ZW5BjqJOLAev9wgCBuC6sOP3zh3urhh7Lj16AtKA3trVbpLKICS4SCeLu+cf5sVE9UVgpymxS2Z/X+JHHLXW0W3rkcyfiv/d1qrlRMYJE85xZ517wDXYPGJ7ImaZKKk/5G4I=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 19:14:49.2393 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 679efae1-5423-44f9-bbcb-08d6e07c178f
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_121454_905591_E7D7ABC7 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjQvMjAxOSA3OjE3IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+PiBZb3VyIHVz
ZS1jYXNlIHdhcyAiSSB3YW50IHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBteSBjb250cm9sbGVyIGZv
cgo+Pj4gL2Rldi9udm1lMG4xIi4gVGhpcyBpbmZvcm1hdGlvbiBpcyBhbHJlYWR5IGF2YWlsYWJs
ZSBpbiBudm1lIGxpc3QKPj4+IHN1YnN5cy4gV2h5IGRvIHlvdSBuZWVkIHRoZSBtcGF0aC1zbGF2
ZSBkZXZpY2VzIGxpc3RlZCBhcyB3ZWxsPwo+Pgo+PiBUaGUgY3VycmVudCAnbGlzdC1zdWJzeXMn
IGRvZXMgbm90IHNob3cgdXMgYW55IG5hbWVzcGFjZXMsIGFjdHVhbGx5Lgo+PiBZb3UgaGF2ZSB0
byBkaWcgdGhyb3VnaCBzeXNmcyBvbiB5b3VyIG93biB0byBzZWUgd2hpY2ggbmFtZXNwYWNlcyBi
ZWxvbmcKPj4gdG8gd2hpY2ggY29udHJvbGxlcnMsIGJ1dCBNYXggaGFzIGFkZGVkIGEgbW9yZSB1
c2VyIGZyaWVuZGx5IHdheSB0bwo+PiB2aWV3IHRoaXMuCj4KPiBJIHdhcyByZWZlcnJpbmcgdG8g
eW91ciBleGFtcGxlIGluIHRoZSBjaGFuZ2UgbG9nOgo+ICJGb3IgZXhhbXBsZSwKPiBJIHdhbnQg
dG8gZm9ybWF0IC9kZXYvbnZtZTBuMSBhbmQgL2Rldi9udm1lMG4yLCBzbyBJJ2xsIHJ1bjoKPgo+
IMKgICMgbnZtZSBmb3JtYXQgL2Rldi9udm1lMAo+Cj4gdG8gaGl0IHVwIGFsbCBuYW1lc3BhY2Vz
IGF0dGFjaGVkIHRvIG52bWUwLiBUaGUgcHJvYmxlbSBpcyB0aGF0IG52bWUwJ3MKPiBuYW1lc3Bh
Y2VzIG1heSBub3QgZXZlbiBiZSB0aG9zZSBkZXNpcmVkIG5hbWVzcGFjZXMsIGFuZCBub3cgSSd2
ZSBsb3N0Cj4gZGF0YSBvbiBkZXZpY2VzIEkgd2lzaGVkIHRvIHByZXNlcnZlLiIKPgo+IFlvdSBj
YW4gc3RpbGwgcnVuOiBudm1lIGxpc3Qtc3Vic3lzIGZvciBlYWNoIG5hbWVzcGFjZSBhbmQgdW5k
ZXJzdGFuZAo+IHdoaWNoIGNvbnRyb2xsZXIgY29udGFpbnMgZWFjaCB2b2x1bWUgc28geW91IGNh
biBmb3JtYXQgY29ycmVjdGx5Lgo+Cj4gSSBwZXJzb25hbGx5IHRoaW5rIHRoYXQgdGhpcyBkaXNw
bGF5LCB3aGlsZSBtb3JlIGluZm9ybWF0aXZlLCBpcyBub3QKPiBpbnR1aXRpdmUgdG8gcmVhZCwg
bWFpbmx5IGJlY2F1c2Ugd2UgZG9uJ3QgZ2V0IGEgZGlzcGxheSBvZiB0aGUgbWFwcGluZwo+IGJl
dHdlZW4gdGhlIG1wYXRoIGFuZCBzbGF2ZSBkZXZpY2VzLgoKU2FnaSwKCm15IG9yaWdpbmFsIHBh
dGNoIHNob3dlZCB0aGUgbmFtZXNwYWNlcyBhbmQgbm90IHRoZSBtcGF0aCBkZXZpY2Ugc2luY2Ug
SSAKZGV2ZWxvcGVkIGl0IGluIG5vbiBtcGF0aCBlbnZpcm9ubWVudC4KCkFmdGVyd2FyZHMsIEtl
aXRoIGFza2VkIG1lIHRvIHRlc3QgaXQgb24gbXBhdGggZW52IGFuZCBJIGNoYW5nZWQgbXkgVjEg
CnRvIHNob3cgdGhlIG1wYXRoIGRldmljZSAoaW4gY2FzZSBvZiBtcGF0aCBjb25maWd1cmF0aW9u
KSBhbmQgIklPLWJsZSIgCmJsb2NrIGRldmljZSBpbiBjYXNlIG9mIG5vbiBtcGF0aCBjb25maWd1
cmF0aW9uLgoKSSB0aG91Z2h0IHRoYXQgdGhpcyB3YXMgS2VpdGggaW50ZW50aW9uIGJ1dCBhZnRl
cndhcmRzIHdlIGFncmVlZCB0byAKcHJpbnQgdGhlICJJTy1ibGUiIG5hbWVzcGFjZSBpbiBhbGwg
dGhlIGNhc2VzIChBbHNvIENocmlzdG9waCBhZ3JlZWQgb24gCnRoYXQpLgoKU28gSSdsbCB1cGRh
dGUgdGhlIHBhdGNoc2V0IHRvIHNob3cgYWx3YXlzIHRoZSAiSU8tYmxlIiBuYW1lc3BhY2UgYW5k
IApub3QgbXBhdGggc2xhdmVzIHRoYXQgYSB1c2VyIGNhbid0IGRvIGFueXRoaW5nIGludGVyZXN0
ZWQgd2l0aCB0aGVtLgoKCj4KPiBNYXliZSBmb3Igc3RhcnRlcnMsIHdoZW4gcGFzc2luZyBhIG5h
bWVzcGFjZSBoYW5kbGUgdG8gbGlzdC1zdWJzeXMsIHRoZQo+IG91dHB1dCBzaG91bGQgZGlzcGxh
eSBvbmx5IHRoZSBzbGF2ZSBkZXZpY2VzIGZyb20gZWFjaCBjb250cm9sbGVyLgoKSSBzZWUgIm52
bWUgbGlzdC1zdWJzeXMiIGFzICJudm1lIGxpc3QiICh3aXRob3V0IGFueSBwYXJhbXMgcGFzc2Vk
KS4gSSAKZG9uJ3Qgc2VlIHdoeSBvbmUgd2lsbCBwYXNzIG5hbWVzcGFjZSBoYW5kbGUgdG8gaXQu
IG1heWJlIHdlIGNhbiBwYXNzIApzdWJzeXN0ZW0gaGFuZGxlL25hbWUgdG8gc2hvdyB0aGUgZGVz
Y3JpcHRpb24gb2YgdGhlIHRoaXMgc3BlY2lmaWMgCnN1YnN5c3RlbToKCm52bWUgbGlzdC1zdWJz
eXMgLW4gbnZtZS1zdWJzeXMzCgpvciBmb3IgdHJhbnNwb3J0Cgpudm1lIGxpc3Qtc3Vic3lzIC10
IHRjcAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
