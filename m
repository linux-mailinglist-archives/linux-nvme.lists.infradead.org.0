Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E50110A27C
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STVmD0FgWbbUcvNM2AtCMqRc0wH5Qddp1BDu2Wp9lmE=; b=fGCkdyF9TRsi2j
	1e0EMqYobBef6Gmxz5u0d3gP2umdNj9W6DjSi47Uf0Osu9/gY0cgmWALLNQ0deRS38EOZs12dyBYk
	sK3712x2OwEJQcSNV5ufyq8yXv1O0Ac3jPAxAsN0f+MI+SGDGfhGZhVLQISB+pkn9DxxNlI5rxsBe
	11etWhLYnivj0RDqNgEkZrodnhOMP+NeTkndEswvW5zs6wtDFt9wZ/VmtzLBUymQGfOrzcD6z/vuQ
	rKzPccGKL27nHvdtm00b9T3iSS+6vkiBxRTd3pfqpsv1ptoqLq5xMS0+0IC/mUcK4e8Npj29FwsO3
	N+A72VM/gGyxrp42BS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZe5e-0000ml-BI; Tue, 26 Nov 2019 16:53:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZe5V-0000km-Q9
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 16:53:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A261968C4E; Tue, 26 Nov 2019 17:53:15 +0100 (CET)
Date: Tue, 26 Nov 2019 17:53:15 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 3/3] nvmet-loop: Avoid preallocating big SGL for data
Message-ID: <20191126165315.GB8204@lst.de>
References: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
 <1574613512-5943-4-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574613512-5943-4-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_085318_004249_410AB691 
X-CRM114-Status: UNSURE (   5.75  )
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
Cc: James Smart <jsmart2021@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
