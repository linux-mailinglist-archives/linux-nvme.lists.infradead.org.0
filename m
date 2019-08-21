Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916B897496
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 10:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrHgzkdhrHcJiplaj8V1nniO3NGZmvm4ddMoHn7/3vY=; b=G/+RuIOjQnac69
	ZqJaZgwWLEDC1IXeAh6arztFAsBUJjHBzR64zRzhAvTjhZFrjPyjAmVaRPCYWY+utzCk5XtRSFKJu
	Dv3T2dDkAnDtRm0Wh9a9iHa/GA10SvOyHEN6Ohrh6cEvY+lj/AlGQubpGyooZSv1UuKGovOYk/xXU
	tPrmsN+mmBItCefI6kmrB4aw84Xr+LKWMok2fgfxePxCr81NlDj8FKj87k39ih3XR09Gn8fgKc3mo
	+6L8qL2jVBA1VKUbwd0kWzT9ibP8uP91wiBgxqYcA/MbOJKsTtDEI9TF3Qx2b68D6bFOid5BftvKt
	FXD0FrcSUoURwPvwuajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Lri-0001dU-D5; Wed, 21 Aug 2019 08:21:10 +0000
Received: from mail-eopbgr780120.outbound.protection.outlook.com
 ([40.107.78.120] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LrN-0001cH-Sp
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 08:20:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TW34iFdoNF97GPo89Njq50q2mcVmj0iDwwa+pBHSGxLu/PBedDl+nFsHeq69iQf3am41oyoQbFDITiPtedPfJWr1isbNyM1QYX6vc+rmw1l9MmDYoMvSa8dzkjUcNLU7aETkZajo7cgk+ktpIeB9LEKqQS7dtaUuRJL6kXuavyE0CP3vQsjlxJM0kEUB3+Bmbary+fB7dtikQBRanMuFmu6OVYgWY68H0N45HL8EtZl+/x3YJyj3eAUiDwdG+P2TuIckZm3RQ9dPrZjhsFSTT4yOjJ+NmMNHrhXhqUaZ93LZP2zHDe8YpMiebkjlwFCN5HLy9mgWdX6LhkN+nfROHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJID8aVkaRli8tgOf9zk7nxZRI+HlJd14vABCHhffAM=;
 b=OuJnVj4mHtu8BS5bdVquMxcIW09dXjzaobNIZZCbwGMLF9HAD75nsGp3+QnWn6wJURp8k5ORW5tgqeG42uDUrqSZyRAfQZU+2fxTlM+Su86J4qmy7tqHozoHfzA7m8KcO4OiFipmdYbNM6u3x0kV3TSMKw6iYsvnbEB7OjYNahMGr1mAOTzZ2ibEEjI9HvGo90zb92e1LJfmN0PNBU6DZhRp+w4U0P9s/gGMjQVEbOH9btcvSOkanjUfM0PuIHQ5EJxhzTFM/M3KKolGTbHHp4eZ/Hl1IDWjwrYIES8C1Myj712aKc7BY4JfKbpH9787IA+S6XN83BxBGCumiTS0lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJID8aVkaRli8tgOf9zk7nxZRI+HlJd14vABCHhffAM=;
 b=cTtgCV/qKimllwoUQklJq83YJ4JllyGpqVgXoBiFyyCt9Qb4asJQdvlyP0EQxuIOEXS3CaW/nZzRCJ2dXq+VngVZmTDNkCJH36Xk95I7N++rBEz2bOZjXieu+DFw7wlpSMhmdFXu5G9q2W4Z5QoElgpJSYVMnE9TfOIX85ocK3I=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0840.namprd21.prod.outlook.com (10.173.192.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.3; Wed, 21 Aug 2019 08:20:48 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Wed, 21 Aug
 2019 08:20:48 +0000
From: Long Li <longli@microsoft.com>
To: Peter Zijlstra <peterz@infradead.org>, "longli@linuxonhyperv.com"
 <longli@linuxonhyperv.com>
Subject: RE: [PATCH 1/3] sched: define a function to report the number of
 context switches on a CPU
Thread-Topic: [PATCH 1/3] sched: define a function to report the number of
 context switches on a CPU
Thread-Index: AQHVVx6RDKHG9VfWZEyMN3Ch0Aa10acDx8yAgAFzq1A=
Date: Wed, 21 Aug 2019 08:20:48 +0000
Message-ID: <CY4PR21MB0741F33BBC800C0774CB8C15CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-2-git-send-email-longli@linuxonhyperv.com>
 <20190820093827.GF2332@hirez.programming.kicks-ass.net>
In-Reply-To: <20190820093827.GF2332@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25bcab38-abf2-435e-8135-08d7261078c2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600158)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR21MB0840; 
x-ms-traffictypediagnostic: CY4PR21MB0840:
x-microsoft-antispam-prvs: <CY4PR21MB0840BD1158C477D6EF3A2391CEAA0@CY4PR21MB0840.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(396003)(346002)(366004)(136003)(189003)(199004)(10090500001)(14454004)(8990500004)(446003)(11346002)(53936002)(478600001)(476003)(46003)(7736002)(74316002)(305945005)(316002)(22452003)(5660300002)(6506007)(186003)(33656002)(52536014)(486006)(54906003)(102836004)(110136005)(76176011)(256004)(6436002)(229853002)(4326008)(25786009)(66446008)(2501003)(76116006)(64756008)(66556008)(66476007)(71190400001)(81156014)(10290500003)(66946007)(71200400001)(8936002)(81166006)(8676002)(6116002)(86362001)(99286004)(2906002)(6246003)(9686003)(7696005)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0840;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 065KlWxYsF4Vy2UpxSZN5AK2jpTLgj4pe04pW3jtodoxTAT1kqqAlpxhE1kHj6ZNbiXb5Bm/0pmPpOE2qUDKjJPPx9mTkvjwoue5d4V438UoPLr+gE/cwQL7w+80Bivq3kYvhlbMxREvzbETvMGD5ETVOPw7kL1ZTdJSOdbze/zY7GJSXQyGswfife2NfMyUiIapK/rXcOKK7iqb7idBqP0Jky4j/iTkuwOnNuktDG8a9E7l7tO4VLLE7H4aVfaWFF9+REf5fAgNlItfKxLSU3UkvuGc/sG2zZJGbhxAYo+t5PTNf0ZTfgCqpawIpw3qJhudSVSsV1Za1Px1wpnY1ahwsefYH/VvzAAsmxvydheBvsdAO9JqXu7iT4XhivEAJK+3L5nGUbaEDEk/fj79eSPWTUhNzlxjqM9njtJMbhU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25bcab38-abf2-435e-8135-08d7261078c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 08:20:48.1530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s/4JAb3/CL8Od9HfSy+oOiO5Qvwi15oRVpb1y8vuLUXUvOL1ZUbof1Vg2WTr+Vn+Lv59kK91BlxnJY6mZ0BzSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_012049_935323_2E6E894D 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>>>Subject: Re: [PATCH 1/3] sched: define a function to report the number of
>>>context switches on a CPU
>>>
>>>On Mon, Aug 19, 2019 at 11:14:27PM -0700, longli@linuxonhyperv.com
>>>wrote:
>>>> From: Long Li <longli@microsoft.com>
>>>>
>>>> The number of context switches on a CPU is useful to determine how
>>>> busy this CPU is on processing IRQs. Export this information so it can
>>>> be used by device drivers.
>>>
>>>Please do explain that; because I'm not seeing how number of switches
>>>relates to processing IRQs _at_all_!

Some kernel components rely on context switch to progress, for example watchdog and RCU. On a CPU with reasonable interrupt load, it continues to make context switches, normally a number of switches per seconds. 

While observing a CPU with heavy interrupt loads, I see that it spends all its time in IRQ and softIRQ, and not to get a chance to do a switch (calling __schedule()) for a long time. This will result in system unresponsive at times. The purpose is to find out if this CPU is in this state, and implement some throttling mechanism to help reduce the number of interrupts. I think the number of switches is not accurate for detecting this condition in the most precise way, but maybe it's good enough.

I agree this may not be the best way. If you have other idea on detecting a CPU is swamped by interrupts, please point me to where to look at.

Thanks

Long



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
