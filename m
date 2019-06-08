Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930FA39BBC
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 10:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsShI0kTUjPdD1SQ2v+9p1usSjUilM2xtAiGejfXeYw=; b=KpO1GT54Fa7YEl
	JrKIzInQ4VzEcWEsTn5ToZzf4tmjoE4pA9M52UGgtzv5oy5hNEp8NwdAzp2j/hmHJIsaEwUS+ReKj
	9o8+612yYCyhtk58mOxj3BI3JEFD9b6RMQwOklRg4+BymMfRLXp8ZZcTR2Wt8+1cVo2pF5O97vDHo
	vSP8XgL5xl/npDj3biXh3xOqjR8Q47KZIFuDzkdVNreD4A5UfaNzYEkq+AEzj/RhQDGsN1wQcqEAT
	etJXtYoYg1ycPluDiBhe5IoYUz8Wf2ZeSI3Jh6EiLw7AWYKMMzJpeTGJvY/1MbOZNUZHPPuJtQpHp
	KWEPcvLut7bNzP08AcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZWUr-0007mh-FU; Sat, 08 Jun 2019 08:14:41 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZWUh-0007lS-PC
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 08:14:33 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B4A7168C7B; Sat,  8 Jun 2019 10:14:00 +0200 (CEST)
Date: Sat, 8 Jun 2019 10:14:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kashyap Desai <kashyap.desai@broadcom.com>
Subject: Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
Message-ID: <20190608081400.GA19573@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_011431_971048_BCE3B4A6 
X-CRM114-Status: UNSURE (   7.46  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, "PDL,
 MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 09:07:27PM +0530, Kashyap Desai wrote:
> Hi Christoph, Changes for <megaraid_sas> and <mpt3sas> looks good. We want
> to confirm few sanity before ACK. BTW, what benefit we will see moving
> virt_boundry setting to SCSI mid layer ? Is it just modular approach OR any
> functional fix ?

The big difference is that virt_boundary now also changes the
max_segment_size, and this ensures that this limit is also communicated
to the DMA mapping layer.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
