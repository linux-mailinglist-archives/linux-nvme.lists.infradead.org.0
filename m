Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBE019634E
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 04:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R798NGFRFehQeAUM7m2CVXKy3Bwv3LFd/5HkZfVD370=; b=bGSSab8eR/xV/S
	UtEXDopsJnxZuBt9x1TYlk06ZAXJ8D6xmyiGEro9NLaf/yzDPpo7ReJXN5pvcHhO6eexruFrnoM/Z
	x7aR+gzFkF0NS5es7I4wloCChNY9RtB5T+hTkWFJxnGfgEEWGYhIYfy3gPG8xCsHeJ0lvfuwU/bpk
	XSKF0SH3ZPgbtvEiscSBAESROr7clVY7BnULuJQHbxyRP9sOEDINR1zkyjR1LF7pdbxIL7hiHfd8Z
	DDCpzw+7UjIzV2r8dKmmGlPm+ceF+2EabruPpAO2DxhfzZGxUWOf69GzXSJ6EZlrHQvaBJGDKPJMy
	hkTLiahaQx2lSa6wTQdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI1ur-0006Nc-6W; Sat, 28 Mar 2020 03:13:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI1um-0006N0-25
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 03:13:41 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C066B206F1;
 Sat, 28 Mar 2020 03:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585365218;
 bh=FbzAYDFJXzmdRzyIumoWFqteCyW0V2FlhYpXUFfmxzc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hw4n6WYF/b0nwXuMtAR4O8d9WF0AzmD48b21Onp+hN0hhauXFnKwFSwoDSbbLsKBR
 c9H+qxhk7BChOx18SfZS+Oy02BmkK7PtYEAuXFh50aQh3VYBbQyPtrXLFCadj36zug
 wsqbBMujsonkIfjskkxvzVy6wXXnto2/9GlAN5sM=
Date: Fri, 27 Mar 2020 21:13:35 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <tom.leiming@gmail.com>
Subject: Re: [PATCH] block, nvme: Increase max segments parameter setting value
Message-ID: <20200328031334.GA18429@keith-busch>
References: <20200323182324.3243-1-ikegami.t@gmail.com>
 <BYAPR04MB4965BAF4C0300E1206B049A586F00@BYAPR04MB4965.namprd04.prod.outlook.com>
 <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
 <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
 <6b73db44-ca3f-4285-0c91-dc1b1a5ca9f1@gmail.com>
 <dc3a3e88-f062-b7df-dd18-18fb76e68e0c@gmail.com>
 <20200327181825.GA8356@redsun51.ssa.fujisawa.hgst.com>
 <CACVXFVM=rT=86JrmAkySTg=gknfFL8Q1NU0uXWzoDMKMyL_mow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACVXFVM=rT=86JrmAkySTg=gknfFL8Q1NU0uXWzoDMKMyL_mow@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_201340_127184_54B3439A 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Tokunori Ikegami <ikegami.t@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 10:11:57AM +0800, Ming Lei wrote:
> On Sat, Mar 28, 2020 at 2:18 AM Keith Busch <kbusch@kernel.org> wrote:
> >
> > This is actually even more confusing. We do not support 256MB transfers
> > within a single command in the pci nvme driver anymore. The max is 4MB,
> > so I don't see how increasing the max segments will help: you should be
> > hitting the 'max_sectors' limit if you don't hit the segment limit first.
> 
> That looks a bug for passthrough req, because 'max_sectors' limit is only
> checked in bio_add_pc_page(), not done in blk_rq_append_bio(), something
> like the following seems required:

Shouldn't bio_map_user_iov() or bio_copy_user_iov() have caught the
length limit before proceeding to blk_rq_append_bio()?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
