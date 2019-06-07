Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3573966E
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 22:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm4dIFFGIuD8jJPz1Z9zjVcpqS5SXCOR9Gs9wMW9D7I=; b=AoZ6OMiKM2mwq7
	RCmzLJ4TYL8NwGH82xoVEEpH3iJyRSJ3c40qYQWttGTk98Mofw2d0IuRAXMFxqBeFzvZ3nBmAhD3i
	wislZaC4mdAJwaAAFWT2HbXkmE16P36Tz0fJ8bOrd3v/eeT7DTkvDBE229c9FPq21UrrmmsZXtm+5
	WvJi+vCt46rEbQfcYt4YwS8SoVZ4GFiGhlyKaZdKu1kqrI65xUWxibJO2Kz4/KKwVjBXExQ4ZCyQX
	jxQ5wGPDdLVKh6PpScBjuVeKbYkNw4aBnqO3StlGUT7Xv/uke5bwZwvRt3n4rpE34d5tbVJz3iTs0
	sBiQ1wuWTOxznYxotsdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZL7j-0000Tm-MD; Fri, 07 Jun 2019 20:06:03 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZL7d-0000TT-Cd
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 20:05:58 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id p8so1216171ybo.13
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 13:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W2VvREvwiZyOkniLaY7HWmmBzSbdKWPTDFMEsiU09Wk=;
 b=wNUWCYagOmkS9URuGB6K+BT696Cj0qzN2h+Z8LKwZtYdMuyZJS2nulbPcQA9FbL2cu
 JTuwBUWpjTB0hR2cydqBlUVQ6KD24GTj4V/rW599N2skZY4ZnBH899cSrMxBCGuIllV7
 L5Qr/6Tk4L9QDxV0J6/dkSMZ2enuaBinwduXrW3O/NLN69CyfE/94iaOzw0WBYA+RI3M
 RjkIHub9mc72K6yANfxpE6wFo7cvPR9XPDIACJWZyWPIX4rn2WtqzG40x40O7PSjAhJH
 rpSVLBZNn9cCc3WAg4jHqU10E9tvRiEvnKGhRX05MlhcZaPVLewxfNDaZfN6fYKBFMO2
 WwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W2VvREvwiZyOkniLaY7HWmmBzSbdKWPTDFMEsiU09Wk=;
 b=GQ0zhuoB+Zbizgak+Xb3wo3kZtX9ktyzUz2D2IdyFtjkPgbiJGGzg5XpUHlaZUJJyQ
 4P9LeFJxAjUCeKa4Bx/0pGByRiidqgv1dzxzhX6JBHQffMiJTE91L7B12+OA9wRsEuix
 EnAomgCHA5ywW7a1bAfvzr+ZPmzKHckm8Kbnz6wsMW2Uw7KPLRRx9kCkaK2fyueY9RBs
 pyb4ncwwJ8Ia4BlXX61ZvPx6j0np96ublBwuGv27u0+AidhZ9Us7eDVhPu1l5xwr7SaE
 74dT2Ci9rAzBbEmovpbbQ2piBNgq/OHhQHoNfy1FWr9UseZW5URHTWISVdf2CAU4zLQL
 ve8A==
X-Gm-Message-State: APjAAAW+89BHZH1XWnAlLcOZtirPFJSB+zmIlweqVXbwXH+3drrm9onQ
 NJ7ncBGQF9jAm6UdJE9xTKxcUQ==
X-Google-Smtp-Source: APXvYqy4k//DQKzBQGQsevjhZj1tGq8HLVyQw1v3xp3v14QiCuxiH/a4HZqNnkVJPphA7DPJFmVwcA==
X-Received: by 2002:a25:70c4:: with SMTP id l187mr9879206ybc.118.1559937954693; 
 Fri, 07 Jun 2019 13:05:54 -0700 (PDT)
Received: from [172.20.10.3] (mobile-166-172-59-47.mycingular.net.
 [166.172.59.47])
 by smtp.gmail.com with ESMTPSA id 203sm849785ywq.24.2019.06.07.13.05.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 13:05:53 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2-rc
To: Sagi Grimberg <sagi@grimberg.me>
References: <20190607195458.12866-1-sagi@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <87d6eb42-e12e-39f6-43df-c59226bf1911@kernel.dk>
Date: Fri, 7 Jun 2019 14:05:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190607195458.12866-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_130557_479522_A298B19E 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/7/19 1:54 PM, Sagi Grimberg wrote:
> Hey Jens,
> 
> Couple of nvme fixes for the next rc round.
> - nvmet write zeros fix from Minwoo
> - nvme-rdma use-after-free fix from Max
> - nvme-core u32 overflow fix from Jaesoo
> - tcp,rdma fixes for limited number of queues from me
> 
> The following changes since commit cb9e0e5006064a807b5d722c7e3c42f307193792:
> 
>    nvme-pci: use blk-mq mapping for unmanaged irqs (2019-05-22 10:11:36 -0600)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.2-rc-next
> 
> for you to fetch changes up to 62f99b62e5e3b88d23b6ced4380199e8386965af:
> 
>    nvme-rdma: use dynamic dma mapping per command (2019-06-06 09:53:19 -0700)
> 
> ----------------------------------------------------------------
> Jaesoo Lee (1):
>        nvme: Fix u32 overflow in the number of namespace list calculation
> 
> Max Gurtovoy (1):
>        nvme-rdma: use dynamic dma mapping per command
> 
> Minwoo Im (1):
>        nvmet: fix data_len to 0 for bdev-backed write_zeroes
> 
> Sagi Grimberg (2):
>        nvme-rdma: fix queue mapping when queue count is limited
>        nvme-tcp: fix queue mapping when queue count is limited
> 
>   drivers/nvme/host/core.c          |   3 +-
>   drivers/nvme/host/rdma.c          | 152 ++++++++++++++++++++++++--------------
>   drivers/nvme/host/tcp.c           |  57 ++++++++++++--
>   drivers/nvme/target/io-cmd-bdev.c |   1 +
>   4 files changed, 150 insertions(+), 63 deletions(-)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
