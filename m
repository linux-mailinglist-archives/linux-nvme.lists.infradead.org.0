Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81732B5ED
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 14:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cz+s11/BKQeaoFDI36AIHKUKmCDCuXcV7lV8Wo+Am3I=; b=lMst27rLYe8JZr
	vESe9f7aBeHXxqNG5UG0voBB+Ft2d/QZ3qrG6mx27ZtY+qc+RBZF9KluXqf0tGq96Mt5jPR0O0OQm
	D5X8ZT/Ufo5qZvu9UXtZ4wwsyXOUL9nBRIGb3uBdtxgVIIbUVQL7Ad7uAvDD4sDXSAnNOSB/7fyK8
	3nq9E4IbCVuH+toU9iHxf3/f2eAHGB5zqo8MBPc/+vZoz31TEpSGXXAUba3Heldw8QvhGwV7IWbRq
	fKpcPKOCxMrZtBybyW18mvVkklSNqxfkF8Oj98JDnOjCLRl4fBjJHe7TVW2pSz9MCiFUG/r0RPpYy
	Bn+omsCD1oZy6T7uZtlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKiXo-0002cP-Nt; Sun, 28 Apr 2019 12:04:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKiXj-0002bK-E0
 for linux-nvme@lists.infradead.org; Sun, 28 Apr 2019 12:04:29 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 749C968B05; Sun, 28 Apr 2019 14:04:05 +0200 (CEST)
Date: Sun, 28 Apr 2019 14:04:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V4 1/3] lib/sg_pool.c: improve APIs for allocating sg pool
Message-ID: <20190428120405.GA4281@lst.de>
References: <20190428073932.9898-1-ming.lei@redhat.com>
 <20190428073932.9898-2-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428073932.9898-2-ming.lei@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_050427_620777_5FE1E4D2 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.com>,
 Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>, netdev@vger.kernel.org,
 "Ewan D . Milne" <emilne@redhat.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Chuck Lever <chuck.lever@oracle.com>, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
