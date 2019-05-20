Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9C923213
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 13:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GZVdRT5LtJnM0JQFl8GNY6NzJ/E9B7FmOzWo6TFyy8=; b=YkZ6h/j5o3b+eK
	gWtJfPjY7Zxea58zbO2Ehaq4hU23iU6ufQmLV+cj7G8uJXi95LB+bMXAoIp6mT3DDa0mfKcMoirgX
	as/RkQUwdI8hia+SkJUbJqxmA8ou9mz2a+J0t62PothPfodYhKzoUJbObTXRX/o7OkXWjR+ufStGJ
	W9Fkxm3uvQ80dENJf3E0dnHwtupePSEoRCgcon8gMnqBGwXetZVhqcuirKRWbDWj/4pjAPeXHjtzD
	WYIydNdJJJZhl7Wjd0P2O/+ILwChmB2Gi+TJxcgp+2udhOhQfcM8gTz5+tIlipeM0jSopU00YgJ+5
	jEdth68beC9D27VQtLGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgHQ-0003ZO-M5; Mon, 20 May 2019 11:16:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgHL-0003Ye-5y
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 11:16:28 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9197F68B20; Mon, 20 May 2019 13:16:01 +0200 (CEST)
Date: Mon, 20 May 2019 13:16:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH] nvme-pci: fix single segment optimization
Message-ID: <20190520111601.GC5137@lst.de>
References: <20190517225035.25008-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517225035.25008-1-ming.lei@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_041627_372601_ABA90375 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Given that the code only showed up in 5.2 I'd rather try to fix the
block layer issue, lets see what Jens says.  But if not I defintively
want the comment from my earlier patch, and to me the
!req->bio->bi_next && req->bio->bi_vcnt == 1 check also seems slighly
easier to parse.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
