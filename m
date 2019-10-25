Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BCBE5751
	for <lists+linux-nvme@lfdr.de>; Sat, 26 Oct 2019 01:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS6etAOc+6bfK1KinCc/LAow3JuQjyn8+4P5ajeZv/o=; b=RqAWoWkwIDxFFY
	5zlMMAegrq7FI26VgmXepHS3fX/7VIZiyrrIjNyAh5q7GMxD0T7eGPbfTMZ11ykl91YGH85pmFz8Q
	8dqBcElSQvfDTc9HyAGIW8rodgGxDxzyggZliXcdjMT6XKWIEjLnmuIlaco88DulAFQ3qWZDhGoMx
	skQGn2LgXXyxYNTDD6mfh/yJzX0cjYXS/95D+RGJ53Rz/UV93PZcKcyZXOxhdTnAD8eif7rPp6oaI
	EXvPOab1TS1ie/BEa76LkBJS4L6jj07sD82uR3l3FP6HJI7WjcQwC8YzHUupIb9+hgAEyW5S55ulh
	9/goLZ++ZPNirfC4Ybgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9TA-00037L-0a; Fri, 25 Oct 2019 23:58:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9T2-000372-94
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 23:58:05 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20566206E0;
 Fri, 25 Oct 2019 23:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572047883;
 bh=DCSLD8b6nF368+9qOsao2twIZ3wvvVlpSF9QZ0Md0Hg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HsS9jvaRIXmkq970vIkLXE0MAgl4P5paKvsO7iQGVQg4apc2nQ5zFE2nW8FB5HhiZ
 8yD25obdWEefEWfGgUhE61MweSDrkSA+m1oLyadmJHj78ZrBEQY6holnabH67mf9lY
 d+e7HNAGGjEc2HLDapWHBTPdrobse/U1sTAneeio=
Date: Sat, 26 Oct 2019 08:58:00 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH] nvmet: Cleanup nvmet_req_init() branching
Message-ID: <20191025235800.GB23826@redsun51.ssa.fujisawa.hgst.com>
References: <20191025193739.9878-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025193739.9878-1-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_165804_341014_2B1AAB9E 
X-CRM114-Status: UNSURE (   7.91  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 01:37:39PM -0600, Logan Gunthorpe wrote:
> This is a prep patch for the nvmet passthru patch set. It was part
> of Christoph's feedback.

Looks like he sent the same patch just ahead of this one.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
