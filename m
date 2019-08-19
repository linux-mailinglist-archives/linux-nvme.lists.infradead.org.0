Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1EE94D67
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 21:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYekM+/vjvxZGU82RIrOXIdmcVCNKu2EDGX8s61GalI=; b=tPHn9EIUZEAKdQ
	jw7H5Q6LXQSldjEhTwV1xkVRHvdDMNeWRva638nHJuSBtrc2hPJJuNDsENAybbrwnSLrg0wf39kI+
	hGk2hA/4M18ginxh2i91YmK0Jqj/UCqLQOkJb7vQsunDLYDYKSH5qRrVfEqj/zS689tUE4l2ojw5q
	m/R5vvj/QYJsAk8xX3b9zaIeP7Xj5LU7xhFozF7KiP/1iDuIr2fQDHt6N6n/eJ4pDM36g+kYlGqfl
	D57xNrMR41ORF6dnY8GCpE61Icd++t71tCw4KOaRqIx6bxa1JEACCmE7MwrCORbE40bpZ2lN9cC3O
	dzvXxf1EmKhJ2meRi0ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmt3-0003jf-46; Mon, 19 Aug 2019 19:00:13 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmsm-0003ix-SM
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:59:58 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 11:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="195595817"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2019 11:59:52 -0700
Date: Mon, 19 Aug 2019 12:57:49 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190819185749.GA11202@localhost.localdomain>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
 <20190819144922.GC6883@localhost.localdomain>
 <1d7819a9-9504-2dc6-fca4-fbde4f99d92c@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d7819a9-9504-2dc6-fca4-fbde4f99d92c@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115956_960366_91EBB9A4 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Marta Rybczynska <mrybczyn@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Samuel Jones <sjones@kalray.eu>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:56:28AM -0700, Sagi Grimberg wrote:
> 
> >> ----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:
> >>> Sorry for not replying to the earlier version, and thanks for doing
> >>> this work.
> >>>
> >>> I wonder if instead of using our own structure we'd just use
> >>> a full nvme SQE for the input and CQE for that output.  Even if we
> >>> reserve a few fields that means we are ready for any newly used
> >>> field (at least until the SQE/CQE sizes are expanded..).
> >>
> >> We could do that, nvme_command and nvme_completion are already UAPI.
> >> On the other hand that would mean not filling out certain fields like
> >> command_id. Can do an approach like this.
> > 
> > Well, we need to pass user space addresses and lengths, which isn't
> > captured in struct nvme_command.
> 
> Isn't simply having a 64 variant simpler?

Could you provide more details on what you mean by this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
