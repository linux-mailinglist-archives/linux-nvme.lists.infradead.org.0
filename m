Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CCD252C1
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 16:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8y2ZFVjRLM1m/PxmXgbBkItsoyImBjG+Gre4pZ17N3U=; b=LTTJiXt+QKtmFH6NFCd16b3X5
	sIvJWQhKIaln1Sdsz/Bhf36gaq1Kcz5LmRm6DQKqiUNeIwE4XOOhb/fB/WyhbgjJ7EGO9s+To0E21
	hLA4Y8KUoU3kjRHXX1MQBQoOO3GV/Q5TmSd4Uut53Xqkfmw0kHPik4I+dT55JNYrIdQY/tL95QKrr
	xQihxCvrn9ZOXKIRCBubCumHH7KssyhiDJsL5VTRfEpqXNTDb+BLnR0EpouTFfDaBjEmvCJGjAX0H
	o1fb4DtO9aJhIAqhWZm+Vw1w0Rxrp2f+yVVaiYqgfXRIPSy9MBcT+lLuZsLh4SMGuHzggHQKCqJQf
	ZBJbbn5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT67d-0002i6-IW; Tue, 21 May 2019 14:52:09 +0000
Received: from mail-vi1eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60f]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT67X-0002h6-U8
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 14:52:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iF0loVjeO8l6DdnB6j6kP0MFlUZZFoCQzUBZV7hLO4o=;
 b=PT2jo6lw3Ual/JH0qwT1QBfp+xGnlqLalIGgf2OSHAsWdTWwCFsy2/0qW2USE6XgmPTECuLOPdLySnu7WopIZiFM9vYCIuoXwYHgfodXZZTekqMOlrOYo8sr1XPtksbT+tBe6uexLwgjHMbyJzeag3cW9I1+7ICLEKh0yJbEH/k=
Received: from DB7PR05CA0051.eurprd05.prod.outlook.com (2603:10a6:10:2e::28)
 by AM0PR0502MB4050.eurprd05.prod.outlook.com (2603:10a6:208:a::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Tue, 21 May
 2019 14:52:00 +0000
Received: from VE1EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by DB7PR05CA0051.outlook.office365.com
 (2603:10a6:10:2e::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.17 via Frontend
 Transport; Tue, 21 May 2019 14:52:00 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT054.mail.protection.outlook.com (10.152.19.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 14:51:59 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 17:51:58
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 17:51:58 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 17:51:25
 +0300
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Keith Busch <kbusch@kernel.org>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <55f15756-0385-f9c4-a916-079a6b12a5c1@mellanox.com>
Date: Tue, 21 May 2019 17:51:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521143540.GB1639@localhost.localdomain>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(136003)(396003)(2980300002)(199004)(189003)(186003)(4326008)(77096007)(26005)(4744005)(36756003)(6246003)(2870700001)(2906002)(31696002)(16576012)(58126008)(5660300002)(16526019)(6116002)(3846002)(64126003)(86362001)(305945005)(7736002)(31686004)(23676004)(2486003)(81156014)(229853002)(106002)(53546011)(54906003)(478600001)(70586007)(336012)(50466002)(81166006)(11346002)(65826007)(486006)(47776003)(356004)(446003)(8676002)(476003)(67846002)(65806001)(8936002)(316002)(65956001)(2616005)(76176011)(70206006)(6916009)(126002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0502MB4050; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db9bdacd-5c6b-4329-da0a-08d6ddfbe0f7
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM0PR0502MB4050; 
X-MS-TrafficTypeDiagnostic: AM0PR0502MB4050:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB40506170A0AB726F10BA5C71B6070@AM0PR0502MB4050.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Bac2Cwzws07gr6MVggACVYcjDHfGwqz2nLE+hkwZtq0vWyvUkOnU3N+0cTLFWtNaOrMMl9bKWpC/q2tsco2E7aMlsmh7YWwdgqP4lMqvxRNwoEywsdK6qJNWgfKsI0NfyQq7sx0IIJJnbBrh/KNJ5kn3vM1Cj4MMfW23iUV5sHWFPAwkjAEHHP7TK3qmP80lLylNKun9nCeZ1HzztM9ZfAzzUH3FCT0AwdDexvTOeEJdlGe67HUBsd3RWmfLYRqB1bpCeMU8rP3N8HqQ4zk30XWlsPYcgJ1LBXC/A1XilVJE7er2xj2k3aT2i05qdbeb2yreIMZbTFONDZomjesx8zp50NPG6Ch5oxzXqKr+NEik0OeN8GpCeaRglm8tH6Tpgpm7k5g1UGzLl7H6HDoDBVwC4aRNgrxnRGxr7TVnuSg=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 14:51:59.7160 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: db9bdacd-5c6b-4329-da0a-08d6ddfbe0f7
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB4050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_075204_023782_DF2D6C82 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjEvMjAxOSA1OjM1IFBNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBPbiBUdWUsIE1heSAy
MSwgMjAxOSBhdCAwMjo1NDo1M0FNIC0wNzAwLCBNYXggR3VydG92b3kgd3JvdGU6Cj4+IG1heWJl
IHdlIGNhbiBpbXByb3ZlIGl0IGFuZCBwcmludCBhbHNvIHRoZSBuYW1lc3BhY2UgZHVyaW5nIHRo
ZSAibnZtZQo+PiBsaXN0LXN1YnN5cyIgY29tbWFuZC4KPj4KPj4gc29tZXRoaW5nIGxpa2U6Cj4+
Cj4+IFtyb290QHNlcnZlcjUwIH5dIyBudm1lIGxpc3Qtc3Vic3lzCj4+IG52bWUtc3Vic3lzMCAt
IE5RTj10ZXN0c3Vic3lzdGVtXzAKPj4gXAo+PiAgIMKgKy0gbnZtZTAgcmRtYSB0cmFkZHI9MTEu
MjEyLjE0MC4xNDYgdHJzdmNpZD00NDIwCj4+ICAgwqBcCj4+ICAgwqAgKy0gbnZtZTBuMSBTTj1j
ZjhiYmZmNjYxNTAyYzUxIE1vZGVsPUxpbnV4Cj4+ICAgwqAgKy0gbnZtZTBuMiBTTj1jZjhiYmZm
NjYxNTAyYzUxIE1vZGVsPUxpbnV4Cj4+Cj4+Cj4+IGFuZCB3ZSdsbCBnZXQgc3Vic3lzL2N0cmwv
bnMgcmVsYXRpb25zIGluIDEgY21kLgo+Pgo+PiB0aG91Z2h0cyA/Cj4gWWVzLCB0aGlzIGlzIHZl
cnkgdXNlZnVsISBJJ2QgbGlrZSB0byBhZGQgdGhpcyBhcyBzb29uIGFzIHBvc3NpYmxlLgo+IERv
IHlvdSBoYXZlIGEgcGF0Y2gsIG9yIGlzIHRoaXMganVzdCBhbiBleGFtcGxlPyAgVGhlIG9ubHkg
Y2hhbmdlIEknZAo+IHJlY29tbWVuZCBpcyByZW1vdmUgU04gYW5kIE1vZGVsIHNpbmNlIHRob3Nl
IGFyZSBjb250cm9sbGVyIHByb3BlcnRpZXMKPiByYXRoZXIgdGhhbiBmcm9tIHRoZSBuYW1lc3Bh
Y2UuCgpUaGlzIGlzIGp1c3QgYW4gZXhhbXBsZSBidXQgSSBjYW4gcHJlcGFyZSBzb21ldGhpbmcg
aW4gYSBjb3VwbGUgb2YgZGF5cy4KCkxldCBtZSBrbm93IHdoYXQgZG8geW91IHByZWZlciAoYW5k
IHdoaWNoIGF0dHJzIHRvIHByaW50IHRoZXJlKQoKLU1heC4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
