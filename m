Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE1439291
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXwJXZ8+GdxHSzcgicOhxyzSx8ZKORBmd93/wLmb5d0=; b=VBhX7oC23Z7gMg
	JxwijOWfiRnxcggJSdgMX4cqh0LlTa7p1xrNNF2vciONQWLHnTExIbIPXF/RH9mN0RO7d7q885Ub4
	M1onZJpm1KW2VlwJs9ZMxVMu8/8sW+bqO64n5ORRoU+GkQ6FwLV/viAM3YSKY5GxK+0PXTxE1COzt
	HQFf/eZwHMlRP5Cb5yoBxC7SJsgwOrjRKgabMNO1khljAsqrizQjE21ahrm2hk05BcHmhWu3rGFke
	4o7yyYNYoS0JT5im6Qqt1+clEE9zcILVmlp9vYo/dSKo3KBwg2GfTrlyejsnI9aWgzDxTesPGKD0i
	khovDt119FyG3yeYAHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI8r-00035H-GK; Fri, 07 Jun 2019 16:55:01 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI8j-00034u-2T
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:54:54 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id CB6DE68AFE; Fri,  7 Jun 2019 18:54:26 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:54:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V7 7/7] nvmet: introduce target-side trace
Message-ID: <20190607165426.GJ7307@lst.de>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-8-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606194512.11020-8-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_095453_265800_550F84C9 
X-CRM114-Status: UNSURE (   6.73  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I'm not a native speaker either, but maybe s/totally/entirely/ in
various places?  Otherwise this looks good modulo the comments to
the previous patches.  Also if someone has a better idea how to
share code without creating a new module or bloating the core
kernel please speak up now.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
