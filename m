Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7563113FD78
	for <lists+linux-nvme@lfdr.de>; Fri, 17 Jan 2020 00:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Gg4bBy4BHKOMuULk7mv+tBL7z4+NMgA0INCLWshxm4=; b=a4mc2gFtvpfP67
	h9Mkqjz7iDoxRolSbg6phREkfs53G095hT9UrBKtgrH8RPicHDjBBVElgcYjOFtun8gv3TG4hvAX0
	XNjfsIrWF0CrX6iwz941y4l+U0Jy8N3Fg6PSl57tDKRq4CJL9i9szOeh4NAUf4rjSuEt2y8R+e2rU
	dS+lFs9jlslaD8HSR+LsDc6Q63KoYlKhafTznmH+cC0yCLIVLShrbjFWJmKcvDjz+/2VCbt40rWHJ
	/b/p3uEgHwabbxyx1358FQ018Yg6LNVAUSIG5mIULZlVNplNDPJbx0gdO1wb1rb1uOL+riLErSSWq
	WsHWYFkrfTiINWVxFxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEX1-0001qw-RV; Thu, 16 Jan 2020 23:26:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEWv-0001q2-OT
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 23:26:26 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 174D12072E;
 Thu, 16 Jan 2020 23:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579217185;
 bh=qKP1lkLMMAG/u0mgAdV9gh/9/aDfK+wvCYtGmt8XwK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCJbfBsFgyDp4kTm3q0u8jC7Xqx+00l1OqcqZKo7fNHWRjiKFq+PzLsnrEoW1KwYE
 YH54o8oR4cmZAbYUi4GjXeohEROjMhNoM4mRz6OXbpIN5MX2++br+/3Z5LzO8G5kef
 kNrqYqJhW/T3bGQ/+gRyIspmgwlmGfNnOWWdsORE=
Date: Fri, 17 Jan 2020 08:26:19 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
Message-ID: <20200116232619.GA29624@redsun51.ssa.fujisawa.hgst.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
 <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
 <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_152625_815789_5114674F 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 03:06:40PM -0700, Nadolski, Edmund wrote:
> On 1/16/2020 9:06 AM, Keith Busch wrote:
> > On Tue, Jan 14, 2020 at 11:17:45AM -0700, Edmund Nadolski wrote:
> > > +static void nvme_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
> > > +{
> > > +	struct nvme_queue *nvmeq = hctx->driver_data;
> > > +
> > > +	nvmeq->tags = NULL;
> > > +}
> > 
> > If you've multiple namespaces, disconnecting one of them will cause the
> > shared nvmeq to have NULL tags, which will crash the kernel on the very
> > next CQE read.
> 
> Currently it crashes with just a single namespace, because the nvmeq->tags
> is still pointing into a tagset that was previously released by calling
> nvme_free_tagset() from nvme_reset_work().
> 
> Perhaps the driver should not free the tagset unless & until there are no
> more namespaces?  Is nvme_remove_namespaces() supposed to ensure that?

Looks like we'd need to clear all the nvmeq tagset pointers in
nvme_free_tagset() we're called from the reset work.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
