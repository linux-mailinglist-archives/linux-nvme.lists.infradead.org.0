Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB5A98892
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfppM8DgneDAjUwEbJgcCPvLHLKlwCPCQwgH17zu8C8=; b=JgekU9EMpxThmv
	UynGXkhDtto+M4IKGh7NjQF5AOy6TfoY6tk85MynaI/oftCERWX2lDHHkNIlzjwDBctiRBJ10/hQ2
	O9MF9EN7I6hFb4RPMndnN/iKJwNOlY8fyhAAbLlZlsbUm/P5aie7LNXHDA1+TbHvjzUoXeUe8pMgI
	nYkvm07YoQBWUrNEgw9IXpvRgpn+G9ToWIHSdtYpsCOun0ob2sDMhQYc4U+1MVJ5nDcKmURyklKZI
	mXyGByGqWIHuoaVcMmxDQHN2G73h/QDptAtmqtts7vUR1RTIwGTlk/7p7gRR4euYJNERdWycmH5SI
	TiKuYb/V1+KoNSIOMnnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b6W-0006AH-6J; Thu, 22 Aug 2019 00:37:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b6Q-00069t-Qm
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:37:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2322F68BFE; Thu, 22 Aug 2019 02:37:20 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:37:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 1/6] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
Message-ID: <20190822003719.GI10391@lst.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-2-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173723_019965_E54BE19A 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 07:49:50PM -0700, Sagi Grimberg wrote:
> NVME_SC_ABORT_REQ means that the request was aborted due to
> an abort command received. In our case, this is a transport
> cancellation, so host pathing error is much more appropriate.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
