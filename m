Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD94E94F8
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 03:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyyHza3TDLxrt+fdw9NEQ+eAuzwp+IGqqIQv8HRPBTE=; b=VMfilSLMhxqusj
	1W94l92BdtpENOoCDFO4xNOMIqg8df1SKdcN1jMXwCApVynrphpoPvqqsz0MMaWqUCgpj868G8uvH
	WIX7nBT8kMGuauuc9M/w9MSyr5P7IRoAkm1NSs9eUhV6Ytlj+AZwpNxynA8PMm7l6AYIylIp1GDOF
	Zt3PLiWq9EbG2wsQwAWAyyHX16idDgOK5+fhcs9xL+I9TM3/nMfYlbcWLDJOzW8CHBUK3Gw4yGism
	Mx3+FhflXKm3qL2nlrY6x45DuweoAklaPEDcoH0pTpxOkH6UJ0TLGvu+lhWqIcVtXLM9OuLEYJxQD
	vP//r9EevO/bZ3bP6Qlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPdbg-0004tk-Pf; Wed, 30 Oct 2019 02:21:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPdbc-0004tI-N0
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 02:21:05 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CAD920663;
 Wed, 30 Oct 2019 02:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572402064;
 bh=w0/3kaUB7oCF0vshvYPuesKYeBvfIjAAwdfE2oWpGdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oyB5qy3jMoEteMB3Tr8NkiRbCV052Cx2As2GHK2mlZErKt6AjASTUoTurviAl/o17
 qxWFXtPVueRIGIey8YNKfGmv8GhL42kNTYXdU/7lelIpdXi/Aj/R+bABLRZjHxsRTH
 5PBEcoWm6Njnr7Gv3sgGvHUR+M2MvM/jzSnbzKCw=
Date: Wed, 30 Oct 2019 11:20:57 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/1] nvme-rdma: fix a segmentation fault during module
 unload
Message-ID: <20191030022057.GD15332@redsun51.ssa.fujisawa.hgst.com>
References: <20191029144227.108450-1-maxg@mellanox.com>
 <badcd22c-54ef-a4ab-2080-55f697b184e8@grimberg.me>
 <20191030004643.GB15332@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030004643.GB15332@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_192104_772244_C5F95FFB 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: shlomin@mellanox.com, Max Gurtovoy <maxg@mellanox.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, israelr@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 09:46:43AM +0900, Keith Busch wrote:
> Thanks, applied to nvme-5.5.

Oops, this one is a fixes, so I've put this patch in 5.4, and the other
in 5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
