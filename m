Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8A1C1285
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 15:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWOLyLZN/bwaHZRoSJwPTuIG2zF+Vd8xy3SvVwa9qDs=; b=jinww5HtcTeKRm
	v3H6AOJ2LFvhtVy6lF3RoaKho7sf4QltOO58Ppo5QOAMf8hKzX/toR3jmpQ9Y7YSu1UEEXAoi37of
	E98Tn3hmBKPTw+8Sn32WELCrYrlo+xzZei4wwMWCPrhvduAffNXo/4CL4og/F8anUHvtYaINZ3Q8G
	LGTzgqXfpzCULWaxRVTbfqeLKM95xBu1ggKiohenw2idnvA9UUDBcremeCvfteQkrCQAI46CgVXed
	B55GaD8xUwG/dwtywrslycI0UJJ6wxY2MPq6DD4qSBmLk7ioxaUzpGxImDG6miNjBrCtIOl81blbY
	0s/mB65Y++KF4kvizEkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVI3-0002q6-LS; Fri, 01 May 2020 13:01:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVHy-0002pi-7o
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 13:01:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 12F8268BFE; Fri,  1 May 2020 15:01:08 +0200 (CEST)
Date: Fri, 1 May 2020 15:01:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: remove last_sq_tail
Message-ID: <20200501130107.GD5197@lst.de>
References: <20200427185446.2139232-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427185446.2139232-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_060110_440300_CBBB80C3 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:54:46AM -0700, Keith Busch wrote:
> The nvme driver does not have enough tags to wrap the queue, and blk-mq
> will no longer call commit_rqs() when there are no new submissions to
> notify.

Thanks,

applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
