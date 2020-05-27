Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4E81E4D75
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 20:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Wq/Fwng/ZJI3YMEJK9WGEumwuJPI3n5zjcMDMSkNAs=; b=gp3Q+TvUnGLulG
	pSk3bR4NsFZf28PkQWzG64DKYQHZ74PMfYmsJJUUqPN7EnjKKwaoNqxB5ZGV+H2Owt1Pw4TbvM7gr
	LgPA1yygYIevDWj1RmEXBPfUCr3Dlj/3l5YIa0S/TuHpvNoblS74vw3szNvYxQvVNOqfCSoQ4nC+z
	/2DoFvY4lSQC14NrHWKChvBK3VlBUysAwbSqpQyEaoBVeGkJiIgqizvGjat/ePMOZxrBj5qUCjSHI
	nd9zmqtOFHfzcw8wy552RF6NcNQ/kE9BczSQcF1xRjhtLslEtdjV+H76y1c/N4u2eNgTOpvXeWXil
	xeMWT/JUGiFdWgHQQtOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1Af-0003pl-3S; Wed, 27 May 2020 18:52:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1AZ-0003pK-O7
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 18:52:53 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E298B2075A;
 Wed, 27 May 2020 18:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590605571;
 bh=IzmIC3jCbsY7O2IfmPtRly6W+l04C4nWbvVFB0I2evI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hkq12V8jNl27N+ZiNuzBv9aCKbVOrDpnJ8Rva+5sPH/Ygob2MClJIEsPMyuqweUxe
 bPt7JjpLTdgd8jGVTPTPVSKB6UGKPilKnnzh1ahSVmwS2bZmFpHLsvHcZK/nhaL01n
 UmglV77JpW5i8iewow5OeCAvebQ1v4VMO3LoF/XY=
Date: Wed, 27 May 2020 11:52:49 -0700
From: Keith Busch <kbusch@kernel.org>
To: Alan Adamson <alan.adamson@oracle.com>
Subject: Re: [PATCH 0/3] blk-mq/nvme: improve nvme-pci reset handler
Message-ID: <20200527185249.GA3442470@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200520115655.729705-1-ming.lei@redhat.com>
 <22083f76-43f5-38a1-0e2d-84b626a6fd50@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22083f76-43f5-38a1-0e2d-84b626a6fd50@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_115251_849189_17E21F67 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:09:53AM -0700, Alan Adamson wrote:
> [=A0 139.895265] CPU: 5 PID: 2470 Comm: kworker/5:1H Not tainted 5.7.0-rc=
7+ #1
> [=A0 139.895266] Hardware name: Oracle Corporation ORACLE SERVER
> X6-2/ASM,MOTHERBOARD,1U, BIOS 38050100 08/30/2016
> [=A0 139.895271] Workqueue: kblockd blk_mq_timeout_work
> [=A0 139.895272] Call Trace:
> [=A0 139.895279]=A0 dump_stack+0x6d/0x9a
> [=A0 139.895281]=A0 should_fail.cold.5+0x32/0x42
> [=A0 139.895282]=A0 blk_should_fake_timeout+0x26/0x30
> [=A0 139.895283]=A0 blk_mq_complete_request+0x1b/0x120
> [=A0 139.895292]=A0 nvme_cancel_request+0x33/0x80 [nvme_core]
> [=A0 139.895296]=A0 bt_tags_iter+0x48/0x50
> [=A0 139.895297]=A0 blk_mq_tagset_busy_iter+0x1eb/0x270
> [=A0 139.895299]=A0 ? nvme_try_sched_reset+0x40/0x40 [nvme_core]
> [=A0 139.895301]=A0 ? nvme_try_sched_reset+0x40/0x40 [nvme_core]
> [=A0 139.895305]=A0 nvme_dev_disable+0x2be/0x460 [nvme]
> [=A0 139.895307]=A0 nvme_timeout.cold.80+0x9c/0x182 [nvme]
> [=A0 139.895311]=A0 ? sched_clock+0x9/0x10
> [=A0 139.895315]=A0 ? sched_clock_cpu+0x11/0xc0
> [=A0 139.895320]=A0 ? __switch_to_asm+0x40/0x70
> [=A0 139.895321]=A0 blk_mq_check_expired+0x192/0x1b0
> [=A0 139.895322]=A0 bt_iter+0x52/0x60
> [=A0 139.895323]=A0 blk_mq_queue_tag_busy_iter+0x1a0/0x2e0
> [=A0 139.895325]=A0 ? __switch_to_asm+0x40/0x70
> [=A0 139.895326]=A0 ? __blk_mq_requeue_request+0xf0/0xf0
> [=A0 139.895326]=A0 ? __blk_mq_requeue_request+0xf0/0xf0
> [=A0 139.895329]=A0 ? compat_start_thread+0x20/0x40
> [=A0 139.895330]=A0 blk_mq_timeout_work+0x5a/0x130
> [=A0 139.895333]=A0 process_one_work+0x1ab/0x380
> [=A0 139.895334]=A0 worker_thread+0x37/0x3b0
> [=A0 139.895335]=A0 kthread+0x120/0x140
> [=A0 139.895337]=A0 ? create_worker+0x1b0/0x1b0
> [=A0 139.895337]=A0 ? kthread_park+0x90/0x90
> [=A0 139.895339]=A0 ret_from_fork+0x35/0x40

The driver reclaimed all outstanding tags and returned them to the block
layer. This isn't faking a timeout anymore. The driver has done its
part to reclaim lost commands. This is faking a broken block layer
instead.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
