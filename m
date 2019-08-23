Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71399A41D
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 02:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMzHHpSa9xiDW+7tsfomNS1uHDerHgtxNMD13Ro2/0Q=; b=dJQdN2FZYBGWPQ
	E8Coa6vJ60hErk9ngUJ9Z7Nkdnln3lTRRM8qcLsoee6SkjcWdXPYDDy19/3rEvOflI/sT3yuG0Ja3
	buFrWsCConuLZD8+XBZTH0anlwBNzw3hJxh0A5swfM+M22QOTreCII0Rr3rDFI7aJpkHOwo24CyJb
	EK1onW7yNJpamRpAoHyICiB/TVNO4eHKc53emmkeqdM5enO0qRrvr2QC8NRjLs1qpiwFarXfAEkvw
	stk1RTM4mksdr91wXS4GC65ufv5f6c7I8ckH2ya6JrIHW8HPVB9I1VlsiDTIzhRVsmcvGjmX8dvB/
	jT1ZKw9jY8w0QPRrgLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0x12-0004w9-Rg; Fri, 23 Aug 2019 00:01:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0x0y-0004vX-Bg
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 00:01:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 13B2B68B02; Fri, 23 Aug 2019 02:01:06 +0200 (CEST)
Date: Fri, 23 Aug 2019 02:01:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
Message-ID: <20190823000106.GA2386@lst.de>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
 <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
 <877e75b2j5.fsf@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e75b2j5.fsf@solarflare.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_170112_554727_0ACCE923 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static inline void nvme_trace_bio_complete(struct request *req,
> +					   blk_status_t status)
> +{
> +	struct nvme_ns *ns = req->q->queuedata;
> +
> +	if (req->bio && req->cmd_flags & REQ_NVME_MPATH)
> +		trace_block_bio_complete(ns->head->disk->queue,
> +					 req->bio, status);
> +}

I think req->bio must be true for REQ_NVME_MPATH.  Otherwise this is
exactly what I'd like to see.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
