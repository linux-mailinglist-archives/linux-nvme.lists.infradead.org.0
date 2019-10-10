Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C55D2BEB
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 15:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IxlcqJDHMAql08I1UIkVN+LJ00pgklT27p3Kov5hpo=; b=STqei2Teuy8x0I
	9BSAkyt+OAGkfdOnISVz7WL6n0xWbtdnVVFQCH78tZ8IqBjcwWpueDhKNS2RNyrmA+vHnJSNFMOn0
	DLZGRvU2YrZwq9addwgzQ5N0bYNYQstrgP6Oa4dYGdbcBB4SG5fSfWMs8zSQBmfQimclFTX8iXNXM
	1rJHGIqqRcqQU2/WwsO0v6AAGoaYqsQo0nZn+A4lKshRUtwdAfMLR4qapYE78OjIwGK0OYDOmTPTZ
	Yv3+iCSzZr+Jm0vLtnZJ0bSJBu0y3ZXeaeJOqBhqgWrtI4L1fUf+rLiWdaUHEhsh5h0aHWHVq8twp
	kN90NQnHcmMv5V3lTYlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYyR-0003Q2-9K; Thu, 10 Oct 2019 13:59:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYyK-0003Ph-Sd
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 13:59:18 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8BC9208C3;
 Thu, 10 Oct 2019 13:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570715956;
 bh=7SfNitKWDiLYxf+ydwz0yzlFVLE4laxxL3eKpciZFE0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ANbFPRRbVSbBd/btfkKBbM15HTOc+n3U4zvakzKRcnTwmfg1IfFiR1kQ8d9mAKNln
 ZNYVqWPv752NnOVwLICyi/SnW3XJg/5eC3uVXUB/xa9rbqyIezj4UFWUKZOSaP2M+F
 THXsPaCDrnnlGHcszvcfGHmjDOzdMiX2VBy3i0h0=
Date: Thu, 10 Oct 2019 07:59:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Judy Brock <judy.brock@samsung.com>
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
Message-ID: <20191010135914.GB56376@C02WT3WMHTD6.wdl.wdc.com>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
 <20190927214121.GK16819@lst.de>
 <20190928002349.GA17232@C02WT3WMHTD6>
 <CGME20191010120317uscas1p1e4483ca19dbb0e550c413c18c5928537@uscas1p1.samsung.com>
 <2f876efff1484f5f95b852584b27efc6@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f876efff1484f5f95b852584b27efc6@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_065916_948869_9E3F4FDD 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:03:16PM +0000, Judy Brock wrote:
> Hi Keith,
> 
> Any chance you can get this patch in to the nvme tree soon? 

I'll try to find some time to respin today to address some of the feedback.

Christoph, are you okay with my explanation for not introducing another ctrl
state? We could add a paused state, but I think it's a bit risky for no real
gain.
 
> We believe it may fix an issue we have seen. We are throwing a ton of stuff
> at two controllers on a dual ported device at the same time including
> multiple nested resets, nested FW Activations, nested Formats, DSMs, FW
> Downloads, etc. We saw this in dmesg in one test run. We think Processing
> Paused bit was probably not valid at the time as we don't have any record of
> any FW Activates that went to either of the controllers and never finished.

That is rather unusual, which means it is a good test to have! Would you
consider porting your case to blktests?

   https://github.com/osandov/blktests

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
