Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912E065FD1
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 20:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaoT9jtDhGhCINCQOFb9vG5XLJxiejs1PG5+Xid4oMs=; b=OO5+FRf/MBW1yw
	gRLZnmKeAdyidZCPefs27QbOfZR8QUqbcvYTpHbwsJzDznsOrLzLSKBPd+7VXvLd8xeonV8EQVGj5
	qCzITYLd+L7qjwCGQGxCL6oXgFHaNqmv0APz5zRRyuV4qQyEOgFk+1m5ekPgeRzM6/pakW40VsZAd
	AOnW27yKrb4xRyp4w73eqt+bvRJu+ItHIhxYCfau1hHDYfKKz5PrqSxk4K8Q6O6HrTV6+V0zbINEp
	MsgSkulr4gqti5PTutN7P47Vp9pYowq+lrHT0HG2eHrXxtNFQA2nTnK8KdcsTfLIG+T3cVCKOwkza
	YyB6QtddQj1wSn8koiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hleEx-0004On-65; Thu, 11 Jul 2019 18:56:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hleEo-0004Nd-Jv
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 18:56:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so14936864iog.0
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 11:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fm6u/rMc6lY4u0RA4OOLtpVBXR3Pe4EYsf7NdnnbLZA=;
 b=DEUtNrJi50O+urKO1+vc9wXWVU/nEx0iXIIyUmlpeXUPM9oEYkUlADuPQPCl14aWUG
 Dv8EN5z3SdH0dPTVX5fLB/BKliAqqIkZWOq+0NXDNgCLzZFeAesGI+YcKik1bbqm/hv2
 o/bJ/yYW1MnV276E5JpNMUNDvc84ztNzjhgY2HE8DTQyZVjou+SS7Uwn0CvChIOLgxzS
 +I9Vmsah6rVus3TGhTppV4ESyjDs35rsS0jbiQ+zol9b0tAUl96rCEDAazGemFMosNRn
 Pk50/CDZBb60njHp/eLCpPPncTTmGDyY7T+M7sn5K48J0ZjFI6xpKZVNd3U2MLrhXOeL
 OsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fm6u/rMc6lY4u0RA4OOLtpVBXR3Pe4EYsf7NdnnbLZA=;
 b=GegLGArOHqbqTOwRIbpsxYnEXr6/FPV3pYSjjaT3i7s9s2kTnsnzVrtVMQT3CSwrVZ
 7ofonHTC7d2GynBpcl9FvhZady7U0I0FNIWBGkpSlp2q1SBV+6yaHnCCYmvDb4acYSBE
 uS4Aftos1Lvk8UfLshi6gCiv5dPfp38xRVlR5qeAj+DlrE5HMfsGB99bwuqJMTVlf2rB
 /eQVKg1X7nSk+YQaO8YP08Z+qkKSid+Z3DpszcczJvB0lIQdGtiCgtsS1G4MsmHUyjHB
 lbh8NFpfHQatwlLKq+EA1VObrQOD9xWtevunNo+GQuSrRtaCYXkmq3Gxek8BeHK6+1r0
 uv0g==
X-Gm-Message-State: APjAAAVumq2MIC8pdnFJj4gnTk3L5XLon5pW5VgGpG3oI/7J8mg6TsRo
 W8jI2oIh8tdOuxoGvkATMQCKwFBTFNU=
X-Google-Smtp-Source: APXvYqyNmfAMAZeZ6Hl+dPXN057xFwvdrDMfMAfB+5bDilh6Lb928apkpo8smlNwrdRuXGQEcgAGNg==
X-Received: by 2002:a5e:d618:: with SMTP id w24mr6092330iom.73.1562871373366; 
 Thu, 11 Jul 2019 11:56:13 -0700 (PDT)
Received: from [192.168.1.158] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id d25sm6542023iom.52.2019.07.11.11.56.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 11:56:11 -0700 (PDT)
Subject: Re: [PATCH] nvme: fix NULL deref for fabrics options
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190711170447.20836-1-minwoo.im.dev@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <cc8ee41f-1463-422d-1b24-32bbe7503afd@kernel.dk>
Date: Thu, 11 Jul 2019 12:56:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711170447.20836-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_115614_660972_AB7DAF03 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/11/19 11:04 AM, Minwoo Im wrote:
> git://git.infradead.org/nvme.git nvme-5.3 branch now causes the
> following NULL deref oops.  Check the ctrl->opts first before the deref.
> 
> [   16.337581] BUG: kernel NULL pointer dereference, address: 0000000000000056
> [   16.338551] #PF: supervisor read access in kernel mode
> [   16.338551] #PF: error_code(0x0000) - not-present page
> [   16.338551] PGD 0 P4D 0
> [   16.338551] Oops: 0000 [#1] SMP PTI
> [   16.338551] CPU: 2 PID: 1035 Comm: kworker/u16:5 Not tainted 5.2.0-rc6+ #1
> [   16.338551] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.11.2-0-gf9626ccb91-prebuilt.qemu-project.org 04/01/2014
> [   16.338551] Workqueue: nvme-wq nvme_scan_work [nvme_core]
> [   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
> [   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
> [   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
> [   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
> [   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
> [   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
> [   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
> [   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
> [   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
> [   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
> [   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   16.338551] Call Trace:
> [   16.338551]  nvme_scan_work+0x2c0/0x340 [nvme_core]
> [   16.338551]  ? __switch_to_asm+0x40/0x70
> [   16.338551]  ? _raw_spin_unlock_irqrestore+0x18/0x30
> [   16.338551]  ? try_to_wake_up+0x408/0x450
> [   16.338551]  process_one_work+0x20b/0x3e0
> [   16.338551]  worker_thread+0x1f9/0x3d0
> [   16.338551]  ? cancel_delayed_work+0xa0/0xa0
> [   16.338551]  kthread+0x117/0x120
> [   16.338551]  ? kthread_stop+0xf0/0xf0
> [   16.338551]  ret_from_fork+0x3a/0x50
> [   16.338551] Modules linked in: nvme nvme_core
> [   16.338551] CR2: 0000000000000056
> [   16.338551] ---[ end trace b9bf761a93e62d84 ]---
> [   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
> [   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
> [   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
> [   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
> [   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
> [   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
> [   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
> [   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
> [   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
> [   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
> [   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

Christoph, just a heads up that I applied this one directly.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
