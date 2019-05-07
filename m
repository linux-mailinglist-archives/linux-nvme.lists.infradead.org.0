Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832FD16986
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GzceZ732lEG/9FYtdPW3a8K7ryTkGw66abQNDFEtHt4=; b=F14bk6fis4DIKoIjLudE/1d5g
	p0cxkFUYOTUXVOshjYBnLYhZEIVA3rNK1E0cKUoJ5EVFKiRwDpskMNHs4BvroBkZhcI8D2AEAUHPl
	f+dOWaGmq65azwz0Q1w8M7Qzm2keHWZL9Bbpslo4qQ8YlVG+cJPBHZWja8y91sRaVsiRTtxb0FmnJ
	k/f/LHfTjHPP81UYPzbNOuGsjHxw2960y1lJuFBt/1nagmcQ9rXuas4wYgZFzXrWI4vW1kptvlNhV
	9KmKZ8iNvOvTYP133rvBuJLuPWeeucyOkSA2uo+Kvtgmy3LMeeOWr8XtFMph9kKx3Luavbhvjg4+0
	g+ozenlow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO49P-0003z0-66; Tue, 07 May 2019 17:45:11 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO49E-0003x0-5l
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:45:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 10:44:59 -0700
Received: from unknown (HELO [10.232.112.171]) ([10.232.112.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 10:44:58 -0700
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <eb4f578c-2126-c4e8-97a9-2f65e4784359@intel.com>
Date: Tue, 7 May 2019 11:44:58 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_104500_221961_15DCA6A8 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/7/2019 10:58 AM, Akinobu Mita wrote:
> This enables to capture snapshot of controller information via device
> coredump machanism.

s/machanism/mechanism/

> 
> The nvme device coredump creates the following coredump files.
> 
> - regs: NVMe controller registers (00h to 4Fh)
> - sq<qid>: Submission queue
> - cq<qid>: Completion queue
> - telemetry-ctrl-log: Telemetry controller-initiated log (if available)
> - data: Empty
> 
> The reason for an empty 'data' file is to provide a uniform way to notify
> the device coredump is no longer needed by writing the 'data' file.
> 
> Since all existing drivers using the device coredump provide a 'data' file
> if the nvme device coredump doesn't provide it, the userspace programs need
> to know which driver provides what coredump file.
> 
> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
