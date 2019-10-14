Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5852FD5BDC
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 09:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWp9T7WT2FEqd+K8EghcyXRjh3hLVNnDZS5yob7QG4Y=; b=kkK6G0irpwIgWv
	5J4L/A3l/JYvwP+Lcz4SBfW7bb5KCCgjxIxWV+i4dAWCX+CsNSfOdvBEUR8fKkWgx4u85NMKbyIht
	WgnSk1EJcOOreTeaeWDX11NZHPNAVPN54nCKOP40lFsSeUtW+yPHuWcJ3EzGBr8lnFRgBoh0A/gpO
	zbRWk14pjpUZPt+OibYwFiwW1zENYTMAXTUaXtyT5BifYjaAmjh0tG6sbNkZjvghbAIRrHhkwNlgU
	kJXvdR51P0e7RjdFRBmBm+B8+8W7bjH4cPcapPBy/awxpDMZCnOXYQJW7Iuo8AeOXeWgFOTbAfy8P
	3LCEN7uvH6QJpJsntZ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuRy-0003BB-FC; Mon, 14 Oct 2019 07:07:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuRu-0003AX-B5
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 07:07:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C357668CF0; Mon, 14 Oct 2019 09:07:14 +0200 (CEST)
Date: Mon, 14 Oct 2019 09:07:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 0/8] small NVMe cleanups/fixes
Message-ID: <20191014070714.GA10054@lst.de>
References: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000722_529294_BD9D5505 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: sagi@grimberg.me, israelr@mellanox.com, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Oct 13, 2019 at 07:57:30PM +0300, Max Gurtovoy wrote:
> Hi Sagi/Christoph/Keith,
> This series include few fast-path and code readability improvements from
> IsraelR and also few memleak fixes and new status code introduction from
> myself.

I'm not fully sold on the unlikely annotations, but then again don't
have a strong argument against them either.

Otherwise this looks good to me

Reviewed-by: Christoph Hellwig <hch@lst.de>

> 
> This series applies cleanly on top of nvme-5.4 branch, commit 3a8ecc935efab
> ("nvme: retain split access workaround for capability reads")

Keith has started a 5.5 branch in the meantime, but there shouldn't be
major conflicts as far as I can see.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
