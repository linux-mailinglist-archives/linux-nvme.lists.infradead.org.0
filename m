Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795AB20C92
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGddlLnHOQZhaSpoqBqwyp0vnWswzV9y13LJu7nzxZQ=; b=NXosG8hQAywf9P
	UCk/Uh+eSsyOjcnUQzgGwvbIwacvDMG0RL+Sp4s6orZ7HtlVdsvcmv54Z7p2Q4k1E7Ja1PFRlRHO6
	ZxWGccsph0oG9L+OtnWX3g2YdyxYKeMF4FDOJIbEakcV2Mo2LbgRvetCcPUkYU3djWf+1R2j4mcFw
	gHaC+HvqtRmBhhdkgpbtnVS0svSEMedz9sAUko716rAbFugw4Q+73gcA1WX0zMb0+60jKfNCZEZAH
	QrALEJmlxkVT6FxeOQE4bCDmDW09jB/9/qZh8lWwYhGmLxYnfHqwZHPoMS/jHKsbZktCByLhCBs0A
	xkggFD4LMiviWWLVI7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIvj-0008Q7-4X; Thu, 16 May 2019 16:08:27 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIvY-0008Pi-TJ
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:08:21 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 09:08:16 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 09:08:15 -0700
Date: Thu, 16 May 2019 10:03:00 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: Issue with namespace delete
Message-ID: <20190516160259.GD23416@localhost.localdomain>
References: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
 <20190516151130.GB23416@localhost.localdomain>
 <20190516155356.GA26104@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516155356.GA26104@infradead.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_090816_999198_41DA5F2D 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 08:53:56AM -0700, Christoph Hellwig wrote:
> We could try something like the changes below, although they are
> completely untested for now and will need to be split up into
> a few patches:

Looks correct to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
