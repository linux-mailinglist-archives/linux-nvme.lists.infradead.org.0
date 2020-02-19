Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06361164ACD
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 17:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lk9L+rIpjDRYMbzCug9JRUCXq8lV6AB2zW/bKWcCBw8=; b=dL/yQpfnkQPPNo
	cGyTAUQZTTu2xrtmsRk248JpY70kmGrHTmkgemotIYoK82HCztHEPFA6ohJlHT0cCSvmTqYtXsOFr
	Omde2xhuzylE4doPgKLzJ5dIoFVG2X4TqVmCOReMlYV+W/aeOaMMJ5S2amJSv4C10aymeRXUwTzWC
	q/rtLrJxZl91RUvt5kA/YTokavDR5kAusN+MbHIl8C2/teWS3ql8MXuIxRevJQ0+nmtn0aXzuJhze
	L+5jU4uoimPokhRoIR3PvKwtgi1ULt4o28uZvZyYhWHacBGcW/P1kAkDLy/nuqheBOF2bfHfAvhmj
	P+m4+TqRnRg6BNdLf+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4SRk-0000Qq-0S; Wed, 19 Feb 2020 16:43:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4SRg-0000QN-4Q
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 16:43:33 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8564320578;
 Wed, 19 Feb 2020 16:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582130611;
 bh=wr0yFW67QtQyzf2hUSMh0CQ6vwfW7NMo5cW68Q/gVLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xuz6qxh6rtrbZsObx0exXYpbNyHPbNe9O3zrYsZDkYh4Glqd+QtqVWh2Bu2YcvOg1
 94KaeVqP8FY9KeIeH2icDGfuR2Bak5fn0Bh18uoRJwempIcKSOu2EluysGkkxsgfFE
 PIDf3dg1lamRXEtjBth5Yl7tfYt+Efev3gRA0Fso=
Date: Thu, 20 Feb 2020 01:43:26 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V3] nvme: code cleanup nvme_identify_ns_desc()
Message-ID: <20200219164326.GA28509@redsun51.ssa.fujisawa.hgst.com>
References: <20200219161431.5025-1-chaitanya.kulkarni@wdc.com>
 <20200219162253.GB19584@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219162253.GB19584@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_084332_194083_DD06E71E 
X-CRM114-Status: UNSURE (   7.21  )
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
