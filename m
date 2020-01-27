Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78114A82F
	for <lists+linux-nvme@lfdr.de>; Mon, 27 Jan 2020 17:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMZeFjvy+ty8WgnmPmoJ9H/CCQ3cJ6xxK0ASJREkF/g=; b=Cz/K2z+YefeoAd
	4G43FgA0i5S6CpFOqFtlbjUm42mSzKl7pw8HQXZrbEa6lHivAIGSH1kRTV4uV6uYzZDpEM81usrwL
	LWlrFylgvGSCqquoaVg3QxGxmzKMljdE/EcSMWSS7JrOCwHm6TEpoFFX4O9wIYXRXZOPk5FFZs0bH
	KswuiPiB1Od/vLCdhr0HylqlQrwekPIJaZeoxAy8I1VogLRRPXnqWLq5bHNWAUk82XePebBUFI0Xd
	BfMiUN4vvQ+uF7sewt+4Gc341Y0dJqF54wx+AsTjHYgbaoNIKS3mikt6z+5SoBumAx2tLnx93yFIb
	PyG8YPQduXgC5cABTdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw7OV-0003ui-3h; Mon, 27 Jan 2020 16:37:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw7OO-0003uL-JU
 for linux-nvme@lists.infradead.org; Mon, 27 Jan 2020 16:37:41 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC674206D4;
 Mon, 27 Jan 2020 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580143060;
 bh=YUAYh2KXzQQSaYMFnrWwnL6HIPAkLdtS4FiFSPVJI2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j5t9r+9ufzpSYqyAz3rWZhq00kznRK9q+4ixXrr0ly9ynQgxamFEOQeNAeakxIKH8
 kvVp1vg6POZKwOeeAlNWkVi0/oW9K5GgEgtWknR1iMsTyNnzzGbBbEL/PMUR3wyGLW
 wS9Fcw2sZKBZ8aCLxo9yw2HBGHUwprFAQZ6lezAc=
Date: Tue, 28 Jan 2020 01:37:37 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvmet: fix dsm failure when payload does not match
 sgl descriptor
Message-ID: <20200127163737.GB17848@redsun51.ssa.fujisawa.hgst.com>
References: <20200127072328.7653-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127072328.7653-1-sagi@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_083740_657761_BB1E2B1A 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 11:23:28PM -0800, Sagi Grimberg wrote:
> The host is allowed to pass the controller an sgl describing a buffer
> that is larger than the dsm payload itself, allow it when executing
> dsm.
> 
> Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> Changes from v1:
> - remove redundant symbol export

Thanks, rebased for-5.6 with this version.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
