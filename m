Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F78E16AE67
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 19:13:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cWIfzgPbzCtfOjwGn8Rl/rA8wK2X3G0HWll0jFanjvE=; b=t63DNGKljFD2Ouuq+JYOsbPD+
	hzOoBtil3GhZGVxnEj6AnenPwdWxXL//x2woeC3kiN0FcCo+G1B8Ieo2ypJefUFxYFUmhgdsJ1N7F
	RyTDnS+k1lRbuP+pV+zK5DF1tBts+HofKqvb3cnFTfkQZtlPOCyN+4/0eoe2SifiAk42QKIR1ImtQ
	5N0dORO4STZNeKD8cdnrKPP6567MXKRhh97TyL3ivHG1XToHP7fBA3VqKX6yRwaxbNNgwe/G95fkR
	j7uKfEhOoGAnDjQTrvur9aq21Rn8WBi9PmKwC905u95Kp2ZIksZkkF/3mKFBJ+ck9Axt05yGXDppy
	59MkhAPjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IEm-0000G4-SA; Mon, 24 Feb 2020 18:13:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IEi-0000F3-EU
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 18:13:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id r77so2164966pgr.12
 for <linux-nvme@lists.infradead.org>; Mon, 24 Feb 2020 10:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=wU67S70FwkpVDqrP3T9nk/ru5Rq6SwtNjY29vxPkM5U=;
 b=A+wnwSn5fn9OeJb02H9haqi44KiCTmVY9wg/t/7ivTO+1kgFE9YhAKkd5GqyTaTLTX
 5DQU3gEOSurU21GrtqOlwofpabzxDWFBB637pF/7dXr2ZWOnjK9HyM5AeXwXHmD9gL8x
 1ru8Q3UzROceRXnoi2fOI/njKb0WyHUm1fNL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=wU67S70FwkpVDqrP3T9nk/ru5Rq6SwtNjY29vxPkM5U=;
 b=Abhv/uJMSHLws0PKzymO4TBMuLCUm/nvd+2XWATMzJE0CTTOuglSbEPcot+YCcwTIQ
 7+8fpHdjIYvcCinQZc4w/aTp+OjgVLtrh6gD0wzjG4OK+kIF3jJFzNGYboPZn1YtR+Uk
 PkY80NBBf6ix++LaSxTwPNj7EK+pJzoL5YDi+3faclWVfRk2D1/uYLN+JVE+P76KHRz/
 qW32vPcKh9pLB3Wc7Z8+OAmKYwW1YfSMR4ial9dJinB61TC/nTe/bWFvnZhpfw8t+c3X
 jnUq5MyyFNji+jmozjs0ZRHojTAlHi3lQqx+qY3lqLceDq8DnJz2a5uO2qdgn2Mgk0gE
 B3ng==
X-Gm-Message-State: APjAAAUoBK4WR9vPsd7c+rWDuttKLLyN4skLQvflS02J3rfS3S2Ug2bk
 5/jNnOtDT4znYJgTf/vfDtQBkg==
X-Google-Smtp-Source: APXvYqwL6D3va6L8LX1+1Dv3WMChB9XhaBWfqtbwCdmmWieTM6HdUeLgnR1XDrodBdQUFzfosXLTOg==
X-Received: by 2002:a63:3383:: with SMTP id z125mr2225544pgz.265.1582568022843; 
 Mon, 24 Feb 2020 10:13:42 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 144sm14151771pfc.45.2020.02.24.10.13.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 10:13:42 -0800 (PST)
Subject: Re: [PATCH 00/19 V4] nvme-rdma/nvmet-rdma: Add metadata/T10-PI support
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me, linux-rdma@vger.kernel.org, kbusch@kernel.org, hch@lst.de,
 martin.petersen@oracle.com
References: <20200224164544.219438-1-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <ea618986-6a9a-d1d6-cec4-19c1488bf7be@broadcom.com>
Date: Mon, 24 Feb 2020 10:13:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200224164544.219438-1-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_101344_491174_B55E1348 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, James Smart <jsmart2021@gmail.com>, vladimirk@mellanox.com,
 idanb@mellanox.com, israelr@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2/24/2020 8:45 AM, Max Gurtovoy wrote:
> Hello Sagi, Christoph, Keith, Martin and Co
>
> This patchset adds metadata (T10-PI) support for NVMeoF/RDMA host side and
> target side, using signature verbs API. This set starts with a few preparation
> commits to the NVMe host core layer. It continues with NVMeoF/RDMA host
> implementation + few preparation commits to the RDMA/rw API and to NVMe target
> core layer. The patchset ends with NVMeoF/RDMA target implementation.
>
> Configuration:
> Host:
>   - nvme connect --pi_enable --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
>
> Target:
>   - echo 1 > /config/nvmet/subsystems/${NAME}/attr_pi_enable
>   - echo 1 > /config/nvmet/ports/${PORT_NUM}/param_pi_enable
>
> The code was tested using Mellanox's ConnectX-4/ConnectX-5 HCAs.
> This series applies on top of nvme_5.7 branch cleanly.
>
> Changes from v3:
>   - Added Reviewed-by signatures
>   - New RDMA/rw patch (Patch 17/19)
>   - Add mdts setting op for controllers (Patches 14/19, 18/19)
>   - Rename NVME_NS_DIX_SUPPORTED to NVME_NS_MD_HOST_SUPPORTED and
>     NVME_NS_DIF_SUPPORTED to NVME_NS_MD_CTRL_SUPPORTED (Patch 01/19)
>   - Split "nvme: Introduce namespace features flag" patch (patch 02/19)
>   - Rename nvmet_rdma_set_diff_domain to nvmet_rdma_set_sig_domain
>     and nvme_rdma_set_diff_domain to nvme_rdma_set_sig_domain
>     (Patches 08/19, 19/19)
>   - Remove ns parameter from nvme_rdma_set_sig_domain/nvmet_rdma_set_sig_domain
>     functions (patch 08/19, 19/19)
>   - Rebase over nvme-5.7 branch
>
> Changes from v2:
>   - Convert the virtual start sector (which passed to bip_set_seed function)
>     to be in integrity interval units (Patch 14/15)
>   - Clarify some commit messages
>
> Changes from v1:
>   - Added Reviewed-by signatures
>   - Added namespace features flag (Patch 01/15)
>   - Remove nvme_ns_has_pi function (Patch 01/15)
>   - Added has_pi field to struct nvme_request (Patch 01/15)
>   - Subject change for patch 02/15
>   - Fix comment for PCI metadata (Patch 03/15)
>   - Rebase over "nvme: Avoid preallocating big SGL for data" patchset
>   - Introduce NVME_INLINE_PROT_SG_CNT flag (Patch 05/15)
>   - Introduce nvme_rdma_sgl structure (Patch 06/15)
>   - Remove first_sgl pointer from struct nvme_rdma_request (Patch 06/15)
>   - Split nvme-rdma patches (Patches 06/15, 07/15)
>   - Rename is_protected to use_pi (Patch 07/15)
>   - Refactor nvme_rdma_get_max_fr_pages function (Patch 07/15)
>   - Added ifdef CONFIG_BLK_DEV_INTEGRITY (Patches 07/15, 09/15, 13/15,
>     14/15, 15/15)
>   - Added port configfs pi_enable (Patch 14/15)
>
> Israel Rukshin (13):
>    nvme: Introduce namespace features flag
>    nvme: Add has_pi field to the nvme_req structure
>    nvme-fabrics: Allow user enabling metadata/T10-PI support
>    nvme: Introduce NVME_INLINE_PROT_SG_CNT
>    nvme-rdma: Introduce nvme_rdma_sgl structure
>    nvmet: Prepare metadata request
>    nvmet: Add metadata characteristics for a namespace
>    nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
>    nvmet: Rename nvmet_check_data_len to nvmet_check_transfer_len
>    nvme: Add Metadata Capabilities enumerations
>    nvmet: Add metadata/T10-PI support
>    nvmet: Add metadata support for block devices
>    nvmet-rdma: Add metadata/T10-PI support
>
> Max Gurtovoy (6):
>    nvme: Enforce extended LBA format for fabrics metadata
>    nvme: Introduce max_integrity_segments ctrl attribute
>    nvme-rdma: Add metadata/T10-PI support
>    nvmet: Add mdts setting op for controllers
>    RDMA/rw: Expose maximal page list for a device per 1 MR
>    nvmet-rdma: Implement set_mdts controller op
>
>   drivers/infiniband/core/rw.c      |  14 +-
>   drivers/nvme/host/core.c          |  76 +++++---
>   drivers/nvme/host/fabrics.c       |  11 ++
>   drivers/nvme/host/fabrics.h       |   3 +
>   drivers/nvme/host/nvme.h          |   9 +-
>   drivers/nvme/host/pci.c           |   7 +
>   drivers/nvme/host/rdma.c          | 367 +++++++++++++++++++++++++++++++++-----
>   drivers/nvme/target/admin-cmd.c   |  41 +++--
>   drivers/nvme/target/configfs.c    |  61 +++++++
>   drivers/nvme/target/core.c        |  54 ++++--
>   drivers/nvme/target/discovery.c   |   8 +-
>   drivers/nvme/target/fabrics-cmd.c |  19 +-
>   drivers/nvme/target/io-cmd-bdev.c | 113 +++++++++++-
>   drivers/nvme/target/io-cmd-file.c |   6 +-
>   drivers/nvme/target/nvmet.h       |  39 +++-
>   drivers/nvme/target/rdma.c        | 252 ++++++++++++++++++++++++--
>   include/linux/nvme.h              |   2 +
>   include/rdma/rw.h                 |   1 +
>   18 files changed, 955 insertions(+), 128 deletions(-)
>

I found the first 6 patches confusing and in some cases unnecessary. 
They also missed some things. I've been working on a different set that 
I'll post shortly. I had hoped to get these back to you sooner for review.

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
