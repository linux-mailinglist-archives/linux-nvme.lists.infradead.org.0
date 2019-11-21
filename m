Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB17105889
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 18:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gswNuD4fTpL4mbDxR7ZyvZTsbqKsFPckz9/WdtFCSB8=; b=QWDgjTWPhowdSA
	4bxcdCpUYvApE0M0xZOdh6Z/CUa6fjCTME4dephI83e9JZppV0aCm+uO2WOo7gAxMYvznQGVZxoE9
	lBBNcqeX8zOepHOB4X2Xg40rri+Agl7+BW/XpE4SPDziLx9qmE7N5w3DJo7fLlouAH2gGaE5tPhPS
	MbPVbfcLcvaQQ5+HO6anooSFP43G0KWmP/l4v6fr02VPpIu+3RGH6iM7wkddp9rGN95mT/7nK09gj
	AcNncsKnS03m5J+EINOOScbUkGS2M0QlKmVnUKX/z+eHWvua3toq1IwDPyfvwGA/CoeefimRJigsX
	T3iPfk71QXgbAS56eE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqBS-0004S4-L2; Thu, 21 Nov 2019 17:23:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqBO-0004Rl-43
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 17:23:55 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28C112067D;
 Thu, 21 Nov 2019 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574357033;
 bh=BKY8PYRgvs730+i9QkmSjJAG9rktDQtJDD1nzUUUsbc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZguODQvByeGTnUJG5GRTpHFK+TAzPeudXkXryKoP+6kH4QoYML8OiTiiKK38HuP1C
 HC1PFcd3ToKXOgnsIixD0bfEw93Q/+4UmUiT0EeQcrj7orXu63Cd9QolUH/in+O1Qi
 N+ivDqYLgknzFjhMHVx7q5WUz9vwz4PbSe4+R5mw=
Date: Fri, 22 Nov 2019 02:23:49 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvmet: add another maintainer
Message-ID: <20191121172349.GA19165@redsun51.ssa.fujisawa.hgst.com>
References: <20191116175038.6105-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191116175038.6105-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_092354_186102_84E7341C 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: chaitanya.kulkarni@wdc.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Nov 16, 2019 at 06:50:38PM +0100, Christoph Hellwig wrote:
> @@ -11633,6 +11633,7 @@ F:	drivers/nvme/target/fcloop.c
>  NVM EXPRESS TARGET DRIVER
>  M:	Christoph Hellwig <hch@lst.de>
>  M:	Sagi Grimberg <sagi@grimberg.me>
> +M:	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com

This is missing the closing '>' here. I only noticed while drafting
a pull-request and letting everyone know because I force pushed the
minor correction with the same commit.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
