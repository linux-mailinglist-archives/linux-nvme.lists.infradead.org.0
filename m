Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A409B96CF
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQZq9ddCuKO0I7itwkRO2QUUIXRxATHjPMymhic6j4c=; b=adSy5bx2E3sp0b
	p/PKPOPNdljiBi6bAKMrhRao8kZtv4I8FBBENfM0V5nvJGzCaR2uEaW/tDENYJK5EIdDbDZrM25ZW
	+kwrPBNyCH2MT/uGLQrgHVNANj6OglqBJytaVoF8ooeVehPi+u39Fv89q9tl+axoReOXyEfQ/xtYo
	LP9dWdGEDZ5vaCUFq/YOJW6AOmnq9M6YYmfmPsgtjROEWLO9kmO+WEGrYz3EOgetNMhSDaRvIsXij
	+b3p4XsX0N6wvMH7GNwPK9NvEFAodW2gUAH4rdAvjZGDRXy8QWqHR3SanaljKrizL4/RKYcqP5X3A
	daMQcvBdOXYq59bwkIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN6V-0005uQ-Fu; Fri, 20 Sep 2019 17:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN6P-0005sZ-U1
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:53:55 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5380C208C0;
 Fri, 20 Sep 2019 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569002033;
 bh=0iQq9F8mXl+BcVV56komRet+Xcto/LA1aHyYI9gedLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uWQPidMTYFqX4kYlwxZoO2x4rR2D+95wNT7ctsp+N4JdfcGI/BfKrRhPqLTchzQgr
 jKG1Y0bq/biqtGb36vu3H8c9v7R/WSdoY8IUHrybAqu1WtR5uF5ZAqqPsRqT06OSDN
 IVysQpSVFlrk8/EX8TdjVNJrmPILba9A1oVaxpAE=
Date: Fri, 20 Sep 2019 11:53:51 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 1/6] nvme-pci: Free tagset if no IO queues
Message-ID: <20190920175351.GA97854@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-2-kbusch@kernel.org>
 <d6c5e276-6479-89e6-4a59-5e950ddf2fe5@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6c5e276-6479-89e6-4a59-5e950ddf2fe5@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105353_984925_6A2F9491 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 10:49:11AM -0700, Sagi Grimberg wrote:
> 
> > +static void nvme_free_tagset(struct nvme_dev *dev)
> > +{
> > +	if (dev->tagset.tags)
> > +		blk_mq_free_tag_set(&dev->tagset);
> > +	dev->ctrl.tagset = NULL;
> > +}
> > +
> 
> testing dev->tagset.tags and nulling dev->ctrl.tagset?
> why not check dev->ctrl.tagset?

We could theoretically use either. I don't see any case where we've
allocated dev->tagset.tags but didn't set dev->ctrl.tagset.  But I
just kept the same check we had before, just moved it into a helper
function.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
