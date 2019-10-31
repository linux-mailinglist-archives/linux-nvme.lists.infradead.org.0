Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830BEB308
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 15:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qj4aF38BF/fi5K92Xdd0EgA6Rk4OYa3VdeHwDdFYYkU=; b=HQlcz6rXfC6m+P
	bQDEzLc2mpo16VVn/MeCykPuwQuMJehyF2NOTqqWEo4+Ar8kj77rWb4lxm17M1o1VBxShpmhzzyme
	lTKBaQRWiMUswRJ3vp9jM0hWxhQijF9PgunRzVUR1GxhzsziiAfHr5B89TCcewzaEB1QzR7/Wq3ne
	F0tPuWWqTo4Pz8meZwokmlPBBRLHDH2JVbeMtrFyyiuWQQNh2d7MSPsJ66ktHMTIewqiS5l8nrDVf
	59lzi1CKHy9KtTDsutzCoADujJeERla4VGeGTpIiS41xEXkMK1utcvuPNtS60J/jyV38NyM0JeVWt
	MRiDEGLOoZY9SAC3KrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBf9-0005us-3b; Thu, 31 Oct 2019 14:42:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBf3-0005uA-7n
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 14:42:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BAB5168BE1; Thu, 31 Oct 2019 15:42:47 +0100 (CET)
Date: Thu, 31 Oct 2019 15:42:47 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvmet: allow block device to use buffered I/O
Message-ID: <20191031144247.GA6024@lst.de>
References: <1572409583-3109-1-git-send-email-chaitanya.kulkarni@wdc.com>
 <20191030063609.GB16863@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030063609.GB16863@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_074254_648146_DE358306 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 03:36:09PM +0900, Keith Busch wrote:
> On Tue, Oct 29, 2019 at 09:26:23PM -0700, Chaitanya Kulkarni wrote:
> > NVMeOF target already has a support to execute requests in the
> > buffered I/O mode with file backend. This patch allows=A0block devices
> > to be used with file backend code so that buffered I/O parameter can
> > be set for a block device backed namespace when newly introduce
> > configfs parameter use_vfs=3D1.
> =

> Is the fs overhead so bad that we can't just remove the bio based nvme
> target? It seems low enough that having a single path to optimize is
> worth considering.

Once we go down bemchmarketing for latency and iops it matters, as it
is significantly less code and cachelines.  The actual I/O pattern is
the same, so for more usual setups that do bigger I/O or have slower
devices they'll be mostly the same.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
