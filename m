Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7B26BF7
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 21:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL3ZKt4K19vbEDm0cVZ2cYlPsAtFWfE3u/hlthtpJes=; b=dbky27RHrBao5T
	qpYuBkNqoK+7ZepVd9GCKpOEGoksxRY6J61H1snXmT3ulOqcc+4dSN2SJv6OwWmXVNjdb7LE50VYn
	CxNCBTitXRkS+eg3xIU9ku2l8OAFcnRbehXJh4QwYsuKzJtA76ZhjXXbrdZZ48kCOPapZUaIssjQz
	gO1KK9u8sA3i9ycmssT2m7yvqT5zZibiOba6oPuutgcRPrLXa/WHsPuaEUh3rmB45QSUdvWjLz+hT
	+5uXGgHE/Gur6jm5n/OoRJ7zxqpazAjbKyv2epsl87R1Xoo464q2L6TYkPsCB2ndY6aNcCe3gCkKl
	uCAZMj47t5cAf++uw/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWy5-0006x0-K2; Wed, 22 May 2019 19:32:05 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWy0-0006wE-O0
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 19:32:01 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:00 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 12:31:59 -0700
Date: Wed, 22 May 2019 13:26:57 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kenneth Heitke <kenneth.heitke@intel.com>
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
Message-ID: <20190522192656.GB5486@localhost.localdomain>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522003741.26755-1-kenneth.heitke@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_123200_827318_1F0683B1 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 06:37:41PM -0600, Kenneth Heitke wrote:
> If an admin command timeout occurs while a PCIe reset (FLR) is
> pending, the CSTS bits may not be valid which could result in
> the controller being removed.
> 
> [372337.996566] nvme nvme0: I/O 0 QID 0 timeout, reset controller
> [372339.984662] nvme 0000:1c:00.0: enabling device (0000 -> 0002)
> [372339.984951] nvme nvme0: Removing after probe failure status: -19

The disable reclaims all commands, including the ones it dispatches, so
it sounds like you're talking about a race between the ones it dispatched
and its timeout work. If so, we can just make sure commands sent during
nvme_dev_disable never timeout, which are just the delete queue commands:

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f562154551ce..4678704c2138 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2210,7 +2210,7 @@ static int nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
 	if (IS_ERR(req))
 		return PTR_ERR(req);
 
-	req->timeout = ADMIN_TIMEOUT;
+	req->timeout = UINT_MAX;
 	req->end_io_data = nvmeq;
 
 	init_completion(&nvmeq->delete_done);
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
