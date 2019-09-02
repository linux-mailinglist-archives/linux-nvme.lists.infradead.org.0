Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0383A5A4C
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 17:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps2+y98hkLFUx/lu7pSNKcwuuHsFQDd+Y/a7yU+rwX4=; b=u533gEc20PD80q
	LgKi/7NS/4uTZt8XnF+xytbj2zxJOs27wnlNwOD1eY5b4SolsTZQ4DQeBnSj8E4p24MPMWLB8Py30
	SaukhoOdn9oTFfXYfhgMnA3dJsp6uKK5DgFffzPR8iYTAef2IAIlZSK841vFMFkBUb0c20Whe3iCy
	aMqphN/7zk/JO5tdcuZ7jbX9KVonGBAAcyi7Twqc10brcDp2V2YxJVM8TZftzZZBPdLkVglmV41K6
	6QsrQyyQZa0UvQnyMWat93RczMg4UgEGmwT0X7bVpyqwEzMh9kf+IRpjQMTd6xwE5XQmYtVcvZsHI
	LovNe3rs6/mKvgc1ysLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4o2l-00019a-2t; Mon, 02 Sep 2019 15:14:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4o2Z-00015Q-PX
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 15:14:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0D97A68B05; Mon,  2 Sep 2019 17:14:45 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:14:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 3/3] nvme-rdma: avoid un-needed dereference of request sqe
Message-ID: <20190902151444.GC5034@lst.de>
References: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
 <1567436462-23218-3-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567436462-23218-3-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_081447_995898_AD00F3EB 
X-CRM114-Status: UNSURE (   6.90  )
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
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 06:01:02PM +0300, Max Gurtovoy wrote:
> Instead, use the local variable that was set previously.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

Looks fine,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
