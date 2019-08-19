Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89A79278E
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 16:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5z4BRnOj16/YzJinWnvQoA/RXV2O2rd8UAA72mRExJY=; b=puUsSLzaNAHNCk
	4SclGal1mattpzB0K1pvJkodcgK9hE8t0LMtcLHz9pdFVapn4h8Z4T2U7EzD25lrmRX+1EZawFvBt
	D5JPvoX3XiRFQYpONKrEjPJRIg8EyBgbm0ctdaxKY8KSsUrQC26c/wTvPaZHA5uAuoJGRt8Bkn2a1
	xQWDQ0QSpnHYLmfbH5YpL24EWUo87TV22kBSJzuJLBzMQfMOyG8JEkKq0iB52r7xf1ik8ahGVFAeu
	VKn1I/306NDXuu+J/gQPouZyo0VNxA6JnUpPkoIvxJL7taM0SBCvqIF4RY8LYCOf1BHyZJdUzuYr0
	Gkgfp6iONgeNblmZN5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzj0O-0002vt-Kw; Mon, 19 Aug 2019 14:51:32 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzj0K-0002vB-9U
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 14:51:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 07:51:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="195551635"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2019 07:51:26 -0700
Date: Mon, 19 Aug 2019 08:49:22 -0600
From: Keith Busch <kbusch@kernel.org>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190819144922.GC6883@localhost.localdomain>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_075128_343612_25AED891 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 12:06:23AM -0700, Marta Rybczynska wrote:
> ----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:
> > Sorry for not replying to the earlier version, and thanks for doing
> > this work.
> > 
> > I wonder if instead of using our own structure we'd just use
> > a full nvme SQE for the input and CQE for that output.  Even if we
> > reserve a few fields that means we are ready for any newly used
> > field (at least until the SQE/CQE sizes are expanded..).
> 
> We could do that, nvme_command and nvme_completion are already UAPI.
> On the other hand that would mean not filling out certain fields like
> command_id. Can do an approach like this.

Well, we need to pass user space addresses and lengths, which isn't
captured in struct nvme_command.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
