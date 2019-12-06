Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC521156B3
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 18:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nc60CEIVH3g8smj9FSZFpyGpxZsm8RccZcyPaGjuv4U=; b=HBOF3QYinGcJXc26zVdSKxeR3d
	A7q2uBCXouSdefluwmtjttoBGUGjI475MTRMg7sMbQ4c2BaJKGgVu+IPzFZPO7gNxvh54BpHNJqMv
	AGR8372+/P/2d3H6VMgDlA+jst77IujFNRjRSGo4KoVNqytaobd4iN4Kxasv51bbIX8J/4KDtctaa
	CD2tU0+EuzeLRRrt3uwU/gRHWjg6rvuThrf3o4ok/BkH88OWYCMTnYwH6GWZCl0zZg1QwcmbPo02v
	6fack2oHdx1Vi693mQ050K/6v6GtssVB7LsXK6FbfPA5CPLKwPfgi6pDChPISJ4rKihLcYBFJaPRG
	PSJh92DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHgE-0006t7-E7; Fri, 06 Dec 2019 17:46:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHg8-0006se-DK
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 17:46:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id k3so3003865pgc.3
 for <linux-nvme@lists.infradead.org>; Fri, 06 Dec 2019 09:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=lnGLK6Q70JMt+h9IueARt0PBqvak6HcsLrjVDNLcHP4=;
 b=bNM5PuzGAq3hE4ZVJaOvIKflvlryNEZkIbmP3scHzRrD3r/QGSIV3+jeoTWP8z0HrK
 h2db/obwPaFCrRZ5zpMAgBLuqSVGA6WXy7ulJBgk00RE8Wf0dCjd3lo8oCShucYuYOjI
 YU93eZQC6RDYmdkZTXLwbdOnQ5tPzdzbIablczkfH40Brh+O7N3/c+q8KWukaO5EUYX2
 rDsvl9FsGw0ZqU7LyU4GZkbyLksenpwE9zzZ5tU9+YAJnUPo5FIxcYupTnCTCXQKI4EH
 kLLp3uwtLcIGCEy4xO3cVnSKdDxtpBTQ9tNJEY9KX7SYYsNoiJGrSgRYgUCyUEXZRZBX
 aZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lnGLK6Q70JMt+h9IueARt0PBqvak6HcsLrjVDNLcHP4=;
 b=CnBRnRXs1fYK68qXfDPIjwaGVHKTnoXq4uFxoU0jyO3cvGvHGozIfqKZbWtOdFrovN
 TEAa0oLej5LQzHKfxfG1HiHolNBB2j3qovGfHsodH9ww4Lwsu7IRTZPLFTzopp7fPEI4
 2Pw1PCPQq8EKhQfuTuy5QSLsH871ZFzckrLq0OCDt+8ZyVoT/jupgt4/N2d7FP/iKftQ
 HSHjGTMwiOQxGyRAQMujlYtQ/vBc0iBZDa/NqE53HX44pqYou55Ql/cm4VL7qOehaAm7
 xjaM8wNsvVNFERFbtkWuHp76pKAn4rl/8Vd6sk3RqKhW2XmgKaWhMXLmVfU2wLMMyIIU
 njIQ==
X-Gm-Message-State: APjAAAVGuNm7yHzz4piCatA65Q0qEs16Q8H59vgIeJ/1BO/i7IXzCv4e
 iD0BnhvAWBTPqeWmVZMKR2ErTA==
X-Google-Smtp-Source: APXvYqw7hxSz1oJ1ikKvgy42m8pdW4WBgzuxv3IdS7xyzL1BpFQWEBZFcXVIoEh0PQDOyrJJLcG0Uw==
X-Received: by 2002:a65:55cc:: with SMTP id k12mr4921898pgs.184.1575654367216; 
 Fri, 06 Dec 2019 09:46:07 -0800 (PST)
Received: from ?IPv6:2620:10d:c081:1130::1475? ([2620:10d:c090:180::9662])
 by smtp.gmail.com with ESMTPSA id n26sm16335877pgd.46.2019.12.06.09.46.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 09:46:06 -0800 (PST)
Subject: Re: [PATCH 0/3] nvme specialized queue fixes
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me
References: <20191206171316.2421-1-kbusch@kernel.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <360fdd5a-f2ce-86c6-55e5-a15ff2f9e1cc@kernel.dk>
Date: Fri, 6 Dec 2019 10:46:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191206171316.2421-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_094608_512902_77223138 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 12/6/19 10:13 AM, Keith Busch wrote:
> The nvme pci module had been allowing bad values to the specialized
> polled and write queues that could have caused the driver to allocate
> queues incorrectly or unoptimally.
> 
> For example, on a system with 16 CPUs, if I have module parameter
> nvme.write_queues=17, we would get only 1 read queue no matter how many
> the drive supported:
> 
>   # dmesg | grep nvme | grep "poll queues"
>   nvme nvme2: 16/1/2 default/read/poll queues
>   nvme nvme1: 16/1/2 default/read/poll queues
>   nvme nvme0: 16/1/2 default/read/poll queues
>   nvme nvme3: 16/1/2 default/read/poll queues
> 
> But after fixing:
> 
>   # dmesg | grep nvme | grep "poll queues"
>   nvme nvme1: 16/16/2 default/read/poll queues
>   nvme nvme2: 16/13/2 default/read/poll queues
>   nvme nvme0: 16/16/2 default/read/poll queues
>   nvme nvme3: 16/13/2 default/read/poll queues
> 
> We just need to fix the calculation so that we don't throttle the total
> number of possible desired queues incorrectly. The first two patches
> ensure the module parameters are withing reasonable boundaries to
> simplify counting the number of interrupts we want to allocate.
> 
> Keith Busch (3):
>   nvme/pci: Fix write and poll queue types
>   nvme/pci Limit write queue sizes to possible cpus
>   nvme/pci: Fix read queue count
> 
>  drivers/nvme/host/pci.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)

Looks good to me:

Reviewed-by: Jens Axboe <axboe@kernel.dk>

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
