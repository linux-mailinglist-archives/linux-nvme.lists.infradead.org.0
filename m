Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849BDB6A64
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 20:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHd8NzzB3er+eUg/h4Ui2MgqKwLuBKoIribI0iZzfc8=; b=RWVcB3WkBU54H2
	WCaWl3lDW7A9wNgMgOrVy9E4xSzklt56O/Qu+5APr6GPSXuddlUI9g4sIa3EvQNpUpTd8gw7UIu7U
	nzv7vDDMMeKd8EnARYqxxU0HvbIlR/066qm7nasVY1YWFX2wA+3yywS9OEDE3A/JMoELsTZzyysOw
	2ccGqNuGg7dATc16CzAsQKaeUM3SBXKw3jYXzZ7YIDZokKN2pe/tBGAz0JgL2L2BntHFb+IvuzLWE
	CdHWHU/9p6UV9mRQ31RiWo8Db6PkaP9YLKjVNPqaJnf5sRUdy1q29sqntbmxqBuwTokncEwjHDMk9
	NBtf834FRo2T1VlzsqzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeZ9-0002NE-4a; Wed, 18 Sep 2019 18:20:35 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeZ0-0002M3-Rg
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 18:20:28 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 11:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="181210437"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 18 Sep 2019 11:20:25 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 11:20:25 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.204]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.180]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 11:20:25 -0700
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] nvme/host/tcp.c: fix use of time_after()
Thread-Topic: [PATCH] nvme/host/tcp.c: fix use of time_after()
Thread-Index: AdVtuy0phZrVw6c5R66UFeK7PswOXwAQYSoAABOgVEA=
Date: Wed, 18 Sep 2019 18:20:25 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D35B84@ORSMSX104.amr.corp.intel.com>
References: <B33B37937B7F3D4CB878107E305D4916D339CC@ORSMSX104.amr.corp.intel.com>
 <8881fa6b-0825-4f4d-4713-eee3062f1cea@grimberg.me>
In-Reply-To: <8881fa6b-0825-4f4d-4713-eee3062f1cea@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjA1ZDAyMzUtZWUzOC00ODI3LWE1ZjctMWJmMmZmYWRkOGM4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNlJzdVJ0emhETzlaT0p6QXVlUDFkdXNEaDVlZEhXeWoySEtmS2xra1VRT0RPallQODQzaVZ4M0Z1MFgreUIxUCJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_112026_939493_8003A99F 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>Thanks Mark for catching this!
>> nvme/host/tcp.c: fix use of time_after()

>title should be:
>nvme-tcp: fix wrong stop condition in io_work
Sure, will change when I re-submit as 'v2';  [PATCH v2] nvme-tcp: fix wrong stop condition in io_work, correct?

>> From: Mark Wunderlich <mark.wunderlich@intel.com>

>This should not appear in the patch message, are you using git-send-email?
Sorry, could not send email directly from server with git tree, so had to just send via my workstation email, copying exported patch contexts into plain text mail message.
I'll remove that from the patch next time.  Is this process OK then, or will I need to replicate git tree on my workstation to use the git email path?

>> The values provided to time_after() call used to terminate do/while 
>> loop were reversed, causing loop to always exit after single pass.

>They are not reversed, but rather in the right order, the problem is that the do/while statement needs to continue as long as the time *DID NOT* expire.

>So the right fix is:
 >> -	} while (time_after(jiffies, start)); /* quota is exhausted */
 >> +	} while (!time_after(jiffies, start)); /* quota is exhausted */
Same result either way, but I think your suggestion reads better.  Will change.
Personally do not like use of label 'start' to indicate the end of time period, to me would read better if used something like 'quota_end' or 'time_end'.  But not worth changing here?

>Please also update the patch description accordingly.
Will do.

>I'm inclined to get this to jens asap and also send it to stable as well.

>I'll be waiting for you to respin.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
