Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1562F1FA4A6
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 01:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtK0OXhfp+QXZP3NxGOVdtY27cYUXQYMbmCa7u/2hKw=; b=KMwQSkljc9A/UL
	xECuW44OihXyloj9QXMkldU/+iTZrJEbr+85J7lIu5oIBS+W+X4gkXjKCaw/cvs+a7J0JurmIVuV+
	XdbHig7V3UiPMenrs/AjkVs0kSI+UHF14J+pL2ngXpRucrrkfGIu2GFzve/OcU08VuD5IG0TzuIUF
	HKz1F1VIcbyQczWRS1PuYEI4QB91p1uYeyJycbJWipCv7hVdxpYiNrbS36G+dMVowi1W46DMwlVyt
	Eie554OfHeey7NDIBv++6BN8A3l0QXpRson4i3aQnw8mzUeYKmwXlt8XLa7Hav3NVizloPYSx4yJA
	gMS++YnAGIo2Nnwo40Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyk6-0001l1-A6; Mon, 15 Jun 2020 23:42:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyjz-0001kB-E4
 for linux-nvme@lists.infradead.org; Mon, 15 Jun 2020 23:42:12 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DA0420714;
 Mon, 15 Jun 2020 23:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592264530;
 bh=0D6Jq6CBtWAPt9DhLs4k5kr+/sVdGgdVznhB72rayrw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bc62udHDb02b18Xu2M5KT/+kbTRl1KzhOJBw7NG73UT8561fbshEfbrQiYB7+5FK5
 UzAT+FvpLp0zTKVXAqh3OMcISSRE3m5jHiqu5FQxArq/Oar9r3l509XH5CivxYAHsb
 Nft8b4WWHJqT9ZeKz3ROR42Dbp5RGlvdnDlomtvg=
Date: Mon, 15 Jun 2020 16:42:08 -0700
From: Keith Busch <kbusch@kernel.org>
To: christopher.walker@gmail.com
Subject: Re: [PATCH] nvme: Quirk for Samsung PM1733 controllers
Message-ID: <20200615234208.GA520528@dhcp-10-100-145-180.wdl.wdc.com>
References: <1592262742-103431-1-git-send-email-christopher.walker@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592262742-103431-1-git-send-email-christopher.walker@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_164211_491185_F396A6D1 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 05:12:22PM -0600, christopher.walker@gmail.com wrote:
> From: Christopher Walker <christopher.walker@gmail.com>
> 
> Accommodate the drive-ready times of Samsung 1733 controllers, which
> range from 2s for the 2TB model up to 4s for the 16TB model.

Wait, why is this necessary? We poll on the drive to tell us it's ready.
What is the hard-coded delay table doing here?

The original "delay" quirk was introduced to work-around a dodgy
controller that would break if MMIO happened too soon after toggling
CC.EN. This patch doesn't sound like that, so what exactly is it working
around?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
