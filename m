Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3A3166363
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 17:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otPQo7NJbhefJ6K4ghgQuzc809+OIvtZuE1MDbGeEsI=; b=Y5kMhOgC52ObNm
	xReaRnmlbJ1/2GfV5ZqSFDd7gmv7ZR9vlgbB8GEvdPmYBBQDrSuURINPHfqoU2+h/TfWTZifL/la7
	mGaNTwyj7NXg6EC5bt2zIceOFfBAVfKODPSZbcOyKR2nKShwnkV5wJjVfmMyQsHqqwkP5jh2Su1Kl
	46QfLJNIIyaFoEWLaXUClbp6BPXG4V/1T3UviMv03vezp2lpHnXlduHJAdRzLPRyZ+xq/XPbvye/9
	7dvdHHKXWbYs2ZeXRWObkGhZMuvn3K1PbS2Xvir5oMJBhlHq8y+VtaMBE+dbCSAx0H7oCNizPqw/V
	03ARGXjbtiKFDwTx9xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oyq-0001Dk-0g; Thu, 20 Feb 2020 16:47:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oyk-0001Cd-VW
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 16:47:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0B1BA68BFE; Thu, 20 Feb 2020 17:47:05 +0100 (CET)
Date: Thu, 20 Feb 2020 17:47:04 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-multipath: do not reset on unknown status
Message-ID: <20200220164704.GA13560@lst.de>
References: <20200220145241.12982-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220145241.12982-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_084711_161519_BE5ABBED 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: hare@suse.de, John Meneghini <johnm@netapp.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:52:41PM +0900, Keith Busch wrote:
> From: John Meneghini <johnm@netapp.com>
> 
> The nvme multipath error handling defaults to controller reset if the
> error is unknown. There are, however, no existing nvme status codes that
> indicate a reset should be used, and resetting causes unnecessary
> disruption to the rest of IO.
> 
> Change nvme's error handling to first check if failover should happen.
> If not, let the normal error handling take over rather than reset the
> controller.
> 
> Signed-off-by: John Meneghini <johnm@netapp.com>
> [changelog]
> Signed-off-by: Keith Busch <kbusch@kernel.org>

This pretty much looks like my edited version of Hanne's patch with
John's changelog and your edits..

>  		if ((req->cmd_flags & REQ_NVME_MPATH) &&
> +		    nvme_failover_req(req))
> -		    blk_path_error(status)) {
> -			nvme_failover_req(req);
> +		    nvme_failover_req(req))

This conditional could now fit onto a single line.

Otherwise this looks fine to me.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
