Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D9B19501
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 23:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCG/ICkvVPOs7fJZZ9da27R9ixAWS6KmL6JyOb6iEVU=; b=oEwF37GQYwzVBE
	ypYnQxOUyEQpjqlVawwI7+mo+JPk2Z2XX0EBDFhGoVvW6a5lB9Mb5HUjqovIsRr7h+uYQLa2LSWy6
	gBKpdH1TJm6BryK9tQBNBAf3V4mawWHQKoi9NWKOKjR/5zO+1E0QvQZJ++UPvZJict7XdSY+5umdL
	y3UIpcW7lq9YUx+im5eC+/W9fTv64+ZDRcKNzeeJnVRDPmdKVMAxy5BTSG/EvkDG6rtoGjkXaxQSi
	YYnmumzqeoimjx7JncgTZcovbYE9wyoln0uByN8bnxd7PpDHkc1F8TWC93Pls7wSI54YODwkykU8x
	bQHAoGorcWKonCQjSVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOr4r-0007dK-Rl; Thu, 09 May 2019 21:59:45 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOr4m-0007ck-BR
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 21:59:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 14:59:39 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 09 May 2019 14:59:38 -0700
Date: Thu, 9 May 2019 15:54:09 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190509215409.GD9675@localhost.localdomain>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_145940_440120_867B33DB 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 linux-pm@vger.kernel.org, rafael@kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kai.heng.feng@canonical.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 09:37:58PM +0000, Mario.Limonciello@dell.com wrote:
> > +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss)
> > +{
> > +	int ret;
> > +
> > +	mutex_lock(&ctrl->scan_lock);
> > +	nvme_start_freeze(ctrl);
> > +	nvme_wait_freeze(ctrl);
> > +	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, npss, NULL, 0,
> > +				NULL);
> > +	nvme_unfreeze(ctrl);
> > +	mutex_unlock(&ctrl->scan_lock);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(nvme_set_power);
> 
> I believe without memory barriers at the end disks with HMB this will
> still kernel panic (Such as Toshiba BG3).

Well, the mutex has an implied memory barrier, but your HMB explanation
doesn't make much sense to me anyway. The "mb()" in this thread's original
patch is a CPU memory barrier, and the CPU had better not be accessing
HMB memory. Is there something else going on here?
 
> This still allows D3 which we found at least failed to go into deepest state and blocked
> platform s0ix for the following SSDs (maybe others):
> Hynix PC601
> LiteOn CL1

We usually write features to spec first, then quirk non-compliant
devices after.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
