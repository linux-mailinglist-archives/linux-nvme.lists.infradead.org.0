Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D319482AD2
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 07:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXYSld8HJR8yYsABq2li2ZVVeYV1ePrcFdf2+yya4II=; b=F6MF1NxzOcLxcl
	6IhN0TWly2M777B9MmWfn1EcqWwmnjVbolxMrJiY3t4t1nOnw2jbNjb9bJF9HP/iZH7NTGxWrG46B
	QXOnW4uDD3E1YuAHN4MRt/DllzEWlp+RoW9OgqmmHyrBAy7SKNZueoZL4zRZN5w95HcTzkaBYZUBj
	sBwSxyhVLFHPnxSuNSs5nqCl+14WONwnZd4NslYlkQ0Y0wZJ1ld1qQ604NwH6Xom4LTMaHbj2cKHO
	js2wL3hXRGURcxCCVh3fg5EplroQ09sFr93SD1LbNXOLQVlTRFHHhgqoIBYWmIImtjUascEiaFFW/
	oGkRdejyi6DtTYDF/zJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hursY-0002ll-1F; Tue, 06 Aug 2019 05:19:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hursT-0002lF-E7
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 05:19:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4033C68B05; Tue,  6 Aug 2019 07:19:12 +0200 (CEST)
Date: Tue, 6 Aug 2019 07:19:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Subject: Re: [PATCH] block: Remove request_queue argument from
 blk_execute_rq_nowait
Message-ID: <20190806051911.GA13409@lst.de>
References: <20190806011754.7722-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806011754.7722-1-marcos.souza.org@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221917_621914_87A038CA 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Omar Sandoval <osandov@fb.com>,
 Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 "open list:NVM EXPRESS DRIVER" <linux-nvme@lists.infradead.org>,
 Kai =?iso-8859-1?Q?M=E4kisara?= <Kai.Makisara@kolumbus.fi>,
 "open list:BLOCK LAYER" <linux-block@vger.kernel.org>,
 "open list:SCSI TARGET SUBSYSTEM" <target-devel@vger.kernel.org>,
 Doug Gilbert <dgilbert@interlog.com>, Keith Busch <kbusch@kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 "open list:SCSI SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 10:17:51PM -0300, Marcos Paulo de Souza wrote:
> +void blk_execute_rq_nowait(struct gendisk *bd_disk, struct request *rq,
> +			int at_head, rq_end_io_fn *done)

We store a ->rq_disk in struct request, so we should also not need
that.  And at_head should either become a bool, or be replaced with
a flags argument, ints used boolean are usually not a good idea.

> @@ -81,7 +80,7 @@ void blk_execute_rq(struct request_queue *q, struct gendisk *bd_disk,

And all the same argument changes that apply to blk_execute_rq_nowait
apply to blk_execute_rq as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
