Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0810B1B769
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ozkl6tTWzcjiAU41K92plAVykR7881lSTTJ3MxabWB4=; b=qKfIm6xxA/azTT
	qUrt4+iH608UZ4YP7uzsUFFqHHyJkvmTgScyfYsGpYRhb+tpafY9rKWH6agCXRahSYKkybnkWy86k
	J5JzTRdOP+i+onrIwT5FQ3pqTDD8JStDkZeV7CHkWtZ7TzQNIy7KmTmRw+LOu84ao0oTA7ua37UN/
	JEo7lByDSdnijPFB9L82STeXEKY/A9aE1ztlDX8felrfDwF8eat47h2He+RQXxzAOkJ/qyFzFtp1a
	mCDjIt04/LoU7WNCRmqArhTn7nCQ2iUXe4cqlTl82l8VbHgy4PGMtSmUezF+dfsRduwrbltXdrF83
	oPjLMq993iILKCI5VC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBNc-0003DQ-HW; Mon, 13 May 2019 13:52:36 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBNX-0003D1-Cm
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 13:52:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,465,1549958400"; d="scan'208";a="171196692"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 13 May 2019 06:52:29 -0700
Date: Mon, 13 May 2019 07:47:08 -0600
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513134708.GB15318@localhost.localdomain>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <SN6PR04MB452735778FD952AA838E78C9860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB452735778FD952AA838E78C9860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_065231_444488_1700CCAB 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 linux-pm <linux-pm@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 11:06:35PM -0700, Chaitanya Kulkarni wrote:
> On 5/10/19 2:35 PM, Keith Busch wrote:
> >   
> > +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps)

> dev->ctrl.npss is u8 can we use same data type here ?
> If this is due to last_ps we use as a result and then call set_power may 
> be we can change the type of last_ps ?
> OR
> can we please use unsigned int to avoid possible warnings ?

Right, the feature uses a 32-bit value even though only the first byte
is defined at the moment. It's just for foward compatibility. Will make
this a u32.

> > +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
> > +{
> > +	struct nvme_command c;
> May be use struct nvme_command c {} so we can get rid of the memset() call.

Good point.

> > +	union nvme_result res;
> > +	int ret;
> > +
> > +	if (!result)
> > +		return -EINVAL;
> > +
> > +	memset(&c, 0, sizeof(c));
> > +	c.features.opcode = nvme_admin_get_features;
> > +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
> > +
> > +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
> > +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
> > +	if (ret >= 0)
> > +		*result = le32_to_cpu(res.u32);
>
> May be add a check for result here in above if before deref pointer :-
> 	if (ret >= 0 && result)

I have it checked at the top of the function since it doesn't make much
sense to call this without a way to return the result.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
