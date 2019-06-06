Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDC036EB0
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 10:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUuWnAAJYmJUEc5NR2kYv/O3r1HJyPTl0luicmbTuOA=; b=WoGjIM/Tmvt3Mt
	73JI8ljStFvjz3RSWggjTu3vwsJkXZsuy7MnwyFQyy+rndrHkODj37ChbFf4Yaytl/ZvqgHzxEVQv
	xpT4J6jXl6RHZQ5B+rMmJnl5uJjpJVVun02vEaRnW5mX2r4BfkVC6voLtErhjf9mgk+El4vgrlu7W
	WvVZIdHJsOzBbmMLyh0MRiNaEluAYa9kWHBaK8DPxRwx1mLeXC+rlAXy/eNoXLNT7odsiJBE+a3qv
	4m5XoqLZ1uK2XsKfTmVVaiPsPpQpMLxf6eWD0Klj0Crzs6iZW5k80Hz7y/3hEPWyKOdZnyzY0VU3y
	OSSX12Ye5ulN6fXxj/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnoT-0006QQ-RM; Thu, 06 Jun 2019 08:31:57 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnoP-0006Q7-60
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 08:31:54 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3045968B20; Thu,  6 Jun 2019 10:31:26 +0200 (CEST)
Date: Thu, 6 Jun 2019 10:31:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
Message-ID: <20190606083126.GA28979@lst.de>
References: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
 <20190606064537.GE27033@lst.de>
 <7db16b61-f29a-2fe9-5e58-8f84d208016e@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7db16b61-f29a-2fe9-5e58-8f84d208016e@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_013153_374564_D375E290 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: sagi@grimberg.me, james.r.harris@intel.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:38:08AM +0300, Max Gurtovoy wrote:
> But I'm not sure we would like to move it to post_send and add more if/else 
> on the fast path.

We shouldn't need an if / else if we also map the AEN SQE just like
the ones for the normal requests.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
