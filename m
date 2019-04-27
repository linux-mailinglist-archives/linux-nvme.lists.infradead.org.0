Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7633B2D7
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 07:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3G3EGI2z3rV3RgnX6e8jPyjor/Vb4orGh6dHMur4CY=; b=k8Zxmb4qyIEtjH
	UHCNZUKYf3gN5y85UlVVupR9loT2xQ44uB/Q5W2jDyP8qh0kDmr56RZNEQBwpv/rolM25FeHAgRDL
	8X+RBfRdfiUYstLWn16ELomttQHFM1IeUew8OxPYrRy+QfNZZQTQHocaugB0i9A3iE1xCGB219yhj
	z4j5f/PDrcEozLvtI19vFfpgoP8d9hMtr7a11qgeLJW1N1v15YHlQ/HqAPJegLwuiv6QGkjh6s4Bu
	KaDsUISFI6vD66iTdCs4XszeBC37K8P8DOhia6mgYZI61/XpgA3o6ivbxDv8wQRbxDdbVtEg6j+11
	Ys/roBaK5qKM49Fa6Vcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKGIu-0002mC-M6; Sat, 27 Apr 2019 05:55:16 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKGIp-0002eW-JK
 for linux-nvme@lists.infradead.org; Sat, 27 Apr 2019 05:55:13 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 154EB68BFE; Sat, 27 Apr 2019 07:54:53 +0200 (CEST)
Date: Sat, 27 Apr 2019 07:54:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V7 9/9] nvme: hold request queue's refcount in ns's
 whole lifetime
Message-ID: <20190427055453.GA21483@lst.de>
References: <20190424110221.17435-1-ming.lei@redhat.com>
 <20190424110221.17435-10-ming.lei@redhat.com> <20190424162746.GE23854@lst.de>
 <20190425010030.GD22636@ming.t460p> <20190426151114.GB20438@lst.de>
 <20190426224542.GD31470@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190426224542.GD31470@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_225511_789242_7FDC6BC1 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.com>,
 "James E . J . Bottomley" <jejb@linux.vnet.ibm.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Dongli Zhang <dongli.zhang@oracle.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Bart Van Assche <bart.vanassche@wdc.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 06:45:43AM +0800, Ming Lei wrote:
> Still no difference between your suggestion and the way in this patch, given
> driver specific change is a must. Even it is more clean to hold the
> queue refocunt by drivers explicitly because we usually do the get/put pair
> in one place, instead that getting refcnt in one subsystem, and doing put in
> another place.
> 
> I am going to drop this patch in V8 since my original plan is to fix block
> layer's race in this patchset.

Doing the untegistration and final reference drop is just a bad pattern,
leading to possible bugs.  I'm fine with you just dropping it for now,
I guess I'll just send a scripted conversion moving the put to the drivers
to Jens after -rc1 to sort it out.  Probably including a rename
of blk_cleanup_queue so that everyone notices the difference.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
