Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160D639278
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zc0EIzPD/0v4syOXKxNtRcHi/HFcfl5WAzv+o9rcNK4=; b=I5Ix45+TfpuJy0
	VCuoFTH3jJcPUW9NN/bCppnItiDsxRZqEl7UosQQiKAYuWn3KAJVaZuW6yTEURp4rJqP68DU6Kht2
	qf963tDL7KYYZP373sxu63AOjQwssjBVYxIko0heq4vz5b1wH9hn+5MhApYc/eP3Sxh7XFleHwxD3
	lnFXP3oefktrVjxJKLlAMLmeaMEsgsEnD8mXYft3TmnT37PK6EHnqx9yK6GqaiF7cddIou9aGX/YL
	e+cRZ/OTiqi/lnSyqC63H4p0n/f8RndA69BXUZV5Bg+5hkPo42U9OF8m0pmIMfuLl5sU7lz0zC1CF
	qm5ESWUTuchKMB+KeIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI0s-0000bv-Ev; Fri, 07 Jun 2019 16:46:46 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI0n-0000b8-Hk
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:46:42 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id F32F768AFE; Fri,  7 Jun 2019 18:46:14 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:46:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V7 2/7] nvme: trace: move opcode symbol print to nvme.h
Message-ID: <20190607164614.GE7307@lst.de>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-3-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606194512.11020-3-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094641_740156_DCBA1AE7 
X-CRM114-Status: UNSURE (   8.29  )
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

On Fri, Jun 07, 2019 at 04:45:07AM +0900, Minwoo Im wrote:
> The following patches are going to provide the target-side trace which
> might need these kind of macros.  It would be great if it can be shared
> between host and target side both.

And maybe for some nvme-cli tracing in the future..

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
