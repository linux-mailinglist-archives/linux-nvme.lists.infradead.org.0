Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA9C1C12C2
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 15:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfvhLOX04h3REWh6LlU4eJmZysJ+7bZpREOGZcTfH/E=; b=iBp1B8LqrRcul+
	Cu7PYPsrlzAUwZ50xvPIE3IUuKGYhXXiIVPfTYveS4HVP8SQ8KdFxGrVlkeTYzHHC9IdKreYuJ9CG
	2dQkXETquoEwHwDK0NIFmOgIIJhLq8OeP7kMmJqJzBGzcSKkxmmczQHEevliIL9rRi0sSoIuOHnxb
	hWbKk0Qa1Kj9/INo1NGp5DjUJO0yZVc6FFxDNwVgxbzaO72wz4d8si5ErnvCURSZcylvjMp+xcJcs
	AQBLR6+aDhe7wcFTOW63ZdHMt2rOK6uN2WBXB8johHC3P9Thw1bqPRT7cUjM1OFfiK2xkwtglmBAz
	B9GlMFVF2N4fXlUnlZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVbA-0000WZ-M3; Fri, 01 May 2020 13:21:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVb2-0000Tj-18
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 13:20:53 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0E07F68D0D; Fri,  1 May 2020 15:20:50 +0200 (CEST)
Date: Fri, 1 May 2020 15:20:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 03/15] nvme: make nvme_ns_has_pi accessible to transports
Message-ID: <20200501132049.GC7197@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-4-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428131135.211521-4-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_062052_222308_3DE00782 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:11:23PM +0300, Max Gurtovoy wrote:
> From: James Smart <jsmart2021@gmail.com>
> 
> Move the nvme_ns_has_pi() inline from core.c to the nvme.h header.
> This allows use by the transports.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> [maxg: added a comment for nvme_ns_has_pi()]
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
