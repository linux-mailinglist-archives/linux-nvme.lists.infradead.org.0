Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E33FE4285
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 06:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFzgg4k9GtQ6BEqk4vvj5D9AYLLSkwYMDCNENPWYsOk=; b=dx+6/Wug2Axxhr
	9TqjbVAWcs4ENS7e+Ek5Zxn8mD7ufkVrmVDbSZcrpeOI/OA6Dmzwaekv/a2vQ6VhEF3km+LkFZg3L
	6CWzx+Fyg//CDrcsrK7Hp7FvzMwvtLleA5+Jxu+TgkTJu5HUT0qLHfd1Zmv+GGgVTBMBGwABx8QYu
	LJyBnks80UTONU+W7LBzTiSrP2kOOL3/bVTmZhg8D36vUHg4tSRLmRlZ3EGkbQ6N0qFHJJjICBM+M
	NkkToq5uiDfIxNIyXwYw/jughBxRV6DAA00GxpUt5PcqoLM9sBh9bbnV9ylkWllbO2d//TCaRj2TA
	1qnPw2D+UZdY9wp11G+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNrBt-0002dd-M0; Fri, 25 Oct 2019 04:27:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNrBo-0002d5-EE
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 04:27:05 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3EB0821872;
 Fri, 25 Oct 2019 04:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571977623;
 bh=to/cv1FmgUyyqn1H/qKdn9fx5oQputczPGIZlZBB17M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FEXo137kVeHTx5lImcRHFfh7AeD4KKp6D+wi2HXhQIbOqSjv5JJY3sEg4xJcSghYY
 I633dyIEfebanlYzD1nRv1NVES6hEPnmmq9wbK2fPr2AFbLhK7lYinTBql+NOfJUSM
 kUZqKFCq4Vj2RMJy2uPe8fBN/3Vz/NEvNCWH0z5c=
Date: Fri, 25 Oct 2019 13:26:58 +0900
From: Keith Busch <kbusch@kernel.org>
To: Mark Ruijter <MRuijter@onestopsystems.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Message-ID: <20191025042658.GB19941@redsun51.ssa.fujisawa.hgst.com>
References: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
 <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
 <FA6B6A9F-649B-4B58-99D0-2D09076E2482@onestopsystems.com>
 <20191025040540.GA19941@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025040540.GA19941@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_212704_517779_F62347C4 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 01:05:40PM +0900, Keith Busch wrote:
> On Thu, Oct 24, 2019 at 11:30:18AM +0000, Mark Ruijter wrote:
> > Note that I wrote this patch to prove that a performance problem exists when using raid1.
> > Either the md raid1 driver or the io-cmd-bdev.c code has issues.
> > When you add an additional layer like the VFS the performance should typically drop with 5~10%.
> > However in this case the performance increases even though the nvme target uses direct-io and the random writes do not get merged by the VFS.
> 
> Are we really using direct io when nvme target is going through vfs,
> though? That should happen if we've set IOCB_DIRECT in the ki_flags,
> but I don't see that happening, and if that's right, then the difference
> sounds like it's related to buffered IO.

Err, I see we actually default to direct when we open the file. You'd
have to change that through configfs to use buffered, which I assume
you're not doing. My mistake.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
