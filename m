Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159ED1D133C
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 14:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UycO9zlkt95Q4Quf7MP1hAFSVN38KwN0CVakYY4Et0g=; b=BSEc0X636zE4OO
	/2Fra2IoAmqmNTVwnjXTKobUt0duhRbhlYZNAKuG+BdOF73olOGdWqGMhXNX8Pxt2KCJrfSqdzRKJ
	Ttq1w7IzZTxd4udDbeQKvhIBWB5yX8ehVWpPecP/Y0RVAZIqkbyyBcagb79hq1J9j+SwH+QhppqI5
	2qP0jZxUx3T06OUkiFpX7eoCPX+F9+yWwBndgug+GdfbP3kycoyiGAzJRH+rmkVUeY6vxI1Z6kfGN
	rE7lP5Od17lC6ZHIvZSzKSAo/I60ZyqogMtPNn8EYkdhK3gVPgZclzjUAgyamP4PjSjNbMB30gScs
	t4Nf4CYKHqNjxgjXcjeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqrZ-0005Br-Ls; Wed, 13 May 2020 12:51:53 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqrU-0005AT-6A
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 12:51:50 +0000
Received: by mail-qk1-x741.google.com with SMTP id s1so476194qkf.9
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 05:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I21hL7AkwUgdNPUI4l7KTQwvXQoa/NOyWUo4IiS5Zaw=;
 b=m6ad7mNkFXWQP2LAar13cizth8P3iKliOem15ctBmD+RRB5NWWGZ4hVFaLb43OUHF4
 dEfbKyHnbdTPvph0NO3q6QQG3feEsDR1NN/aDJiylAVOx6elqA7EySRBy4zgPJs7Fz0/
 Wh3NuXdccvtT3AKlZIUnJi/oe7DjFVTOpq20lvPm5ktnPdoP012Lk/9j/pUDGJCnQSsG
 TmFagaUtz3vbm20kiJmFo0AhIIm3asYdCe/QXnsQdcQLCh91UXycsxj5M4FwgjK5Th4v
 OuuA5GD8cz9mUhRoZ9e54BvWpbbFTnY1KxAJWQ9Fh7pEfNmqL/JrbXuEeLjTtGaJiHKf
 PtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I21hL7AkwUgdNPUI4l7KTQwvXQoa/NOyWUo4IiS5Zaw=;
 b=S/U48ZIHqgKICaCDyy/OVoVo+Aly1wdUwDoA7BPGYc5PJa3sOiRXx539j4l/Cr4osP
 s4zYwnWLzwYObguh9vOMYDyF9y3ADr5lkRiSqkeaNclQKDM0Iz1JAbaF2jTmFNtYmWc2
 K4lIyacKx/h4jN0cH+ONV2C2fP4xgftcwW09tvT5oi4jYblxk6cTnMy2+1KyCRQ45ucy
 7ZYiQw/AHYw/zA3HNfqp9eAj6n3sXvrcFZNA0kLtgWbEDl7XOTS6Z/5Tnb3oa2aDX2D+
 oSjr/cFtcJINWb6EJ5BAMu6lZylTkV3y0Bx24EyVYxsoLhzL/kQOVSFIIAkwBjcXaofu
 WNFA==
X-Gm-Message-State: AGi0PubFiB/m3p71ctHEdSeRF9D1QQ+8/nyGUUIPSHmHRLiiJV2NBqAV
 B/IpdKt1B6MoNezcd5UspYyO5Q==
X-Google-Smtp-Source: APiQypKy6izjhUbivG+/I6PWV8eR0peu4dabx2HIoItXGvYLmzKEIJJmSlJIMmuJWfJIdDxUx9gC8w==
X-Received: by 2002:a37:61d8:: with SMTP id
 v207mr26564281qkb.146.1589374305465; 
 Wed, 13 May 2020 05:51:45 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id t67sm13779002qka.17.2020.05.13.05.51.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 May 2020 05:51:44 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jYqrQ-0008K6-D9; Wed, 13 May 2020 09:51:44 -0300
Date: Wed, 13 May 2020 09:51:44 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 11/33] tcp: tcp_sock_set_nodelay
Message-ID: <20200513125144.GC29989@ziepe.ca>
References: <20200513062649.2100053-1-hch@lst.de>
 <20200513062649.2100053-12-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513062649.2100053-12-hch@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055148_229706_B43D80E8 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Dumazet <edumazet@google.com>, linux-nvme@lists.infradead.org,
 linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, cluster-devel@redhat.com,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-block@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Neil Horman <nhorman@tuxdriver.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 Vlad Yasevich <vyasevich@gmail.com>, linux-kernel@vger.kernel.org,
 Jon Maloy <jmaloy@redhat.com>, Ying Xue <ying.xue@windriver.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 08:26:26AM +0200, Christoph Hellwig wrote:
> Add a helper to directly set the TCP_NODELAY sockopt from kernel space
> without going through a fake uaccess.  Cleanup the callers to avoid
> pointless wrappers now that this is a simple function call.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/block/drbd/drbd_int.h             |  7 ----
>  drivers/block/drbd/drbd_main.c            |  2 +-
>  drivers/block/drbd/drbd_receiver.c        |  4 +--
>  drivers/infiniband/sw/siw/siw_cm.c        | 24 +++-----------
>  drivers/nvme/host/tcp.c                   |  9 +-----
>  drivers/nvme/target/tcp.c                 | 12 ++-----
>  drivers/target/iscsi/iscsi_target_login.c | 15 ++-------
>  fs/cifs/connect.c                         | 10 ++----
>  fs/dlm/lowcomms.c                         |  8 ++---
>  fs/ocfs2/cluster/tcp.c                    | 20 ++----------
>  include/linux/tcp.h                       |  1 +
>  net/ceph/messenger.c                      | 11 ++-----
>  net/ipv4/tcp.c                            | 39 +++++++++++++++--------
>  net/rds/tcp.c                             | 11 +------
>  net/rds/tcp.h                             |  1 -
>  net/rds/tcp_listen.c                      |  2 +-
>  16 files changed, 49 insertions(+), 127 deletions(-)

No problem with the siw change

Acked-by: Jason Gunthorpe <jgg@mellanox.com>

Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
