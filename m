Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD2B1E88E2
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 22:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jOIWviODG15UYdcOfizeEtPf6uE8OO492XEKe5pWEY=; b=LxYibwUlqO7RAp
	xBxqDSDXu/vHfQcMn24beutjtqLRAB4LAeSdBls/NjMXTiOjBiQ2VtT87jXhQF1Jg4b3NgW0ZkUCs
	857eQBffjtm/eGHbLLpDFamvNaRHdosfEtx5DjEAP1HFek6TDiqHSWLDtRgF2CVYFFtSgsYM2ugvT
	O4ceNRj7pj9/koespsXwnLF1C8jzsbkD4KTmwTP4NIZ2OkPafyjnJ/j8aMVJesh7HM2XI4agfEFxZ
	O2m/5/vXkusno73DWyD3ldZUaByKufXLdryJxe58EJiYrIojEjebMdo/Vn6iRkvjQoX/gg7Brd9+c
	b063EoOh9sP0uVAj3w0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelbl-0008HB-11; Fri, 29 May 2020 20:28:01 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jelaz-0008Ci-I1; Fri, 29 May 2020 20:27:13 +0000
Date: Fri, 29 May 2020 13:27:13 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Kaitao Cheng <pilgrimtao@gmail.com>
Subject: Re: [PATCH v2] blkdev: Replace blksize_bits() with ilog2()
Message-ID: <20200529202713.GC19604@bombadil.infradead.org>
References: <20200529141100.37519-1-pilgrimtao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529141100.37519-1-pilgrimtao@gmail.com>
X-Mailman-Approved-At: Fri, 29 May 2020 13:27:56 -0700
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
Cc: hoeppner@linux.ibm.com, heiko.carstens@de.ibm.com,
 linux-nvme@lists.infradead.org, dhowells@redhat.com, clm@fb.com,
 deepa.kernel@gmail.com, houtao1@huawei.com, hch@lst.de,
 linux-s390@vger.kernel.org, bvanassche@acm.org, darrick.wong@oracle.com,
 mark@fasheh.com, satyat@google.com, hch@infradead.org, borntraeger@de.ibm.com,
 gor@linux.ibm.com, ajay.joshi@wdc.com, chaitanya.kulkarni@wdc.com,
 chao@kernel.org, josef@toxicpanda.com, ming.lei@redhat.com,
 viro@zeniv.linux.org.uk, songmuchun@bytedance.com, dsterba@suse.com,
 jaegeuk@kernel.org, jlbec@evilplan.org, sagi@grimberg.me, axboe@kernel.dk,
 balbi@kernel.org, damien.lemoal@wdc.com, martin.petersen@oracle.com,
 joseph.qi@linux.alibaba.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 asml.silence@gmail.com, linux-btrfs@vger.kernel.org, sth@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 10:11:00PM +0800, Kaitao Cheng wrote:
> There is a function named ilog2() exist which can replace blksize.
> The generated code will be shorter and more efficient on some
> architecture, such as arm64. And ilog2() can be optimized according
> to different architecture.

We'd get the same benefit from a smaller patch with just:

--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -1502,15 +1502,9 @@ static inline int blk_rq_aligned(struct request_queue *q, unsigned long addr,
 	return !(addr & alignment) && !(len & alignment);
 }
 
-/* assumes size > 256 */
 static inline unsigned int blksize_bits(unsigned int size)
 {
-	unsigned int bits = 8;
-	do {
-		bits++;
-		size >>= 1;
-	} while (size > 256);
-	return bits;
+	return ilog2(size);
 }
 
 static inline unsigned int block_size(struct block_device *bdev)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
