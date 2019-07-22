Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7840B7081F
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 20:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtW3fuqqjKFoZvVlkaf4EOD5fyVIRjH2FJah7mNJ3kU=; b=SnjA4Q4xTLM7v3
	ru3IIDhiDTAL19OjathnoDontwJlGOn86aCn9exsY8Xo5ytF4xkBoaiKfTrw1zTPW/rZBcx8d16JS
	ibCZVVlBR8S31e/K0uZK+F+J7McmNZZ5sdxA1ggHJVOaJARhB/sfeqAJezbzk3WVlZjn4EbgxKBoe
	7S1PnvpjUjU6S6lbHcbir/AJcHphrDWKg0s4FOGjkEO3em0QfEktjwyTlDRJm8XheYcFYiHAbQAw7
	Z/J/Nm2A/HmKLIvTLh4nRQ8YBqhLKoKYMXKOfA+8ONQeFYKWcIYAXhhLIP/lA7ke+c52lK4MVgVJ9
	88+wHSvhTHsiPLWPq8LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcjI-0002SL-Ke; Mon, 22 Jul 2019 18:08:08 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcj1-0002RA-SQ
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 18:07:53 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 2so26831945vso.8
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 11:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cmW+iIJBcAPXYuBJ0X70RuJw3nKWx6Ck24ISTbz4CEs=;
 b=ecr7HpkJ/GPjpuVFLx7tTl5nq1d1iUDbKwdlnIYeT6V8ma1d+wg9/MJjuQwtyKqzih
 QeHMj6zOIBFJhbLoTvcDZGPbJSferveTR0mu/KI/setje9er6O5qXDyom3wHCufV7/Pi
 3UQymcesV8YMc+MJ0dOZcKfviFC5gRKW1JnakN5ef7VDFeCkicby89KgbFRCg0yaM4C/
 o1j3+ySz3Lkbzfti+4RHITgEG9bqsPDppPOfcTvMhnuz7JyPwElNZSI371i7FV0IYolf
 mofl8nmvAiy33e4bbe8MvQ3PZsA+U642zpBMIy3r5E++TuInZ8ltgdP0Mgt+Rbzndl5u
 Ff1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cmW+iIJBcAPXYuBJ0X70RuJw3nKWx6Ck24ISTbz4CEs=;
 b=SOPhgonE/6BL5WgA2G6+Zsw4LddHy4Paz/YPhvCNZKKZYHps2KAxPgjlAuBysykh36
 dM8arcqf4sRfcm2ErfQIdK3lsm7SDooc98E1YhlTAZMOhi1SMcE4JpLOwmgDf2t0mTNs
 4UG+21bBZPMMQZApvE+/snx13V8Eo0CuaLkaywq1K7frviUxKGf1oDkGIqQrW0JPDdmi
 y/yFoe/7NsmhrDlmaz/V9qhllcRNTLlTe7jkqalR5tyY20heJvF7fjNM+Jc2Na75Snec
 D9//oG/EfNDASw/uqqss/2sBC8t9Uf0lEtCwJxs+s4hI8hrfdCHWR1QnqHb3R1J5C3WT
 fk9Q==
X-Gm-Message-State: APjAAAWAuAWfO6aUYyKxYoo+Nd3on8ttasZ7NwPWTqsG3okPYnxd0SuS
 6CCOGOQywhTV7FQyCK57waMR8Q==
X-Google-Smtp-Source: APXvYqx5Od80W34I1fDAgrOP6mzw1I8zF4ZN9uUihErCnhuyEo+zpkg3qx27zyPVZSVitQtTLpxDGg==
X-Received: by 2002:a67:eb93:: with SMTP id e19mr44004699vso.208.1563818868687; 
 Mon, 22 Jul 2019 11:07:48 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id u8sm15170119vke.34.2019.07.22.11.07.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 11:07:48 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hpciw-0002TP-Hf; Mon, 22 Jul 2019 15:07:46 -0300
Date: Mon, 22 Jul 2019 15:07:46 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Selvin Xavier <selvin.xavier@broadcom.com>
Subject: Re: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Message-ID: <20190722180746.GA9441@ziepe.ca>
References: <20190715091913.15726-1-selvin.xavier@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715091913.15726-1-selvin.xavier@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_110751_927469_26E72601 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rdma@vger.kernel.org, dledford@redhat.com, stable@vger.kernel.org,
 linux-nvme@lists.infradead.org, Parav Pandit <parav@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:19:13AM -0400, Selvin Xavier wrote:
> GID entry consist of GID, vlan, netdev and smac.
> Extend GID duplicate check companions to consider vlan_id as well
> to support IPv6 VLAN based link local addresses. Introduce
> a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.
> 
> The issue is discussed in the following thread
> https://www.spinics.net/lists/linux-rdma/msg81594.html
> 
> Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> Cc: <stable@vger.kernel.org> # v5.2+
> Reported-by: Yi Zhang <yi.zhang@redhat.com>
> Co-developed-by: Parav Pandit <parav@mellanox.com>
> Signed-off-by: Parav Pandit <parav@mellanox.com>
> Signed-off-by: Selvin Xavier <selvin.xavier@broadcom.com>
> Tested-by: Yi Zhang <yi.zhang@redhat.com>
> Reviewed-By: Leon R...
> Tested-by: Leon R...
> ---
>  drivers/infiniband/hw/bnxt_re/ib_verbs.c  |  7 +++++--
>  drivers/infiniband/hw/bnxt_re/qplib_res.c | 13 +++++++++----
>  drivers/infiniband/hw/bnxt_re/qplib_res.h |  2 +-
>  drivers/infiniband/hw/bnxt_re/qplib_sp.c  | 14 +++++++++-----
>  drivers/infiniband/hw/bnxt_re/qplib_sp.h  |  7 ++++++-
>  5 files changed, 30 insertions(+), 13 deletions(-)

Applied to for-rc, thanks

Please also fix that sketchy use of the gid_index

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
