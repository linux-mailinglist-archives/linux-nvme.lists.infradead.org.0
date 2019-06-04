Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7DA34518
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 13:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yR/p/5lVIpPOfAFOrp0VaQ646aje2bDtFeBfW4iUbiQ=; b=XKb4kcgJDaNzrMdzIozrD30nn
	C1FsCLs0lweh/XM8zQPYrE3mqFNpZGmG0gqbrYNW8n8MQnzz0oaeoiArL/eW89Kopxwxscr+2oVLQ
	NOldIQV+icyWBPkpke0S+mTU3ILca7JBvy7bJGQ9jSoniP+Qqufl3ZbKkDYxMbj/9S+GoDfmeFaNh
	6K/fltU3WrNwCugnaChTtaN10pAZ0/myxzeL7mNLCxzV1OzQLzeT09PFDyTXJr0xh3Ag1PDVnlLXF
	ZRUV0hodw/Th1Q4aYHz3mtL4zlNQPeidr0fn2MUavwqPQFnb7NRCVsexTetLc/ApxP4KGw2TcZ5dd
	EIMJLKYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7MN-0001sg-As; Tue, 04 Jun 2019 11:12:07 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7MI-0001sK-49
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 11:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vgpdCgIf6JKtqFl5QhqyiFfCwBZ3ndnSO9Lmx2+bPo=;
 b=GwrGkTDOwRTErEqmmqBtF+kE3zQX2o3XPNIIt369Fka48sFTYp+05yiqmvlkkoinFTzZ/OlFBtvHouAfwI47C/sPx6ufR6N9Bt/IFwf+y+DYHcrEN4gGngc/zZrgifPjArAI8tje3HpleoanDdvXxP2N2xRK/5ivGc65YFOFWGA=
Received: from HE1PR0501CA0027.eurprd05.prod.outlook.com (2603:10a6:3:1a::37)
 by AM0PR05MB6420.eurprd05.prod.outlook.com (2603:10a6:208:13f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.22; Tue, 4 Jun
 2019 11:11:57 +0000
Received: from AM5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by HE1PR0501CA0027.outlook.office365.com
 (2603:10a6:3:1a::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.18 via Frontend
 Transport; Tue, 4 Jun 2019 11:11:57 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT003.mail.protection.outlook.com (10.152.16.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1943.19 via Frontend Transport; Tue, 4 Jun 2019 11:11:56 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 4 Jun 2019 14:11:56
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 4 Jun 2019 14:11:56 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 4 Jun 2019 14:11:54
 +0300
Subject: Re: [PATCH] Revert "nvme-rdma: remove redundant reference between
 ib_device and tagset"
To: "Harris, James R" <james.r.harris@intel.com>, Sagi Grimberg
 <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
Date: Tue, 4 Jun 2019 14:11:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(39860400002)(376002)(346002)(2980300002)(199004)(189003)(126002)(14444005)(2906002)(106002)(11346002)(36756003)(2501003)(6116002)(70586007)(53546011)(58126008)(5660300002)(54906003)(110136005)(446003)(70206006)(2870700001)(50466002)(8676002)(81156014)(81166006)(67846002)(2616005)(3846002)(7736002)(8936002)(31686004)(305945005)(65826007)(4326008)(336012)(31696002)(508600001)(229853002)(86362001)(65956001)(16576012)(316002)(65806001)(23676004)(64126003)(186003)(486006)(2486003)(26005)(476003)(77096007)(76176011)(16526019)(6246003)(356004)(47776003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB6420; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba023d18-49f8-4c07-98ce-08d6e8dd752a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR05MB6420; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB6420:
X-Microsoft-Antispam-PRVS: <AM0PR05MB64202F82E4054F272904848FB6150@AM0PR05MB6420.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 0058ABBBC7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Cm+RbGg3nVvk370djN6cX13pvxTi7KmpfY0rBm+jrGqK8YJHByO00yQS363v1NUdY9+PmeldI2CW2JdFbcQVXnVzSpQUM4xPYi4x3yxXLLRIYwRPlsm3LpPFM3y9AQHq6+6ryNIMBIfqSnBpuMTNFSdgq2z+XkJ8px+fzsCsDbBAAuVWay8RDumaxhCCRpaDn/+j/ugQvDKvNZmdsBbGywZ71evylWiOtMjncMldSymeAShW8FVvWSdUcamkIi39iFOBuJQUuRvnpqWBcywnlKZrSsEMlkTPXqOgOnqKqgzAGFIkFeATyNMYRwhJG+1Q/wQt3Uhx1+Q1zPUJCEqJIpqBbvB118pMbzXHxyyzwgDdcaArCBHucucNby67WVYTPk3sUro6hhabsqUEJWLFI5S45BxAw9H1CO2WX+Inv74=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2019 11:11:56.8474 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba023d18-49f8-4c07-98ce-08d6e8dd752a
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_041202_238321_979E819B 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgU2FnaS9DaHJpc3RvcGgsCgpwbGVhc2UgZG9uJ3QgcmV2ZXJ0IHRoaXMgY29tbWl0IHlldCBv
biB0aGUgYnJhbmNoLiBJJ20gc2VuZGluZyBhIGZpeCB0byAKaXQgaW4gMSBob3VyIGZvciBKYW1l
cyBhcHByb3ZhbC4KCi1NYXguCgpPbiA2LzQvMjAxOSAyOjI2IEFNLCBIYXJyaXMsIEphbWVzIFIg
d3JvdGU6Cj4KPiDvu79PbiA2LzMvMTksIDQ6MTQgUE0sICJTYWdpIEdyaW1iZXJnIiA8c2FnaUBn
cmltYmVyZy5tZT4gd3JvdGU6Cj4KPiAgICAgIAo+ICAgICAgPiBUaGlzIGNvbW1pdCBjYXVzZWQg
YSBrZXJuZWwgcGFuaWMgd2hlbiBkaXNjb25uZWN0aW5nIGZyb20gYW4KPiAgICAgID4gaW5hY2Nl
c3NpYmxlIGNvbnRyb2xsZXIuCj4gICAgICA+Cj4gICAgICA+IC0tCj4gICAgICA+IG52bWUgbnZt
ZTA6IFJlbW92aW5nIGN0cmw6IE5RTiAidGVzdG5xbjEiCj4gICAgICA+IG52bWVfcmRtYTogbnZt
ZV9yZG1hX2V4aXRfcmVxdWVzdDogaGN0eCAwIHF1ZXVlX2lkeCAxCj4gICAgICA+IEJVRzogdW5h
YmxlIHRvIGhhbmRsZSBrZXJuZWwgcGFnaW5nIHJlcXVlc3QgYXQgMDAwMDAwMDA4MDAwMDIyOAo+
ICAgICAgPiBQR0QgMCBQNEQgMAo+ICAgICAgPiBPb3BzOiAwMDAwIFsjMV0gU01QIFBUSQo+ICAg
ICAgPiAuLi4KPiAgICAgID4gQ2FsbCBUcmFjZToKPiAgICAgID4gICBibGtfbXFfZXhpdF9oY3R4
KzB4NWMvMHhmMAo+ICAgICAgPiAgIGJsa19tcV9leGl0X3F1ZXVlKzB4ZDQvMHgxMDAKPiAgICAg
ID4gICBibGtfY2xlYW51cF9xdWV1ZSsweDlhLzB4YzAKPiAgICAgID4gICBudm1lX3JkbWFfZGVz
dHJveV9pb19xdWV1ZXMrMHg1Mi8weDYwIFtudm1lX3JkbWFdCj4gICAgICA+ICAgbnZtZV9yZG1h
X3NodXRkb3duX2N0cmwrMHgzZS8weDgwIFtudm1lX3JkbWFdCj4gICAgICA+ICAgbnZtZV9kb19k
ZWxldGVfY3RybCsweDUzLzB4ODAgW252bWVfY29yZV0KPiAgICAgID4gICBudm1lX3N5c2ZzX2Rl
bGV0ZSsweDQ1LzB4NjAgW252bWVfY29yZV0KPiAgICAgID4gICBrZXJuZnNfZm9wX3dyaXRlKzB4
MTA1LzB4MTgwCj4gICAgICA+ICAgdmZzX3dyaXRlKzB4YWQvMHgxYTAKPiAgICAgID4gICBrc3lz
X3dyaXRlKzB4NWEvMHhkMAo+ICAgICAgPiAgIGRvX3N5c2NhbGxfNjQrMHg1NS8weDExMAo+ICAg
ICAgPiAgIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YTkKPiAgICAgID4g
UklQOiAwMDMzOjB4N2ZhMjE1NDE3MTU0Cj4gICAgICA+IC0tCj4gICAgICA+Cj4gICAgICAKPiAg
ICAgIFNob3VsZCBhZGQ6Cj4gICAgICBSZXBvcnRlZC1ieTogSGFycmlzLCBKYW1lcyBSIDxqYW1l
cy5yLmhhcnJpc0BpbnRlbC5jb20+Cj4KPiBUaGFua3MgU2FnaS4gIEkgY2FuIGNvbmZpcm0gdGhh
dCByZXZlcnRpbmcgdGhpcyBwYXRjaCBlbGltaW5hdGVkIHRoZSBrZXJuZWwgcGFuaWMgb24gbXkg
c3lzdGVtLgo+ICAgICAgCj4gICAgICA+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNh
Z2lAZ3JpbWJlcmcubWU+Cj4gICAgICAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
