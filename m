Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C817836C75
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3FDBQMnle9ls7vJKEtV2vIMRm0IUcU29RmtZ6d06Po=; b=tTvyQPXCuvlhoE
	ruXbDJuSXq7JF1PtuEJpJlQeCtTMqnO+TyUQyQtnmnQ1YA5ViqaiSoR0ivs9ywtcGa97sfLF4fHjb
	svabwdhQ+2P9BIWq2CEZKveBplowRRQoLREc3dEa02fW/geKNmRxlVSjYxDzPrYoRC6A+5E4/yDQK
	bipfITrgrqcMw8mrfnUxkNzaoXhQ28LotFZ9Qb6Z5hd1VIobPw1GhUDSJ5jceai6VAEJ0N6a+E+Mt
	4yT4IrZhh9BPKcMBmyLoKXzF79d6L/Uac73+TOa0JPkJeFKdWuQ+hlOiS+/XeAI0Cfq4DJpbhbKLp
	Rlj11E9KOy9pZC99ygnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYm6Y-0005uA-0P; Thu, 06 Jun 2019 06:42:30 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYm6R-0005rm-Kj
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:42:24 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9AB2968B05; Thu,  6 Jun 2019 08:41:53 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:41:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
Message-ID: <20190606064153.GD27033@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_234223_837990_600A3018 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 MPT-FusionLinux.pdl@broadcom.com, Christoph Hellwig <hch@lst.de>,
 megaraidlinux.pdl@broadcom.com, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 08:02:07AM +0200, Hannes Reinecke wrote:
> >  	scsi_change_queue_depth(sdev, device_qd);
> >  
> What happened to the NOMERGES queue flag?

Quote from the patch description:

"Also remove the bogus nomerges flag, merges do take the virt_boundary
 into account."

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
