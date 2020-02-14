Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305A715D958
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 15:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Zz7IBtBf4kXqkmjcgO/ZOYsdPapqVm49ZVSNmI49tw=; b=SJEO3ZZ4Pan2S7
	x3NW47MzkJSifEKaE7IiIiO5mX+TiW60Y8lzLZ9cCXN8Utu3aCc62t3kXpXjoBG7m3McxNwb7JMuN
	0OKObXNx0R3FN+g1YFuC7skiVditwzmKk3YjqiGYQCzl9T/FiMf5MOsb8aOMDZSCaphSS4r89Am9y
	Ql8SDaSh0NeUREPPTLjNdoMgE5TcRjAvtLS8glmfgrvsGieNKMl/uqZ/Dz5CFu6uF0UHPWXm9cuJo
	xs+K76W4zEGRKHccFyXkFxWfAla9fzjkssPV0oNglWQwbeP4agLqKgEopbHMhknnAtpHJrgng7eqR
	VkaBz1GI0P+b08LFFYBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2brr-0007MS-Gn; Fri, 14 Feb 2020 14:22:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2brl-0007Lr-8o
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 14:22:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78756206B6;
 Fri, 14 Feb 2020 14:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581690168;
 bh=3ZnU/ngbxru0mZrNhE/JQnKFg7M5dmh+U895A6Mj3ws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W21DxCIzomhMYXbg6/tbtz6/CGrjQLT1tMUouGCrcHQ4m68hLZ58UQPeOj5lYdSzN
 iDnv0PdwPd5wh1kMxImjXEjkCc494RxzpeALqJ+kI0wk30K/g7LRtekUjkD+q+lRne
 h0oq3h36orSvQ1RQ85UchwukOIeuUhBfU/sYXuw8=
Date: Fri, 14 Feb 2020 23:22:42 +0900
From: Keith Busch <kbusch@kernel.org>
To: Yi Zhang <yi.zhang@redhat.com>
Subject: Re: [PATCH] nvme-cli: memblaze: change to 100644 mode for
 memblaze-nvme.c
Message-ID: <20200214142242.GA9819@redsun51.ssa.fujisawa.hgst.com>
References: <20200116075658.24938-1-yi.zhang@redhat.com>
 <0385dd9c-5b8f-c5e7-92e6-4ef70c25573a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0385dd9c-5b8f-c5e7-92e6-4ef70c25573a@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_062249_326628_CCB1F705 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jian.ding@memblaze.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 07:07:21PM +0800, Yi Zhang wrote:
> ping
> 
> On 1/16/20 3:56 PM, Yi Zhang wrote:
> > Bellow WARNING observed with rpmbuild -bb rpmbuild/SPECS/nvme-cli.spec
> > *** WARNING: plugins/memblaze/memblaze-nvme.c is executable but has
> > empty or no shebang, removing executable bit
> > 
> > Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
> > ---
> >   plugins/memblaze/memblaze-nvme.c | 0
> >   1 file changed, 0 insertions(+), 0 deletions(-)
> >   mode change 100755 => 100644 plugins/memblaze/memblaze-nvme.c
> > 
> > diff --git a/plugins/memblaze/memblaze-nvme.c b/plugins/memblaze/memblaze-nvme.c
> > old mode 100755
> > new mode 100644

Thanks for the ping, patch applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
