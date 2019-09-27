Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53A1C0D53
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1QCJIOlhEsNi5VUDpXPmM923MWS3mA7HEPt3Z8ykvw=; b=kCQs2BtYvqIfkv
	2Au4EZbB5N7ODjngKCT0IQ2wYaDPVqQouF/m3ii+NQSq9QM9Vb4Pw5u8ZN6RVrAxcOBtJsWaEYLBA
	lsbMJ3dYCtyqlFUKm21ht59NATSMCk/d2y+HIuvG7tqHNyblaS2ijMZURNp+Aye0Zxk9xw5QHOC9l
	N5R2ydRGhlcJ3yGzeAUk5dcg/SP7fho335gvIOPdPuaqfphRD33IizYBc35UwgUE8p3Rl4xyBSw1l
	IU4chAJTTDD3UtLQFSQiOHj/7q+FYXMnTCGv8LfG7N1pxHPCI1vrKvXggOooVi5KkPLqeKdsdRXSR
	DIwMv6/svGcau81q30Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxti-0002Xq-5U; Fri, 27 Sep 2019 21:35:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxtc-0002XN-Cd
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:35:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A41E468B05; Fri, 27 Sep 2019 23:35:21 +0200 (CEST)
Date: Fri, 27 Sep 2019 23:35:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: kbusch@kernel.org
Subject: Re: [PATCHv2 2/6] nvme: Remove ADMIN_ONLY state
Message-ID: <20190927213521.GH16819@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-3-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919213431.7864-3-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_143524_585682_0E80D5F8 
X-CRM114-Status: UNSURE (   8.43  )
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
Cc: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 06:34:27AM +0900, kbusch@kernel.org wrote:
> @@ -3585,11 +3571,9 @@ static void nvme_scan_work(struct work_struct *work)
>  	struct nvme_id_ctrl *id;
>  	unsigned nn;
>  
> -	if (ctrl->state != NVME_CTRL_LIVE)
> +	if (ctrl->state != NVME_CTRL_LIVE || !ctrl->tagset)
>  		return;
>  
> -	WARN_ON_ONCE(!ctrl->tagset);
> -

It would be nice to throw in a comment here on why tagset can be NULL
here and what that means to make this a little easier to decode for
future hackers.  Except for that the patch looks fine to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
