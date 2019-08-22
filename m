Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2BE9892F
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 04:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/rGwlsFDXbypxafpn/UVrGq7svkKL6bhYy11iiDgvE=; b=aC/vQfZ+Xco5uw
	EaR4Yd/Ei004RMe8A9zzpZ/JWvawirn7JP576TLijp22UwWYNTFN/I/K1HJKxOTUOkB8cPoC8FVPW
	ormHgykrX+4qoItiRZu3DXamoTbkTlrULee8P895Lz8GVsVYAzhDj9qhzq8wvrvdIr6T6BiQTlnk1
	quMdN+OP1gJvjCEmwpgRl6PYiubv+RMC5DKmlP1SNr6OUVt4GFXqRqoQduwaBnQt+OHzuZNIRsUKw
	eCxn8Kyk419/rquzlCUz2xmR1XXvURWuF5grds3cNoxW+yKQaR8IdUf//HdBo4q/8bk5apC1sMuuR
	7mrFd0GBe0bxcuxUP5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cPC-0006EB-R2; Thu, 22 Aug 2019 02:00:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cP7-0006DU-Rf
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 02:00:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id 10so3989677wmp.3
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 19:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Neq8F2IE+loetfqWGr83u3Nb5gDziGO0YW8bGklpRSk=;
 b=Q2IxfN0VJN1WKzqCJO8A+tVfpipjHvq7TiINzkF6NaD4G9YZHjQPL0L0h8Rab6pCRW
 WZdZBZmFXj7fldbE6UBZtcztEj5oTFHQRcr8FHGsULKGryFWVdWBbne0XITHZI970kc5
 gZeEUgyMpHMja7zWk0Nq/RQSolXM+kDzO0YTJ82tQxH9jIolrh5dQdhZxpojhOtuLLi3
 0l3Js9/98LOtiVRLyp2Fg/Ji4d+RLjOmy7FKT219bPNUDAPkmXbl8KMmZyLv0VyUFqDP
 ggssq5sPkIevsf5gQywEu/+rSJlOIsiXSvzzCUewTY6bA8+UBh/ZZZZqnY9S1GXkIs01
 vWsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Neq8F2IE+loetfqWGr83u3Nb5gDziGO0YW8bGklpRSk=;
 b=tg17h4Vp4xiYHuhLcEjCbezGlTiwFnRDcvyI+nGBJfWXQVa5Ecpt2IIHWq0tRuwt/q
 4FPFEvGVO/ysO7+R2nSa93ppjmFKY+nRireYtDLfpyL+K0XwxWOE0f/n+SvNyImAzdwi
 Fp49WuRKQcMLKFd3Mf7/hUo5W6BxW/V9dClCaTfNETeeGVnycaPY74BoH7n+0y+vJ1AT
 4sS728BOuExh7bs2yZDhAOuBDPJedXndNm6vygRVsALmC/PkkxviqCyQMEXdGT9KFbzi
 +W6Ntt268/f8Ks0dYXoXbtKdVf2Lwiy9ndQhTV57dRsU1kuni1M2ZeaaYKqWTqg4sdQ9
 2tHQ==
X-Gm-Message-State: APjAAAXIGPoAclkymF7oGGgoqjFg64Zm5QMuylvV+7/FOpd6olcYNuMe
 9524siUpfi1BnyLRbvikgceTe3bsIiKhulOMWC4=
X-Google-Smtp-Source: APXvYqy2TY4yKAOPZzmAyczoa1p/ljS85yIuswYubQkIMpHB2+IdLq5lLqeffJ3j0gpokORD0HIUQZ9hCfgez8U4nDk=
X-Received: by 2002:a1c:c584:: with SMTP id v126mr3073188wmf.27.1566439244116; 
 Wed, 21 Aug 2019 19:00:44 -0700 (PDT)
MIME-Version: 1.0
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
 <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
 <CY4PR21MB0741D1CD295AD572548E61D1CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190821094406.GA28391@ming.t460p>
 <CY4PR21MB07410E84C8C7C1D64BD7BF41CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190822013356.GC28635@ming.t460p>
In-Reply-To: <20190822013356.GC28635@ming.t460p>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 21 Aug 2019 20:00:33 -0600
Message-ID: <CAOSXXT7LVjBqVW14y-pZyUCat3PBPd_nVd_uDahBdhyW+eHmcg@mail.gmail.com>
Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
To: Ming Lei <ming.lei@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_190045_897702_ED4BA8B7 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Ming Lei <tom.leiming@gmail.com>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 7:34 PM Ming Lei <ming.lei@redhat.com> wrote:
> On Wed, Aug 21, 2019 at 04:27:00PM +0000, Long Li wrote:
> > Here is the command to benchmark it:
> >
> > fio --bs=4k --ioengine=libaio --iodepth=128 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=120 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1
> >
>
> I can reproduce the issue on one machine(96 cores) with 4 NVMes(32 queues), so
> each queue is served on 3 CPUs.
>
> IOPS drops > 20% when 'use_threaded_interrupts' is enabled. From fio log, CPU
> context switch is increased a lot.

Interestingly use_threaded_interrupts shows a marginal improvement on
my machine with the same fio profile. It was only 5 NVMes, but they've
one queue per-cpu on 112 cores.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
