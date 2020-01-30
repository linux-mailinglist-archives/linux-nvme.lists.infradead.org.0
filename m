Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3E14DE2C
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 16:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFw93yCkZnfOwOWuVxHQi6AfzUVp3j1jCZXt5YrCkzE=; b=jfhOG0x2d8Sy4O
	s4vUfyajrl927GoC2kwZHOXTX2uty2YHA8aYDg387tZPrjFU4qCyL7SmSc7U2RUtynrvehO9SyxM2
	Hc9kJTqltyNy3mng4+E2E8St9Sx/3j1FB6I+cGSc6FyW0IKW1UDqMElnjarafORCF2iOVuzTI3+GI
	X8L0fzPqDIxMtjmFM9czMeUmVoA1KaMeAlcnn0jsWh3PkvOGBvFfUOArIYBqJLu3eWF7cGJ5WDIje
	1Lelbauj2z9tYfT2Jf0jJtYsBui+nwMBDDE477pQAZSsgvQiNSdYsW0G3JqZiBzYMXs90rF7lFRJU
	Pjbu+lqZuDKg7lb0uoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixC3I-0000hU-KK; Thu, 30 Jan 2020 15:48:20 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ixC3D-0000h0-JI; Thu, 30 Jan 2020 15:48:15 +0000
Date: Thu, 30 Jan 2020 07:48:15 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] nvme: fix uninitialized-variable warning
Message-ID: <20200130154815.GA2463@infradead.org>
References: <20200107214215.935781-1-arnd@arndb.de>
 <20200130150451.GA25427@infradead.org>
 <CAK8P3a0EgfQkrSr77jE12Wm_NKemEZ1rFZLMcVhkAuu1cwOOWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0EgfQkrSr77jE12Wm_NKemEZ1rFZLMcVhkAuu1cwOOWQ@mail.gmail.com>
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Marta Rybczynska <mrybczyn@kalray.eu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 04:36:48PM +0100, Arnd Bergmann wrote:
> > This one is just gross.  I think we'll need to find some other fix
> > that doesn't obsfucate the code as much.
> 
> Initializing the nvme_result in nvme_features() would do it, as would
> setting it in the error path in __nvme_submit_sync_cmd() -- either
> way the compiler cannot be confused about whether it is initialized
> later on.

Given that this is outside the hot path we can just zero the whole
structure before submitting the I/O.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
