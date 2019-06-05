Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C563627B
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 19:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dRhuv43Pz9031eFCcv1kxREVT7AzjHOxtHwChT8fIMA=; b=rYqTVg1PJAWsmf45AYjRjO2jc
	K9GQaWJ+kvG183KIzhPhNb2DPe/srPj+qZfuYCYPCVoi48Gum4clP6VnjGjm0xEkcr2Sez9HaWsrB
	5ac/TX2RQlKL2sVDX1jnuqvnr7uIojxoD6hNfehyu1UGO0TJvrgrmytrljAg+IZAOXMEWW8lBbFwH
	QwpaMiAnoCiGYpQ7v6VLmsPOxv1oa7CRYNO35mRh3aSJP5oud3XuC2gqYh+P1MPy/E8ZcSAJUtB2I
	QxDcBCIo8qtoqOO24knomVjv9oGXPckn34Kt/WwFhYzQdt5wIc8RsMPkjmvxHXHUCpgCl9u6U31Ml
	keGXJLZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZh6-00068Y-TX; Wed, 05 Jun 2019 17:27:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZh2-00067y-2m
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 17:27:21 +0000
Received: by mail-ot1-f68.google.com with SMTP id z23so1443342ote.13
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 10:27:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=k3gYvTYr4HAIJzWB+wE3TZetPrgvp/E6eq3i2/jRUxk=;
 b=EDbdFX3SjbtiH6EE5JU0UBleK1+Ylx8KsH5qalwjm1U5B+4I825dWWINk3vePxzNfA
 d088o9VtXR5uePDxBbiRhQ83jyepqfxqUqMYZ7RXeNONUWgmM130iIHlsBCnsEnUfz7t
 ylIHyU3VsQOm2L/i6n4mGL7zzaC2h1HgFudfd4NgL++jyLJf3iRNNvAC8WIim5oUOLIV
 Qit3kMvkIENDShmHHMCHWqkJygGXaG44sx2eyj5HMitkDXXfCUkYyWzH/8f13C8Kfu29
 P67VZ5MorgJqMFTZhTFs2tmV/q/fbc49lsyPbDHRBFYlSU6Z1KHKbWhG3LM+yWW5rJYP
 olUQ==
X-Gm-Message-State: APjAAAWtqWDzEa6HEE8RreV7WfyjUJGEGm8whmQFk9NxH1AmLXGzJe2r
 1BdHalW3az4aPs6MZ9AkF3w=
X-Google-Smtp-Source: APXvYqypmSgZkCHCrO+AnhLJ6Z1mEetk5qz2Ng+6Xbpv5M8DLwjygh52/RUuL/5DXkeIzQfC/4w2KQ==
X-Received: by 2002:a9d:14a:: with SMTP id 68mr10424499otu.96.1559755638931;
 Wed, 05 Jun 2019 10:27:18 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b62sm1055521otc.9.2019.06.05.10.27.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 10:27:18 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 james.r.harris@intel.com, hch@lst.de
References: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f474d61c-a3e4-1452-99fb-6e7164f05194@grimberg.me>
Date: Wed, 5 Jun 2019 10:27:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_102720_127144_877C5C47 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: israelr@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/5/19 8:41 AM, Max Gurtovoy wrote:
> Commit 87fd125344d6 ("nvme-rdma: remove redundant reference between
> ib_device and tagset") caused a kernel panic when disconnecting from an
> inaccessible controller (disconnect during re-connection).
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
> The reason for this crash is accessing an already freed ib_device for
> performing dma_unmap during exit_request commands. The root cause for
> that is that during re-connection all the queues are destroyed and
> re-created (and the ib_device is reference counted by the queues and
> freed as well) but the tagset stays alive and all the DMA mappings (that
> we perform in init_request) kept in the request context. The original
> commit fixed a different bug that was introduced during bonding (aka nic
> teaming) tests that for some scenarios change the underlying ib_device
> and caused memory leakage and possible segmentation fault. This commit
> is a complementry

Complementary

  commit that also changes the wrong DMA mappings that
> were saved in the request context

also making the request sqe dma mappings dynamic with the
command lifetime (i.e. mapped in .queue_rq and unmapped in .complete).

  and also fixes the above crash of
> accessing freed ib_device during destruction of the tagset.
> 
> Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
> Suggested-by: Sagi Grimberg <sagi@grimberg.me>
> Tested-by: Jim Harris <james.r.harris@intel.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/rdma.c | 76 ++++++++++++++++++++++++++++++------------------
>   1 file changed, 47 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 0e033b6..88f11c5 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -167,15 +167,17 @@ static inline size_t nvme_rdma_inline_data_size(struct nvme_rdma_queue *queue)
>   	return queue->cmnd_capsule_len - sizeof(struct nvme_command);
>   }
>   
> -static void nvme_rdma_free_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
> -		size_t capsule_size, enum dma_data_direction dir)
> +static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
> +		struct nvme_rdma_qe *qe, size_t capsule_size,
> +		enum dma_data_direction dir)

Given that we directly allocate the sqe in .init_request and not call
this, is there really a need to change the name of the function?

It creates a bit of an unnecessary churn in the patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
