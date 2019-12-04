Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793E0112589
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Dec 2019 09:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duwEGpD7KSqM7Esce1WQSO5fIoUkIa2HXBE5kZHzUKk=; b=mIydzY/yxMFZY9
	3MqNRkvY+FuipFfILUvaIX/wM2+sOIR3ht8oMUdKCNUyihZJPyYUV4mdh3Rvpn3s7YgAzgPPtzNMc
	ncyEXhjsF28xyQxk+65jNq+as2IBJUoeHYPbsXZRNHQ46lTPh/wAriUE9B+Wp9FS9B1Z6Iq/4ZdXx
	GWrtQmw+Clvu+6RiDL0yqG+Bz1HobAhQ6BKliFqrK+Fq0Idn00N49BLHlD2Ew/ThQi/jXe1WCSxuL
	dnU/hetlDa0ojk8HgmlMFKF+E6qRGQQMCdJcV84J9ySKRqyG5hMeIkJExQUKqsk3HVqojE5ZxTnjj
	JYkpP83g2vsuPmSMrm9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQEX-0004vA-L2; Wed, 04 Dec 2019 08:42:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQEQ-0004u6-SJ
 for linux-nvme@lists.infradead.org; Wed, 04 Dec 2019 08:42:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BD53568BFE; Wed,  4 Dec 2019 09:41:52 +0100 (CET)
Date: Wed, 4 Dec 2019 09:41:52 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 01/16] nvme: Introduce namespace features flag
Message-ID: <20191204084152.GA25668@lst.de>
References: <20191202144812.147686-1-maxg@mellanox.com>
 <20191202144812.147686-3-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202144812.147686-3-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004159_063049_293B5EA4 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, sagi@grimberg.me, martin.petersen@oracle.com,
 idanb@mellanox.com, israelr@mellanox.com, vladimirk@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 04:47:57PM +0200, Max Gurtovoy wrote:
> From: Israel Rukshin <israelr@mellanox.com>
> 
> This patch is a preparation for adding PI support for fabrics drivers

No need to ever say "This patch..".  Better explain why it is added.

Also the patch adds a field to the nvme_req structure as well.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
