Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBBA24C03
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 11:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LLL/mixmRw1OWWYoaySR5+tYTXXbdrzOrOMx21Thki4=; b=vBB3FTN9k/ATWrfEAp200mtu5
	OVkGW5petIYCzunCqCyoMUixAKM31kwG9wt4ypsB9Coc0W0IcwzER+TVJzqbvgvX5NnXhAXFy14tb
	SJZtKd71/iwBHYq82tNxxi56loI4QU+qhrcSTu1x+T+yukRbrnjHyXleVd7d9Kl3VXHvt6mtlZD8y
	7+fX1EA+QaVtWAcf4u7MZN+0bU67COmAPiFmcqCH0hrMlqdlYnmX8z749qeJG63NH9V2TmJbA1dl0
	vj7RpWlHPaeio3q386BW+Xd9j2v4+yqBS0MU8DH7N2TKJHcvuYpHn1ij7/FX5l9NMdUxVx0WF1vyJ
	3k4xz5+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1UD-00079F-GP; Tue, 21 May 2019 09:55:09 +0000
Received: from mail-ve1eur03on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::613]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1U6-0006dD-CI
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 09:55:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1ssxlH9PD4i0kzYmzOIQqB4PNhPPEkPevU4tKCxDks=;
 b=aWriOLFwSxV/HRpmgFHsdIOLhDlsyn/dczKbNCfaTzcim5HTVx7d8DErSIQJib76/9FzAy/zk3gmTRWHvo2bTZJi3x0S9QcaYVfymYcF73GluNLjuFBqufttYEYFW7sfWNxT65Ee0d/87NwSgGa5eK7aEP8Sx8UKAk/IFQSYv60=
Received: from AM6PR0502CA0011.eurprd05.prod.outlook.com (2603:10a6:209:1::24)
 by HE1PR0502MB3019.eurprd05.prod.outlook.com (2603:10a6:3:d9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Tue, 21 May
 2019 09:54:57 +0000
Received: from VE1EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by AM6PR0502CA0011.outlook.office365.com
 (2603:10a6:209:1::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Tue, 21 May 2019 09:54:57 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT012.mail.protection.outlook.com (10.152.18.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 09:54:56 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 12:54:55
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 12:54:55 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 12:54:54
 +0300
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: "Martin K. Petersen" <martin.petersen@oracle.com>, Keith Busch
 <kbusch@kernel.org>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
Date: Tue, 21 May 2019 12:54:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <yq17eaqbg4c.fsf@oracle.com>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(39860400002)(396003)(2980300002)(189003)(199004)(356004)(478600001)(5660300002)(26005)(31686004)(16576012)(336012)(47776003)(50466002)(65956001)(65806001)(77096007)(2906002)(70206006)(58126008)(110136005)(8936002)(23676004)(54906003)(316002)(229853002)(2870700001)(36756003)(7736002)(65826007)(67846002)(2486003)(53546011)(64126003)(81166006)(81156014)(8676002)(76176011)(106002)(6116002)(3846002)(86362001)(70586007)(6246003)(126002)(305945005)(31696002)(446003)(486006)(186003)(4326008)(2616005)(16526019)(11346002)(476003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3019; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56c76b8d-b57a-4f64-bdfe-08d6ddd2618d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3019; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3019:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB30191744CCCD1B4D32BF6F6FB6070@HE1PR0502MB3019.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 9kejpb3xUFciuj7HlFtOO6m782+EQG0GWQMfn+6UC5XIc85+eXoZnZFShHf9a/H3QI7S6G627Voq9o2ZGwsYen/m9CRio2xRuKfz/lsQFpzLH7xpsdLDl+yVVaSuMRzZf1vTZID2Buyr4S82bY3gHKXnJbnXXggEINnAwW1FuVF57pApttWnmJsV4MnAu5X0uSLKwHZcBrLLvjA5cx+pUgIlzk4msJQdogBrHE2TSJrjOg4A0zcLmHwQFwuPPS/1xieIv1VLbX340i+UsqpcvpZ8/uW2g6JfUjhIaasPrwh/x+2BUkQt8kgTdg8gT62D3IDpv1Z6uuVpLyEkiuyvWhp/Fq4c3ZzZRbTYMUvilO7NmxkRGBzOIvbwU6GrkPtUQlGA3cereS/+J0sg5iBjMyLJ2L+qRPnIZSvSVkzyl3M=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 09:54:56.5991 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c76b8d-b57a-4f64-bdfe-08d6ddd2618d
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_025502_506852_7CEE97AC 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:613 listed in]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTWFydGluLAoKT24gNS8xNi8yMDE5IDU6NTggUE0sIE1hcnRpbiBLLiBQZXRlcnNlbiB3cm90
ZToKPiBLZWl0aCwKPgo+Pj4gdG8ga2VlcCBpbiBsaW5lIHdpdGggdGhlIG90aGVyIHN5bWxpbmtz
IGluIC9kZXYvZGlzay9ieS1pZC8gVGhlCj4+PiBjb250cm9sbGVyIHN5bWxpbmtzIGRvbid0IHJl
YWxseSBmYWxsIGludG8gdGhpcyBjYXRlZ29yeSwgdGhvdWdoOyB3ZQo+Pj4gY291bGQgY3JlYXRl
IGEgJ252bWUnIHN1YmRpcmVjdG9yeSAobXVjaCBsaWtlIE1EIGRvZXMpLCBhbmQgY3JlYXRlCj4+
PiBzeW1saW5rcyBpbiB0aGVyZS4KPj4gQ29vbCwgSSB3b3VsZCBhbHNvIGxpa2UgdG8gc2VlIHBl
cnNpc3RlbnQgY2hhciBkZXYgbmFtZXMsIGJ1dCBJIHdhc24ndAo+PiBzdXJlIHdoZXJlIHRoZXkn
ZCBnby4gSWYgd2UgY2FuIG1ha2Ugb3VyIG93biAnbnZtZScgc3ViZGlyZWN0b3J5LAo+PiB0aGF0
J2QgYmUgZ3JlYXQuCj4gU2hvdWxkIGJlIGZpbmUuIEFzIGxvbmcgYXMgL2Rldi9kaXNrIHN0YXlz
IGludGFjdC4KPgo+IEl0IHdvdWxkIGJlIHJlYWxseSBuaWNlIHRvIGhhdmUgYSBjbGVhciBpbmRp
Y2F0aW9uIG9mCj4gc3Vic3lzL2NvbnRyb2xsZXIvbmFtZXNwYWNlIHJlbGF0aW9uc2hpcHMuIFNv
IG11Y2ggY29uZnVzaW9uIGFzIGEgcmVzdWx0Cj4gb2YgdGhlIGN1cnJlbnQgYXBwcm9hY2guLi4K
CnlvdSBjYW4gdXNlIHRoZSBudm1lLWNsaS4gZS5nICgyIHN1YnN5c3RlbXMgd2l0aCAyIG5zIGVh
Y2ggZXhwb3NlZCBmcm9tIAp0YXJnZXQgc2lkZSk6CgpIb3N0Cgo9PT09PT09PQoKW3Jvb3RAc2Vy
dmVyNTAgfl0jIG52bWUgbGlzdC1zdWJzeXMKbnZtZS1zdWJzeXMwIC0gTlFOPXRlc3RzdWJzeXN0
ZW1fMApcCiDCoCstIG52bWUwIHJkbWEgdHJhZGRyPTExLjIxMi4xNDAuMTQ2IHRyc3ZjaWQ9NDQy
MApudm1lLXN1YnN5czEgLSBOUU49dGVzdHN1YnN5c3RlbV8xClwKIMKgKy0gbnZtZTEgcmRtYSB0
cmFkZHI9MTEuMjEyLjE0MC4xNDYgdHJzdmNpZD00NDIxCgoKW3Jvb3RAc2VydmVyNTAgfl0jIG52
bWUgbGlzdC1ucyAvZGV2L252bWUwClvCoMKgIDBdOjB4MQpbwqDCoCAxXToweDIKW3Jvb3RAc2Vy
dmVyNTAgfl0jCltyb290QHNlcnZlcjUwIH5dIyBudm1lIGxpc3QtbnMgL2Rldi9udm1lMQpbwqDC
oCAwXToweDEKW8KgwqAgMV06MHgyCgoKbWF5YmUgd2UgY2FuIGltcHJvdmUgaXQgYW5kIHByaW50
IGFsc28gdGhlIG5hbWVzcGFjZSBkdXJpbmcgdGhlICJudm1lIApsaXN0LXN1YnN5cyIgY29tbWFu
ZC4KCnNvbWV0aGluZyBsaWtlOgoKW3Jvb3RAc2VydmVyNTAgfl0jIG52bWUgbGlzdC1zdWJzeXMK
bnZtZS1zdWJzeXMwIC0gTlFOPXRlc3RzdWJzeXN0ZW1fMApcCiDCoCstIG52bWUwIHJkbWEgdHJh
ZGRyPTExLjIxMi4xNDAuMTQ2IHRyc3ZjaWQ9NDQyMAoKIMKgXAoKIMKgICstIG52bWUwbjEgU049
Y2Y4YmJmZjY2MTUwMmM1MSBNb2RlbD1MaW51eAoKIMKgICstIG52bWUwbjIgU049Y2Y4YmJmZjY2
MTUwMmM1MSBNb2RlbD1MaW51eAoKCmFuZCB3ZSdsbCBnZXQgc3Vic3lzL2N0cmwvbnMgcmVsYXRp
b25zIGluIDEgY21kLgoKdGhvdWdodHMgPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
