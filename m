Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728B957B7A
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gtm0wcR2by/MPLn/5Z8QTIbIMLXQ9zIqdOdD62UJt0=; b=DpMEX/uN27n9eI
	905JBHXnzvM0r3KjmV1bXNYkXv0ZFCelORG4poywvpLQWdpYbvM8XrmAmdmL7ehoEd9J/j/E61Hwi
	ItApWGBNsXZUM5e5BB/Yzn46DS7R9wSZzjNU3q9ex0vHG8v7Q3fWhIHKIXJAJP9q7Lfg+XmNVws0l
	0oHPmpElifwGUaysz2CYoS8mZEDtlTzIgYSfKb1kIhT0aat0xi36bpl77aY/HTFJx1ZUAk8z5kzIc
	Jc07MBn6q3jLfujQZmtYZ+C7cBEsvK//4E6sFIRd1MFvpZXM0KHXCHfrQh6/L6zsJ6c6Y3mUwBPNS
	oSo878nKOQzpU3W9MhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN0F-00035v-HA; Thu, 27 Jun 2019 05:31:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqL-0006Q2-HD
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y0Lu5xnuzuXjFMWoKTyA21fHkRP8YcKs2uEPq33wpCU=; b=C8Bq0GrsI0FjkJDUO1tInanK3
 8XcY0R8KtBseotFF9FcEmB53RMUu5IcRGjGpTAhR8KAcfE0nzKu33b7fqTG50vMSU661l+pYG/hiF
 5hWso5eSiI2OobhQvKW5ViPI9Muh4Zf2o8Ehwv8av/dp0w3W6slhE+rhZdv1YRB0FCwKMNQdsusmV
 CQlOCpsPThXOsMeMjwbfVZ6eoSvI2E+Cu6uBDeBPQNcj4Ydk+Owv5hKCujgUWpy2BrxW+vqSqab7K
 a3aXWjce0JhdLDmuh7vkwMncz0zZwAcZ2uy/lZn6Hv5mKQRfSQl8wtJdqXHzgqNmz3CtmqCKbBVw1
 J9UFiwwpA==;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIwK-00064J-1z
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 01:11:06 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5R165CT000963; Wed, 26 Jun 2019 18:09:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=Y0Lu5xnuzuXjFMWoKTyA21fHkRP8YcKs2uEPq33wpCU=;
 b=Q3zIPOkp4gzxArCH0EP/U9/4tYbOxskdXjJK6Gds/RdfL8ZwkzgkiASnYVeb3EmOMCgz
 BJxwlj1yVBgrDbHrDeloIhkB1asAqQHi/PYaLEWTj7YnrRQ64M3Nyte5iK1aI8u8NAjh
 lqjYLZWAfxADlTOW+4CVFuVHFAzsvfaX9PlUzFXXAEagxM3ld0rLxVkAOqzSL/ElMGwt
 byJAWYJAiGfjOxiDjA+lWfoREP96XHKwLxJ+QAySVEdfvNNZ7JwQtFIGmq7b7mvU+Hg5
 7NLX9Uan+NiTyJKY7hQuZwubH2Qna5uj7IJqHKcUYcWY/kAAk7GlFw64huuDKKSd3Y3e JA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2tcbgca5b5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 18:09:55 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 26 Jun
 2019 18:09:53 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 26 Jun 2019 18:09:53 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id A5B513F703F;
 Wed, 26 Jun 2019 18:09:53 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x5R19qDf029678;
 Wed, 26 Jun 2019 18:09:53 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 26 Jun 2019 18:09:52 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
In-Reply-To: <1011783c-e0c0-4dba-824e-821bf5b4955f@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1906261801230.7630@mvluser05.qlc.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
 <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
 <alpine.LRH.2.21.9999.1906261725120.7630@mvluser05.qlc.com>
 <1011783c-e0c0-4dba-824e-821bf5b4955f@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_14:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_021104_364397_758B084A 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019, 5:49pm, James Smart wrote:

> On 6/26/2019 5:28 PM, Arun Easi wrote:
> > Attaching the patch I was referring earlier. Maybe the infinite loop in
> > exit could be changed to a time bound one.
> > 
> > -Arun
> > 
> 
> Interesting. I still prefer the stronger referencing while anything is

Yes, no denial of that. My suggestion for this patch was an addendum to 
your patch.

> outstanding as I think it's really ugly to get into __exit at all when things
> haven't cleaned up, and once in __exit, there's no going back.
> Also concerned with:
> - hopefully module load checking prevents loading of another lldd
>   while in this state. Ugly for that thing if its rejected and the
>   load has to be retried.
> - I don't like the long delays (could be a minute plus) for unload command
> while it waits - anyone stuck in the wait will be asking questions as to why
> - Exiting after a time delay isn't great as it's just as bad as the existing
> code that left with things not cleaned up. I was hoping to correct that.

Yes, again this was not in lieu of your patch. With your patch and this 
patch, with maybe a wait for a few seconds (rather than the infinite loop 
in the patch) in the exit path, for a chance for nvme_fc unload to go 
through, I was attempting to let modprobe go through well for all modules. 
But with the design idea to attempt to keep the nvme device alive, this is 
not required.

-Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
