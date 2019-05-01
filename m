Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8930B10A8E
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 18:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zM382CUbL0+nw1+aIn+LNJeGEcKXO/GOC4aO3rT2K5Q=; b=Uoh3dPsb9D4fZm
	bGbdpgP9iLySGxnhI26O3TA8e9K+CUeBTWwV4j2pYq/LWFC2I1T0MHNq6hwY7ovJcoVDk8P/FEiBU
	1IzbeXfNEF8DDHbMF4Nh4WpybGgyAgxLaxWmm5nMn1vOwysSCEecYUYGcCj2uMXR56xLme7fHs308
	YMCM7sCxTF3aSC4JHGS6P6bERcspHPmmKXpiQlJiRq8lW8658Nnp2OowuXybv4eRScEZ9rB9vB1ky
	JbOdiCZZg3tGkDX7GvyEnk0wsxqXd9Lg79SgYuqnDwdJ9C4q6WogZKD7MxK72EX0ztxhpwDp1RWYr
	buVyNXlFvOfLrugeriyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLriY-0006qv-3T; Wed, 01 May 2019 16:04:22 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLriS-0006qK-CE
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 16:04:18 +0000
Received: by mail-yw1-xc42.google.com with SMTP id q11so8650745ywb.0
 for <linux-nvme@lists.infradead.org>; Wed, 01 May 2019 09:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1Oj/WUcyRxxUcW0wQUN0R2C4uN0F34nk4YQGosewwOg=;
 b=BdkEZs7R9mCWaAV5rBhA8u99jrS9gEQiKTjz0Zj1In6Cju0zLJgRM3vQhw3x9nmrDp
 OPF7T4OHLWDfgJGtlRWWb+9yvuq+eIGRxSiWL2farEW77wj6nbqT4vyndP+TWOpgpDAM
 6uG2fyjSqWnORy589WJ0vIIwiuUPY2ZmDbl2rhPT/Fp77Uck2rZMi9NxpiV+nXeTw+IY
 ON2PnuV3TtnYpHh/ZE4kRWcEHf3Jhb9PuyVpF/j0bP59SEFEiOYfR7jXx6D/JAYiNKZm
 ZEz8jJ4WFH57UusBfmsWoPjN6WrKtmghfCj+0NL/BLnjS4Ug0Bi57Zsnu0bw75iYUUdn
 84wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1Oj/WUcyRxxUcW0wQUN0R2C4uN0F34nk4YQGosewwOg=;
 b=bvwxss5+rUUdsh+qe/peaxr/FufKdgb3gCyjnSWXGjX1seOapYvTmmAw9JORHW8EI+
 e0cEZgmPiO2+IZ5IQqe7QFc7vLo/8tRPzmAGLbp0mU9hAmyy7kCwu+Ewh9J+3g+lTfhv
 fKsoNJdI+YO+9ZYoUdWNM10EKWuL0DA2JC1V/DCbDjcV+F8i2QHST3pnuUZfxNB1o4rc
 vDYOcnd5zekDBDhVTMQYgIdTrMZeMaE7AtiCgK6yLrZSEAXoLwlZlV7fPNrs0HM2S+Gb
 s9w8Q0k2Y2Ad8PlSmYR/Kp8RbVHf/1g/xiai8Ygc9GoWXFgaXmNqrOFp80So81lQWqEc
 PFCA==
X-Gm-Message-State: APjAAAXFNMzDtC+iIIqzOJ73VZVM+pdCPyLDinMo+jNrw4JrI9xgxJyV
 etih7kl+LC1GZbI3QmFMq6mwCw==
X-Google-Smtp-Source: APXvYqzLJcvVHjGO71OtCFkCMb5emrvUXe19bjprN9+oSr4lBh10lOeD81kNGXnPy4yXO3Ux10gsOw==
X-Received: by 2002:a5b:80f:: with SMTP id x15mr8202602ybp.140.1556726654484; 
 Wed, 01 May 2019 09:04:14 -0700 (PDT)
Received: from ziepe.ca (adsl-173-228-226-134.prtc.net. [173.228.226.134])
 by smtp.gmail.com with ESMTPSA id 78sm12489565ywr.65.2019.05.01.09.04.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 09:04:12 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hLriM-00045B-0C; Wed, 01 May 2019 13:04:10 -0300
Date: Wed, 1 May 2019 13:04:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Tal Gilboa <talgi@mellanox.com>
Subject: Re: [PATCH rdma-for-next 0/9] drivers/infiniband: Introduce rdma_dim
Message-ID: <20190501160409.GA15547@ziepe.ca>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_090416_832578_F19BFD2C 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Yamin Friedman <yaminf@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
 Idan Burstein <idanb@mellanox.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, Yishai Hadas <yishaih@mellanox.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Saeed Mahameed <saeedm@mellanox.com>, Doug Ledford <dledford@redhat.com>,
 Max Gurtovoy <maxg@mellanox.com>, "David S. Miller" <davem@davemloft.net>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 05:44:30PM +0300, Tal Gilboa wrote:
> net_dim.h lib exposes an implementation of the DIM algorithm for dynamically-tuned interrupt
> moderation for networking interfaces.
> 
> We want a similar functionality for RDMA. The main motivation is to benefit from maximized
> completion rate and reduced interrupt overhead that DIM may provide.
> 
> Current DIM implementation prioritizes reducing interrupt overhead over latency. Also, in
> order to reduce DIM's own overhead, the algorithm might take take some time to identify it
> needs to change profiles. For these reasons we got to the understanding that a slightly
> modified algorithm is needed. Early tests with current implementation show it doesn't react
> fast and sharply enough in order to satisfy the RDMA CQ needs.
> 
> I would like to suggest an implementation for RDMA DIM. The idea is to expose the new
> functionality without the risk of breaking Net DIM behavior for netdev. Below are main
> similarities and differences between the two implementations and general guidelines for the
> suggested solution.
> 
> Performance improvement (ConnectX-5 100GbE, x86) running FIO benchmark over
> NVMf between two equal end-hosts with 56 cores across a Mellanox switch
> using null_blk device:
> 
> READS without DIM:
> blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
> 512B     | 3.8GiB/s | 7.7M | 1401  usec               | 2442  usec
> 4k       | 7.0GiB/s | 1.8M | 4817  usec               | 6587  usec
> 64k      | 10.7GiB/s| 175k | 9896  usec               | 10028 usec
> 
> IO WRITES without DIM:
> blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
> 512B     | 3.6GiB/s | 7.5M | 1434  usec               | 2474  usec
> 4k       | 6.3GiB/s | 1.6M | 938   usec               | 1221  usec
> 64k      | 10.7GiB/s| 175k | 8979  usec               | 12780 usec
> 
> IO READS with DIM:
> blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
> 512B     | 4GiB/s   | 8.2M | 816    usec              | 889   usec
> 4k       | 10.1GiB/s| 2.65M| 3359   usec              | 5080  usec
> 64k      | 10.7GiB/s| 175k | 9896   usec              | 10028 usec
> 
> IO WRITES with DIM:
> blk size | BW       | IOPS  | 99th percentile latency | 99.99th latency
> 512B     | 3.9GiB/s | 8.1M  | 799   usec              | 922   usec
> 4k       | 9.6GiB/s | 2.5M  | 717   usec              | 1004  usec
> 64k      | 10.7GiB/s| 176k  | 8586  usec              | 12256 usec
> 
> Common logic, main DIM procedure:
> - Calculate current stats from a given sample
> - Compare current stats vs. previous iteration stats
> - Make a decision -> choose a new profile
> 
> Differences:
> - Different parameters for moving between profiles
> - Different moderation values and number of profiles
> - Different sampled data
> 
> Suggested solution:
> - Common logic will be declared in include/linux/dim.h and implemented in lib/dim/dim.c
> - Net DIM (existing) logic will be declared in include/linux/net_dim.h and implemented in
>   lib/dim/net_dim.c, which will use the common logic from dim.h
> - RDMA DIM logic will be declared in /include/linux/rdma_dim.h and implemented in
>   lib/dim/rdma_dim.c.
>   This new implementation will expose modified versions of profiles, dim_step() and dim_decision()
> 
> Pros for this solution are:
> - Zero impact on existing net_dim implementation and usage
> - Relatively more code reuse (compared to two separate solutions)
> - Readiness for future implementations
>  
> Tal Gilboa (6):
>   linux/dim: Move logic to dim.h
>   linux/dim: Remove "net" prefix from internal DIM members
>   linux/dim: Rename externally exposed macros
>   linux/dim: Rename net_dim_sample() to net_dim_create_sample()
>   linux/dim: Rename externally used net_dim members
>   linux/dim: Move implementation to .c files
> 
> Yamin Friedman (3):
>   linux/dim: Add completions count to dim_sample
>   linux/dim: Implement rdma_dim
>   drivers/infiniband: Use rdma_dim in infiniband driver
> 
>  MAINTAINERS                                        |   3 +
>  drivers/infiniband/core/cq.c                       |  79 ++++-
>  drivers/infiniband/hw/mlx4/qp.c                    |   2 +-
>  drivers/infiniband/hw/mlx5/qp.c                    |   2 +-
>  drivers/net/ethernet/broadcom/bcmsysport.c         |  20 +-
>  drivers/net/ethernet/broadcom/bcmsysport.h         |   2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c          |  13 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.h          |   2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt_debugfs.c  |   4 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c      |   7 +-
>  drivers/net/ethernet/broadcom/genet/bcmgenet.c     |  18 +-
>  drivers/net/ethernet/broadcom/genet/bcmgenet.h     |   2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en.h       |   8 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_dim.c   |  12 +-
>  .../net/ethernet/mellanox/mlx5/core/en_ethtool.c   |   4 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_main.c  |  22 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c  |  12 +-

A lot of this is touching netdev, why wasn't netdev cc'd?

Who is supposed to merge this? 

I think you need to take two steps and have netdev merge the above
part and then send the single patch to RDMA for the last part, I don't
really want to take so much netdev code here.

The maintainers file should also have some indication which tree
patches for lib/dim/* this should go through..

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
