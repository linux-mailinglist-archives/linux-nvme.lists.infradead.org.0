Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DC64C776
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 08:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRsHjiKGJlE12EQ6dNHQWfmOgs11K5hQaeVGroy2BsA=; b=JACApMhbnbjPAg
	N2qyGOqV+WXwxh5EA3dFPJf23pAFvbeK+I5Zle4KUD2XuzUF0iYWjx9FLb3NuXNt71Ylet/xSMNh5
	sUWj+8xFyi8/hQdZjRtHryot321biZbjjWz1nPnvIeLtTzhlHYcrk6tgHvCBc7ZUX/5nUbWAItZ0j
	qqylJpQB0P7lr6FWj127OUbJasNvJTIvQu0krYGGhD7CSKLI7i/f2AlJirv+C13hNR4mXiZb2SgT4
	9IXq3J18zj3jhDDp/DS6GX4YpjjLnL15U6C18otcPj1xcWXtLEgvRKEvt4ys+f0Eh3XkIMO5541fh
	AAhec8sdfIu4wY9IjNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqWB-0001KH-Qp; Thu, 20 Jun 2019 06:25:55 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqW4-0001Jt-HI
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 06:25:49 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 655B368B05; Thu, 20 Jun 2019 08:25:17 +0200 (CEST)
Date: Thu, 20 Jun 2019 08:25:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
Message-ID: <20190620062517.GB20765@lst.de>
References: <CACVXFVPm4v1-9Sta3C0oN3YdTQhGQL1EVDwPBmA4i28SMHJAaQ@mail.gmail.com>
 <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
 <20190610024127.GE26551@ming.t460p>
 <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p1>
 <20190610035219epcms2p152ffea1ffdda63bba9a901dd42979a11@epcms2p1>
 <20190616045137.GA5373@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616045137.GA5373@minwooim-desktop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_232548_718964_1331C3A1 
X-CRM114-Status: UNSURE (   8.18  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <tom.leiming@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jun 16, 2019 at 01:51:37PM +0900, Minwoo Im wrote:
> Hi Christoph,
> 
> Could you please take a look at this patch ?

I much prefer this simpler series.  I'll queue it up for 5.3 after
a little testing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
