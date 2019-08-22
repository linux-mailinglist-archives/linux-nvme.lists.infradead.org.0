Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AD499E6B
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 20:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+5hJvD2T6FwjYqX7nQZz6PfkdiSK/J/gFAUy9rwHwdU=; b=lJ3UHV5wAUQswngJhk1OY/I/E
	HflnlzluSjs2BcNbiKvMRot/5ZrJnVo2a1cxvGBz+lauGLRyiKa0mZY9uPvz2gNHovO5F9EYDo+hZ
	vOePMKZRWKP+ufDcKFvjZzteQw5CP0rF58rvSWFQz/hffAvM3D1hkTJ1sz53dBx2K6m1/DpTBgn15
	iOps8tCNRlEygOgLa1q2p93LO9sIY5Thplrp3qC7i7lIbsdc4Iva9O2qwJ4/3B7GZgg0hkCsdUekl
	t8ib6BkRa6zMIhvMbxmTcPEDqDELH1vCYU3Jr922ne0hV3qizaOaSw7/rtK/94sTeEJw3a34emx3e
	TbFn+23Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rSF-0007Rh-O2; Thu, 22 Aug 2019 18:04:59 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rS7-0007RN-JI
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 18:04:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id m24so6272816otp.12
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 11:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zr+zr/GjfF1XFygRXVUkj0TmumaKDzaL59SNYuSGFQg=;
 b=mKDcirw5q4jh/R9rcP+08+BSkPYRJGU2uohJoGMM4tBLDpzamJdV4AKaeq7hSNkDMU
 K5tR9zhOdnwKY5mjtI7Dmqm5C5UBTq3meKc5Su/vanmDQAkQDAFfexxtRhjWLHNuuons
 5yCzxPjNOTCbRiP2ebzPhbmm68/GkEXsJIieayZz9Z/HZmGrENKiIncMriGCFD/cY/oy
 PAdh87lR8tV37H0mqAATdG2fp8bDOIod8NBPW3j0JbCr5GB4kO9T5rza9wX86dbkPIx2
 qqFvfMuUAXyD0OAS+zWBGA36fMuJa6+TjeuYsRlAP40k185tLhLluSDwBImO8YBWL7EC
 mnCQ==
X-Gm-Message-State: APjAAAWIEYsQ2oip6xq2T2D0dIWzbGdRob9cNyM+dh8T9vyE9zmV3ECC
 gRGHPYaFugug2sJhSh9a8NOkWI66
X-Google-Smtp-Source: APXvYqyi6JXb6ir6pAci38T0KLfAo3nMEp1uO45VNQknLfdVMGuxdJ6THiExz4rLj6XWIj8LeXIfFQ==
X-Received: by 2002:a9d:7dc2:: with SMTP id k2mr717955otn.122.1566497089956;
 Thu, 22 Aug 2019 11:04:49 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s5sm103309otk.11.2019.08.22.11.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 11:04:49 -0700 (PDT)
Subject: Re: [PATCH 0/4] nvme: add support for Get LBA Status tracing
To: Christoph Hellwig <hch@lst.de>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
 <edbf18f8-fe9a-f9ec-2fa1-75e22466b6ff@grimberg.me>
 <20190822003214.GE10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e5e014f9-1f00-932c-b57f-3c4b57272d00@grimberg.me>
Date: Thu, 22 Aug 2019 11:04:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822003214.GE10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_110451_636568_1AD421C7 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Hi All,
>>>
>>> This series introduces command tracing in both host and target side for
>>> the Get LBA Statas admin command which has been added from NVMe 1.4.
>>>
>>> Please review.
>>
>> Series looks fine to me,
> 
> The patches look good to me, but I wonder how we decide if we want to
> add the full blown tracing command for various commands never used by
> the kernel itself.  If we do that for every command the tracing code
> could blow up fast.

I think it will grow based on the usage, if someone adds a trace it
means that it can use it, which is exactly what tracing is for right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
