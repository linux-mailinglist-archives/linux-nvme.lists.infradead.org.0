Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99CFC0EF9
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Sep 2019 02:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apM3pN2E22cBf/hcWSE5Jq+z9NP2ICdRgjrpzuXlC7M=; b=MbOLqJS2XfOnBT
	dxV/PXev6m0lLGl7Xi5ApKIaJgSMem2Eb2DgUGiHXwV6KXUyj/46deLAxnqxhy9zY6d5Z7IUEBR1t
	yuU2TU5xF/ynNOdz6Fxlhp6eP4Mel2R1j3G7+q1tJDlx0qukDypR4rVyrvwkHEkMzvmPZSIe/cNwV
	GooRwJBFJAwsb2g4XGy3ARAtAv79zCv0GLS0Px49+/vpn9OlQ4wpMdK8Er96enInG+yhJrdF4vI46
	rTzYOBs2aafg8f0BGTNfEy3UGt/viuHRT5bZrqzm8hcU/i9O5dQqPHSMRd3xFR+D8j1JUIh/bYQb0
	uU9yyF0Lm7rSTbq4ssBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE0Wl-0002ET-RP; Sat, 28 Sep 2019 00:23:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE0We-0002Dq-Ms
 for linux-nvme@lists.infradead.org; Sat, 28 Sep 2019 00:23:53 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 148BD2075D;
 Sat, 28 Sep 2019 00:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569630231;
 bh=ZkLwsfW/lzDFTaaBRVo/5VLy7GMr1CvgbmYDLMzEOpA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JejXdjCj1PPh+ZbdJJyXUyjAw4a5ahlwflOJCpu8Pjrn03voZlniVMBRk7dhXn0ZT
 S6LMcdz1DwC7qZOnZkRu2I3/mYDHlRHsanA486Z+ilBhWDaaGFZ5MHvti1AwDAWwPI
 cmQy6QLN7wdb+RWHTDSqNYWyqrVW8wT4eh03YDmM=
Date: Fri, 27 Sep 2019 18:23:49 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
Message-ID: <20190928002349.GA17232@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
 <20190927214121.GK16819@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927214121.GK16819@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_172352_768492_361265A0 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 11:41:21PM +0200, Christoph Hellwig wrote:
> On Fri, Sep 20, 2019 at 06:34:30AM +0900, kbusch@kernel.org wrote:
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 95b74d020506..33b5729763c2 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -3742,15 +3742,14 @@ static void nvme_fw_act_work(struct work_struct *work)
> >  		if (time_after(jiffies, fw_act_timeout)) {
> >  			dev_warn(ctrl->device,
> >  				"Fw activation timeout, reset controller\n");
> > -			nvme_reset_ctrl(ctrl);
> > -			break;
> > +			nvme_reset_continue(ctrl);
> > +			return;
> 
> Hmm, I find the use of a function named nvme_reset_continue here
> rather confusing, as there is no reset we are continuing.  Yes, we place
> the controller in resetting state, but it isn't really a reset in the

A PAUSED state would have to copy the same transitions that RESETTING has. It
seems simpler to just collapse this with the existing RESETTING state, and we
also don't need a special way to schedule reset_work from it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
