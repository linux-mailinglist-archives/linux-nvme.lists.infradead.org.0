Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EDB174EF9
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 19:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yot/T1wtL7xpwMuT4Rkz9CLV4IzDlKoPN64DyO1yII=; b=kwfghT2oCnK+J3
	9Toln5E3IydNEoHdVL8gnKuqTMuWFhJt2UQuEmjXnamdsvQ5MCQYBJjx3I/6T9puGylAttRUjQH8o
	XsHgxj7UyP5wTd9/jR6w+5r2pq3UeuLR/+x6QSa8SJx/sCVhcnXAO/z1Ae2JSOuLpU/ZsWZvZIjWA
	Y1fLNnC0aQGk9lowgYhRt7Rh6PCWv2935paj6YWT85Veih+uhvTuxRKUuzezGLao4DdXqQMqnxSD1
	lxkDIBTQmScpZI2grpI2XpUk0Rr6+92V13Lp23xDVxHzUJPzDdX1fdWjHUDtWdKAjXX7usN4sDrDO
	VBb6L5R0Vz0VAlBJZU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8TOK-00017z-5B; Sun, 01 Mar 2020 18:32:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8TOG-00017X-5I
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 18:32:37 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72AA3246D4;
 Sun,  1 Mar 2020 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583087553;
 bh=GOHQ3umUBu5BEnrmOm6f0fS44zEn7yEiHI8nMTgJgTI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cUP/0V54kpu2sQ+h0/PxsiF63letvU+vcX8YvhJIhlLyFa44M9TTNaU0eSPy04KsB
 vOXG+adWcdipgEah2OrN6uIa9hkSGlim5iSEBGIlROsvEgtZ3Ic3ebBol9Hgw33WNg
 VsGjsZVBeKrIwLqE1QXLXo+7z8BpDrGlafKXZPkA=
Date: Sun, 1 Mar 2020 10:32:31 -0800
From: Keith Busch <kbusch@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Subject: Re: [PATCH] nvme: Check for readiness more quickly, to speed up boot
 time
Message-ID: <20200301183231.GA544682@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200229025228.GA203607@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229025228.GA203607@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_103236_222668_D1BCE9D1 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 06:52:28PM -0800, Josh Triplett wrote:
> @@ -2074,7 +2074,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
>  		if ((csts & NVME_CSTS_RDY) == bit)
>  			break;
>  
> -		msleep(100);
> +		usleep_range(1000, 2000);
>  		if (fatal_signal_pending(current))
>  			return -EINTR;
>  		if (time_after(jiffies, timeout)) {

The key being this sleep schedules the task unlike udelay. It's neat
you can boot where 100ms is considered a long time.

This clearly helps when you've one nvme that becomes ready quickly, but
what happens with many nvme's that are slow to ready? This change will
end up polling the status of those 1000's of times, I wonder if there's
a point where this frequent sleep/wake cycle initializing a whole lot
of nvme devices in parallel may interfere with other init tasks.

I doubt there's really an issue there, but thought it's worth considering
what happens at the other end of the specturm.

Anyway, the patch looks fine to me.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
