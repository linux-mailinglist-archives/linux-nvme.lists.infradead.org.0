Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDDFE82A
	for <lists+linux-nvme@lfdr.de>; Fri, 15 Nov 2019 23:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JJFGkDHHzYq7/gPqvT6wxFkJ9wh+Q16me4ULwbr6BVw=; b=ds/qmzRmsdoCaN+iWwh0RYOqH
	62rkV3v8MNRCOZynb43o5/QRfKV8RBeqnFob65OGGDqjlWSeHDSI+YXQ3AIQeNrNO+acnCQZXd98Z
	ev/kVTH08Ecg78DiQDB54YB97Mx9cdPtUkDnpm1R3tNK3Xv877ITyE3KHgv6caIsZVg0N7DZ4bE/T
	TWy3l1eVBZofVGtI4u4SLuy7TpZB7wXvV0n81nA1CW6rVc179JncErmmTBoPX2v9qfuQNiQ9y9kz1
	ZM8MJBgUklHqNHrbE5Wxr10SO/rUNLVv6UCZja7FB99Sk5vgh4fAEqt7o1B3z4ZSBN23WGfpIlYC0
	wt39xc6Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkGJ-00061w-MI; Fri, 15 Nov 2019 22:40:19 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkEs-0003tk-7k
 for linux-nvme@lists.infradead.org; Fri, 15 Nov 2019 22:38:55 +0000
Received: by mail-oi1-f193.google.com with SMTP id n16so10059477oig.2
 for <linux-nvme@lists.infradead.org>; Fri, 15 Nov 2019 14:38:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=meoFeeKaHX1SrgHnE6E4SBXPBPB85SWkIWyxJ9m2MxU=;
 b=aQWpaXy7fASm4LvkPaAYHiT0/ketyhKRG0JqBE7Z+/y57yAXnVUO8v7mtMhV+HgyOw
 EowtJUwJxoUaVxaRjfBJIByvKClO6H/9lCsQDz6qn3U+jeaLw0EBupAiSpbv/N1sbjVj
 //hzah+AbSjpBo9rYCs/XXq1S+hlsP0eBQB+Xzv91T372dE2w/xlT7LaV8H8LyhEV9C5
 J5TtFo1SHKp4yS9/zk9V0EuKHLnO7xhlwnWKtwopIrU5yPOjobSwix07Zf7jvMjFqGPB
 OQMt8svvD+rLpB6dWFNF2BU4SZ8apS5/TKVDNTvcnPNTZa6DSx6BRsUtcp3I5QWDUP+3
 UkYA==
X-Gm-Message-State: APjAAAV7LRGoqnjI5Demo/MVnZj3myX3mtJ1F9ff6KsUhERZqYC2Etvf
 RUyJbEaIcHHIdQbDHYS9zpQ=
X-Google-Smtp-Source: APXvYqw1g0snubNFd4+t8h6TUmV6wyiB5LP7B54oR4DrsUR8eHnKIqcSiwYTTwvjQgVFOc5G216YJQ==
X-Received: by 2002:aca:3889:: with SMTP id f131mr9936834oia.14.1573857529048; 
 Fri, 15 Nov 2019 14:38:49 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id m14sm3341578otl.26.2019.11.15.14.38.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Nov 2019 14:38:48 -0800 (PST)
Subject: Re: [PATCH RFC 0/3] blk-mq/nvme: use blk_mq_alloc_request() for
 NVMe's connect request
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20191115104238.15107-1-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
Date: Fri, 15 Nov 2019 14:38:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115104238.15107-1-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143850_337770_DEC76CAE 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi,

Hey Ming,

> Use blk_mq_alloc_request() for allocating NVMe loop, fc, rdma and tcp's
> connect request, and selecting transport queue runtime for connect
> request.
> 
> Then kill blk_mq_alloc_request_hctx().

Is it really so wrong to have an API to allocate a tag that belongs to
a specific queue? Why must the tags allocation always correlate to the
running cpu? Its true that NVMe is the only consumer of this at the
moment, but does this mean that the interface should be removed because
it has one (or rather four) consumer(s)?

I would instead suggest to simply remove the constraint that
blk_mq_alloc_request_hctx() will fail if the first cpu in the mask
is not on the cpu_online_mask.. The caller of this would know and
be able to handle it.

To me it feels like this approach is fundamentally wrong. IMO, having
the driver select a different queue than the tag naturally belongs to
feels like a backwards design.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
