Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3231915EE
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 17:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QR0/RgKozGJM98tMCrNAZghCjCmLpQWZGZsLu7fgzQ=; b=FfhrmgRYXSDiQI
	RR6UN9l7rVxnHvGEIf2BqHmMWGPp0/vpopa1xRRm5/JQbAeCgC2ey4RswW/m3JlbAzK4DCEaHAiZC
	ECZFXZ21302YwmOu4yqaFipCFmhMNxh8rQKdhS/NJumFClK55t3SvBerAZ3nlMQNHLk2irMqyox5Z
	+iR6Q1A10ohRha4Ix3Nu62lhb6bHT0CRvzYjhdNfuuF4RRWEggiV+wEBaj1OPz3/k/5bqzK1QfD7V
	s3ntMo0YgG4VifP83yZEXZq/yEHdho3lt2HHicoCFKQINXiqwewYq+IYHKtzrohHndk5ANCCPghuY
	INR/VscpoH0z1HqHRm9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmFg-0002vb-4K; Tue, 24 Mar 2020 16:18:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmFb-0002v3-Ml
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 16:18:00 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD2B82073E;
 Tue, 24 Mar 2020 16:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585066677;
 bh=q2htSSKdYljCh0ysHYdmY1EH1LUMQzCgbnd2qnOExhs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MQETVL7CY+1gjnpLd6M5Eukji2pj3OdL+knb/PIdcRwWsls/rojrrjsCbrsoQkAE9
 ASo3wkL5bFVnP+ucNG7BeUL4OZW0hQ4IBfe6UfjHXv6MYRd134OS2FFs8vFoLX9ouJ
 /JH/6AQNu+ow2qg785lnpBSeC5o7d/nqXOHh0vN0=
Date: Wed, 25 Mar 2020 01:17:52 +0900
From: Keith Busch <kbusch@kernel.org>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 0/7 V3] nvme: Fixes for deleting a ctrl before it was
 created
Message-ID: <20200324161752.GA30956@redsun51.ssa.fujisawa.hgst.com>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_091759_772953_243213FE 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Shlomi Nimrodi <shlomin@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thank you, applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
