Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF61D39A12
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 03:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzN4LybESffIPP2pno8AO1T74OH5cMfr38kQNNEnUuo=; b=P8/MKH414CfsAx
	W41kIZtx3Tp3nHpGClyqj4I29zb6en2qHay91P57gBtrpxjsAg5w3ZiopgXHfRn7O941lpBs/YXEX
	TBWGOwxrqNj4W8jmYU3DL5KkTyRVLCa6yvFvNALfBJbMm+QNuKJauMdCBbuDcsphrZp/pcc8dExau
	CIo8E3v0u10s7t/wuiadRrdMsoUM5rP5f2+RxGwMbOrg1B15GeLRMC8Bu2rL/lUQgiBmGbH9yuKi1
	DqDdpMAkX/3kZwrQzvjo3hsBtKV2AO7M7QDhHpXXO+IFWoJLZQJuHa5qRk3QpcHWipl+2oSsAOQBg
	RGWpsNKT0oAHdaFgF0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZQbg-0005Zn-E1; Sat, 08 Jun 2019 01:57:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZQba-0005ZQ-AC
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 01:57:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so1472838plr.3
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 18:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FqdwFpO2QrdMLpqr6sMB5D6GY/QHYPwF9gWyKfiDY1k=;
 b=s7YEbk90wro57xNd92k0chtUDo5umroeZgktrFN1RFRV+f1QKQNk9L3Fn+hGenfswV
 4uqrOYp2aNySXhFl5+A9zJ2CaQVYPb14RZ0Xy2dG5Nlyv8NybABqBdjI+QO04+ZVZv1T
 G+jnDUPIpDMNrwHedzfGyBGmZ261resy1cIwelrcuVkZBl8gMqyZ5nrMfW1ChL7HSYB7
 N3AOg7CE+c63pFhKBqNcYOFnDLaucp0jLSbeIdxdJYtTJNfMAiuUpiQhuFC/NMaH3diz
 tReBXQ37KUmr9p3nq8deQOPc1QwfZkbu0MyhrRqbnA9LrBxv9wQ83fwZJRODVNWnwZFH
 ABnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FqdwFpO2QrdMLpqr6sMB5D6GY/QHYPwF9gWyKfiDY1k=;
 b=nyoiFxwBQ2NkgGCdOnHpaXQnaN4a1Uj7kigCkzTJCTLkYpKPYrtsrZp/4CZrUwvCXm
 mNO7kT5f1OsdsGnhz07rHpu+Q1og6lRL/YtRIQHezPSMzbreVLN8nKWUhDRQyjQb3pZU
 +H3XNhJRYOiimyxQhAwK/hYP0Pv/hnBv9L6+jN+uns01gT6denqSWmG0MshBvzYdZc5B
 3WwotxirZ2x0d2gV9+2pfYif+PKXrHfcUhDi30PCJwX8poJZKiyD9iFf9cwLMUprxZt5
 lu3kxZLc9wtlbM8rTLbrmZDn1URbuQbPMEBdkT1Sx1bhh4P88aE4h3K4pybThRQY5Knp
 bqEQ==
X-Gm-Message-State: APjAAAV9BtV1T3r3cPvjR6KS3L0CNogtNM8DrMgvnY6YOC+MyML6qSkc
 FhLeJGq+HIF4UWn2VjfRnOM=
X-Google-Smtp-Source: APXvYqydnhvsv2ZSbMGD8OWuK9BSt0qyvhQLbFLM88hWSXSUbKG7yrQ9o9lNos3haflOjqA9aXntDw==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr58032163pls.112.1559959033556; 
 Fri, 07 Jun 2019 18:57:13 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id s17sm2584444pfm.74.2019.06.07.18.57.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 18:57:12 -0700 (PDT)
Date: Sat, 8 Jun 2019 10:57:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V7 2/7] nvme: trace: move opcode symbol print to nvme.h
Message-ID: <20190608015710.GG1276@minwooim-desktop>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-3-minwoo.im.dev@gmail.com>
 <20190607164614.GE7307@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607164614.GE7307@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_185714_383145_72C87EE1 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-07 18:46:14, Christoph Hellwig wrote:
> On Fri, Jun 07, 2019 at 04:45:07AM +0900, Minwoo Im wrote:
> > The following patches are going to provide the target-side trace which
> > might need these kind of macros.  It would be great if it can be shared
> > between host and target side both.
> 
> And maybe for some nvme-cli tracing in the future..

If you mean some of IOCTLs rather than for the commands, than I
would be happy to go with them after this series.

> Looks good,
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks for your review, by the way.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
