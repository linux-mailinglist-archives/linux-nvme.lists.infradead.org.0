Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25F8B5727
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 22:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yss296ff+JymIdjx0Sg2sD+9FooBU2GHmzZfYsczYaw=; b=RTVo3RWHpIJQF/
	EPLkjTIekzpXIOi1a3psVOsBLynf8kpjj6mXArjQOpQbamWFE9GxbuYuvAhAuEInYZILjVc+lqhPR
	aUXaDxbzVjZbHru+3Nem7S9GN8p4b6ENLDFMVBNdmkvC1AinBInqFtF4CpqtOAk1DMsYzJfcz7WgT
	6SrclAqh2bqddiVIHusAOysPLuUHONCzNIu3JLRUXLPezGqxKHs8YP00EgvPEeRje8reU+4M2u2Ow
	hj0Rzrx2H9Elez2PgLagseeOkkKiZElOXQZWC+47fSYfxG6RdunSaWev1RsHZklc7Y3lsjdOg2eMb
	/TWs+gAxz6PYW5BuTLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKOk-0000fW-0L; Tue, 17 Sep 2019 20:48:30 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKOX-0000es-Pd
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 20:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568753297; x=1600289297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q1oUtLWU531mAmv3aEJV5RRgPKvNPR/lVpyhHVcIMKU=;
 b=vVZMqwTlT+OVTN7D2i7WwiUPmzt3pBwdLWnO45dmw4lri/BaARSITWyN
 lxZ+vdNeA5IuhafKp30/XLNYanpUNR6eyP/OO5mZ4IYPAPFrIvWnOnjOU
 C3eR7JC9X3LqzcUNXKnU6ADO/5btwoxjC3wJ/wGBJ2cq41nEo7jJnSRY0 s=;
X-IronPort-AV: E=Sophos;i="5.64,518,1559520000"; d="scan'208";a="702883066"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-2b-c300ac87.us-west-2.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 17 Sep 2019 20:44:34 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-c300ac87.us-west-2.amazon.com (Postfix) with ESMTPS
 id 0D5DDA18F3; Tue, 17 Sep 2019 20:44:28 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 17 Sep 2019 20:44:27 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 17 Sep 2019 20:44:27 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Tue, 17 Sep 2019 20:44:27 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sblbir@amzn.com" <sblbir@amzn.com>
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Topic: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Index: AQHVaowXMhT5fp4jR0Gn8rYSgg/tw6cudR4AgABCegCAAAUJgIAADC0AgAFkW4CAAC8ggA==
Date: Tue, 17 Sep 2019 20:44:27 +0000
Message-ID: <d56dc347c085c14567c27d3169fdbca0f60fc024.camel@amazon.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
 <25d9badc90a1eb951cb5103774e8360edaa8ec15.camel@amazon.com>
 <14becaec-2284-d680-b3b2-c38537c91521@acm.org>
 <7a90bbc89594dd884b055cec3dc5f3060f1b1e5c.camel@amazon.com>
 <eeefce01-3d9d-ade1-50e1-79e3dca76fcc@acm.org>
In-Reply-To: <eeefce01-3d9d-ade1-50e1-79e3dca76fcc@acm.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.155]
Content-ID: <7AD485DCFD316C40A931528CBF4B78A9@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_134817_924277_0A24844A 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>, "axboe@fb.com" <axboe@fb.com>,
 "hch@lst.de" <hch@lst.de>, "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 10:55 -0700, Bart Van Assche wrote:
> On 9/16/19 1:40 PM, Singh, Balbir wrote:
> > Is your concern largely with the comment or the patch?
> > 
> > Keith just recommend added
> > 
> >   /* Revalidate after unblocking dispatchers that may be holding bd_butex
> > */
> > 
> > That sounds quite reasonable to me
> 
> Hi Balbir,
> 
> Keith's comment suggestion sounds great to me.
> 
> Another concern I have is that your patch depends on implementation 
> details of the block layer. Calling revalidate_disk() after the DYING 
> flag has been set means that requests will be allocated, started and 
> completed after the DYING flag has been set. I think that works with the 
> current implementation of the block layer because blk_queue_enter() does 
> not check the DYING flag if percpu_ref_tryget_live() succeeds. If your 
> patch gets accepted and if blk_queue_enter() would be modified such that 
> the DYING flag is checked for every blk_queue_enter() call then that 
> would break the NVMe driver.
> 


I don't think any request is sent down, from what I understand the following
happens in nvme_set_queue_dying()

	if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
		return;

In nvme_revalidate_disk(), we do the following

	if (test_bit(NVME_NS_DEAD, &ns->flags)) {
		set_capacity(disk, 0);
		return -ENODEV;
	}

I don't think we ever send the request down, we just set capacity to 0.
and then revalidate_disk() calls check_disk_size_change().

Cheers,
Balbir Singh.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
