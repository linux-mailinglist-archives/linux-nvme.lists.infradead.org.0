Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F1B1DB612
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 16:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pdMPwnDHIJAaI8tpaehVVzfrYiHGdyOCpW5X3nv420=; b=pCnlIbOaJM/2Rj
	acaESZHl4qMe3JkBXx9FljIz2SZXKZXvFZEZGB+azOaRfM/5LEb/EhHh/5EKoHP6UFDuCLooHaUH/
	LJKu6WLFMFIZ4ptlwB7gfxTmBigjF/JQX8Jb0Mr/3FFx8RncVFf1FTq6T3dG/U1gDmarYo3U5Vo6p
	26JkHYxC39ol6Zl/oceMrbyXgCCjOS3HhfeyYTyHsTsCsLoCGwYocnvEeuStJde2lHt/Lx1xs6zA9
	HxqZnyvgpAPFsbcMccoMVzB+Igadq4mvuY86/g/wrbv3fmaXiQ+sYrmzWMI0Ay3B/ki1bdwggMjOY
	vTCUfh3wxxslYewMPiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPYN-0004NG-4b; Wed, 20 May 2020 14:18:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPYI-0004Mo-3F; Wed, 20 May 2020 14:18:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9508368C4E; Wed, 20 May 2020 16:18:30 +0200 (CEST)
Date: Wed, 20 May 2020 16:18:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 20/33] ipv4: add ip_sock_set_recverr
Message-ID: <20200520141830.GA28867@lst.de>
References: <20200513062649.2100053-1-hch@lst.de>
 <20200513062649.2100053-21-hch@lst.de>
 <0ee5acfaca4cf32d4efad162046b858981a4dae3.camel@perches.com>
 <20200514103025.GB12680@lst.de>
 <9992a1fe768a0b1e9bb9470d2728ba25dbe042db.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9992a1fe768a0b1e9bb9470d2728ba25dbe042db.camel@perches.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_071834_825703_1B33F7E3 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-nvme@lists.infradead.org, Eric Dumazet <edumazet@google.com>,
 target-devel@vger.kernel.org, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, cluster-devel@redhat.com,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-block@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Neil Horman <nhorman@tuxdriver.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 Vlad Yasevich <vyasevich@gmail.com>, linux-kernel@vger.kernel.org,
 Jon Maloy <jmaloy@redhat.com>, linux-sctp@vger.kernel.org,
 Ying Xue <ying.xue@windriver.com>, "David S. Miller" <davem@davemloft.net>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 04:51:26AM -0700, Joe Perches wrote:
> > Mostly to keep it symmetric with the sockopt.  I could probably remove
> > a few arguments in the series if we want to be strict.
> 
> My preference would use strict and add
> arguments only when necessary.

In a few cases that would create confusion as the arguments are rather
overloaded.  But for a lot of the cases where it doesn't and there isn't
really much use for other arguments I've done that now.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
