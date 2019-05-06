Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324F515003
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 17:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtVorPY/NHCUTlVLWyWksbCIUDo37Vkuy7VFtf9/Yr8=; b=JI8pQ1NabEy0kN
	GjpxRtLyHRTyT1AMkg3IW6jgkpP+aXH9RS4aXFiLUe8OeNunTTtTTvilsWhdMdCV7cFdtnBG+K7aK
	kicTlH+oZzhPQyLnRlUJUcBrZ9MWu00Kcz9nuRZhr7w4dyvzqwwzrTlrbRHXakd7G9KVpvojhX7Ve
	KsdvaoX35kzuhcFl32UZrg2IqsadvVe1hLMetDPfsTi1PwmfnOpUa0AsjY5IDdPGUtpiS3IT3XV05
	FlYARIzw3KX8sd8aEtheyqen8hEnneCaC/FKpQ8NtBYaKBqqQxHURA6v7apLTVgqCAJmDRCd1NZLr
	u/4j/1PeyoTyIsBvID7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfSP-00058f-Ft; Mon, 06 May 2019 15:23:09 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfSL-00058M-F3
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 15:23:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 08:23:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="168444383"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 06 May 2019 08:23:03 -0700
Date: Mon, 6 May 2019 09:17:27 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
Message-ID: <20190506151727.GB2164@localhost.localdomain>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
 <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_082305_517378_E8880023 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 12:07:47AM +0900, Minwoo Im wrote:
> 
> If don't mind, can I ask how can blk_mq_tagset_busy_iter() make sure that no
> more requests are coming into this request_queue during this iteration ?

If a queue is frozen, there can't be any allocated tags, so calling
blk_mq_tagset_busy_iter for such a queue is a no-op.

I'm not sure you actually want to freeze in this path though. That may
block forever if a request needs to be requeued.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
