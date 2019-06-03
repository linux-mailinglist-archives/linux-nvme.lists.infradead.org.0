Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33E733BCB
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LMtqJ2SzmCFylmYlfHQrJADUjAcmi+thOKGGLQjsayA=; b=jJy03JB2cN2EFP9TEMtdwTp1l
	zN4hwj09ZEJRz57OJK4wuZXcjkPb50fK/7+2KmU7w5XHie18kLqFjTYYp5nduJQowulSi2j/ojn1x
	13G7+YJdCHJmdQAQmeoTs8d6oBQA19ljmSu1S7OxHzdFZgaBXdpJy/drwWsx3Wrz/FfyLOHghPvko
	kPObSJwTAfFsLoo/WOIXHeku0naJa8CVJemwG7piVLeyqDE6pB9FZ2MNfRVhwl9wk/Hlt4uCt1G92
	ncm8N7kni+HeKsIPbIgBY3UfxWQxAoiFCton1pX+vTVt2XtyzFwXrk4mXaOPGWT+Px7kyGujPWjus
	Nkd+34/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXw9b-0004pr-FZ; Mon, 03 Jun 2019 23:14:11 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXw9W-0004pX-Ph
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 23:14:08 +0000
Received: by mail-qk1-f196.google.com with SMTP id c70so1616097qkg.7
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 16:14:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7ZbwFuarKtDzOso0rG9Cb4xEW819N74r0F5CQmR1uUk=;
 b=X+BjwShoS+nv2ajqiA1f3VcD2r1EKvNX3cpYLcX+rh+49mALFu9d+0npR+ZVtBffYf
 r5QCuaVZ38IKAQH+x3Dx6O6u16cWJQLtbMbf72ZKVV+4x9CeOk/g+JMQtV4fmtgO3ThK
 qk0iPM5wL90fO7y8NXBup7WRcdyiQTkf7o9PrZ0unw4xcYQsup8Q32EL0yG9X+tRz2a/
 vxecIYQbFRsRa4gS+m6cffETpCuTuhJ51Q8jiTFO90x4X7juBCuYVdycxxt2sTcR0v8H
 QOlM/TCofmvylQRGL0q3r+LG+qFPUwFKNlbR3EqzEtyvwhYqg5sl3iYI/m7/uYlJv6yN
 ARYQ==
X-Gm-Message-State: APjAAAXVr4gT3G4pgbQ7nXP4ARayWIUrOyVS35P0/Xtz35W/pDGPrywO
 175wtCS1nb1bAWJ4hcj/Bo0=
X-Google-Smtp-Source: APXvYqyzhRmFAKM9kxuC4BXMKv0ZdTC5dWrK6Z44h9Oz5M2c+rX0JZyPme+xol5RhpmOH62Q77Ythg==
X-Received: by 2002:a37:6601:: with SMTP id a1mr23907679qkc.282.1559603644956; 
 Mon, 03 Jun 2019 16:14:04 -0700 (PDT)
Received: from [172.29.0.86] ([52.119.64.114])
 by smtp.gmail.com with ESMTPSA id o38sm8537429qte.5.2019.06.03.16.14.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 16:14:04 -0700 (PDT)
Subject: Re: [PATCH] Revert "nvme-rdma: remove redundant reference between
 ib_device and tagset"
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190603231159.17034-1-sagi@grimberg.me>
Message-ID: <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
Date: Mon, 3 Jun 2019 16:14:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190603231159.17034-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_161406_835004_8EA70A15 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>, james.r.harris@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This commit caused a kernel panic when disconnecting from an
> inaccessible controller.
> 
> --
> nvme nvme0: Removing ctrl: NQN "testnqn1"
> nvme_rdma: nvme_rdma_exit_request: hctx 0 queue_idx 1
> BUG: unable to handle kernel paging request at 0000000080000228
> PGD 0 P4D 0
> Oops: 0000 [#1] SMP PTI
> ...
> Call Trace:
>   blk_mq_exit_hctx+0x5c/0xf0
>   blk_mq_exit_queue+0xd4/0x100
>   blk_cleanup_queue+0x9a/0xc0
>   nvme_rdma_destroy_io_queues+0x52/0x60 [nvme_rdma]
>   nvme_rdma_shutdown_ctrl+0x3e/0x80 [nvme_rdma]
>   nvme_do_delete_ctrl+0x53/0x80 [nvme_core]
>   nvme_sysfs_delete+0x45/0x60 [nvme_core]
>   kernfs_fop_write+0x105/0x180
>   vfs_write+0xad/0x1a0
>   ksys_write+0x5a/0xd0
>   do_syscall_64+0x55/0x110
>   entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x7fa215417154
> --
> 

Should add:
Reported-by: Harris, James R <james.r.harris@intel.com>

> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
