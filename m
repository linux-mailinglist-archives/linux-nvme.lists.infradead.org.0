Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307091B6EB6
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 09:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UawW8ACcuMCQtbdLRkL4Y6XW7Cv1+oPQ6n3ysDwRoM=; b=gGCYrk8+dER9t3
	3NWoY93DplgIDLazvi6hn17mb7IujhDBPh5eR6cjBHV33IVhXPcodDvwRd3MEUXS1qiI1/9trMi4A
	oGi75XO22vSRwZ3kz7uPbrNTA0IgyAtFDj6q4KCrCWmx3/FVmCHneZuXm16ggwHiRMc0dR8jmTasu
	g0RFOPgNV8eoj6Biv4xgpF9WWxxGxQ0C2M2PcPhVzndMjpqyupA4o6JAvmsSHq4wkLLRURvcQk2em
	QQV6PgKMCjInnS5b252V1UwKcvfmErSznypY78BuQRTSEILesQa9pPoV3Lmi7eExzdurPp7wPwjfO
	BPHZv4NZyE73evTGbCSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsXp-0005fK-30; Fri, 24 Apr 2020 07:14:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsXk-0005eN-J9
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 07:14:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 723C768CEE; Fri, 24 Apr 2020 09:14:33 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:14:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 14/17] nvmet: Add metadata/T10-PI support
Message-ID: <20200424071433.GE24059@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-16-maxg@mellanox.com> <20200421153045.GE10837@lst.de>
 <0c6caf5b-693b-74af-670e-7df9c7f9c829@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c6caf5b-693b-74af-670e-7df9c7f9c829@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_001436_774142_46C4C1C8 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 03:39:38PM +0300, Max Gurtovoy wrote:
>>> +	if (ctrl->subsys->pi_support && ctrl->port->pi_enable) {
>>> +		if (ctrl->port->pi_capable) {
>>> +			ctrl->pi_support = true;
>>> +			pr_info("controller %d T10-PI enabled\n", ctrl->cntlid);
>>> +		} else {
>>> +			ctrl->pi_support = false;
>>> +			pr_warn("T10-PI is not supported on controller %d\n",
>>> +				ctrl->cntlid);
>>> +		}
>> I think the printks are a little verbose.  Also why can we set
>> ctrl->port->pi_enable if ctrl->port->pi_capable is false?  Shoudn't
>> we reject that earlier?  In that case this could simply become:
>>
>> 	ctrl->pi_support = ctrl->subsys->pi_support && ctrl->port->pi_enable;
>
> for that we'll need to check pi_capable during add_port process and disable 
> pi_enable bit if user set it.

Which seems pretty sensible.  In fact I think the configfs write for
pi enable should fail if we don't have the capability.

> User should set it before enable the port (this will always succeed).
>
> I'll make this change as well.
>
> re the verbosity, sometimes I get many requests from users to get 
> indication for some features.
>
> We can remove this as well if needed.

I'd rather keep debug prints silent.  You could add a verbose mode
in nvmetcli that prints all the settings applied if that helps these
users.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
